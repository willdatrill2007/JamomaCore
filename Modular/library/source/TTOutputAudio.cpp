/** @file
 *
 * @ingroup modularLibrary
 *
 * @brief An audio output component for Jamoma models.
 *
 * @details
 *
 * @authors Timothy Place
 *
 * @copyright © 2013, Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTOutputAudio.h"

#define thisTTClass			TTOutputAudio
#define thisTTClassName		"Output.audio"
#define thisTTClassTags		"output"

TTObjectBasePtr TTOutputAudio::instantiate (TTSymbol name, TTValue arguments)
{
	return new TTOutputAudio(arguments);
}


extern "C" void TTOutputAudio::registerClass()
{
	TTClassRegister(TTSymbol("Output.audio"), thisTTClassTags, TTOutputAudio::instantiate);
}


TTOutputAudio::TTOutputAudio(const TTValue& arguments) :
TTOutput(arguments)
{
	TTValue args;
	
	mTags = TTSymbol("audio");

	// the only argument is the owner, which is used as a baton to hand to the callback
	if (arguments.size() > 0)
		mReturnSignalCallback = arguments[0];
	
	mSignalIn = TTObject(kTTSym_audiosignal, 1);
	mSignalOut = TTObject(kTTSym_audiosignal, 1);
	mSignalTemp = TTObject(kTTSym_audiosignal, 1);
	mSignalZero = TTObject(kTTSym_audiosignal, 1);
    
    // note : crossfade instantiation can failed if JamomaDSP is not loaded.
    // maybe this means we should move TTOutputAudio into JamomaDSP ?
    if (!ttEnvironment->isClassRegistered("crossfade")) {
        mMixUnit = TTObject("crossfade", 1);
        mMixUnit.set("position", 1.0);
    }
	
    // note : gain instantiation can failed if JamomaDSP is not loaded.
    // maybe this means we should move TTOutputAudio into JamomaDSP ?
    if (!ttEnvironment->isClassRegistered("gain")) {
        mGainUnit = TTObject("gain", 1);
        mGainUnit.set("linearGain", 1.0);
    }
    
    // note : ramp instantiation can failed if JamomaDSP is not loaded.
    // maybe this means we should move TTOutputAudio into JamomaDSP ?
    if (!ttEnvironment->isClassRegistered("ramp")) {
        mRampMixUnit = TTObject(TTSymbol("ramp"), 1);
        mRampGainUnit = TTObject(TTSymbol("ramp"), 1);
    }
}


TTOutputAudio::~TTOutputAudio()
{
    ;
}


void TTOutputAudio::process(TTSampleValue* anInputSampleVector, TTSampleValue* anOutputSampleVector, TTUInt16 aVectorSize)
{
	// store the audio vector as a proper audio signal
	TTAudioSignalPtr(mSignalIn.instance())->setVector64Copy(0, aVectorSize, anInputSampleVector);
	
	// if the output signal is muted
	if (mMute)
		TTAudioSignal::copy(*TTAudioSignalPtr(mSignalZero.instance()), *TTAudioSignalPtr(mSignalOut.instance()));
	
	// if input signal exists
	else if (mInputObject.instance())
    {
		// if input signal is bypassed : copy input (in Temp)
		if (TTInputPtr(mInputObject.instance())->mBypass)
			TTAudioSignal::copy(*TTAudioSignalPtr(TTInputPtr(mInputObject.instance())->mSignalIn.instance()), *TTAudioSignalPtr(mSignalTemp.instance()));
		
		// otherwise mix input and output signals (in Temp)
		else
			TTAudioObjectBasePtr(mMixUnit.instance())->process(TTAudioSignalPtr(TTInputPtr(mInputObject.instance())->mSignalOut.instance()), TTAudioSignalPtr(mSignalIn.instance()), TTAudioSignalPtr(mSignalTemp.instance()));
		
		// then perform gain control (from Temp)
		TTAudioObjectBasePtr(mGainUnit.instance())->process(TTAudioSignalPtr(mSignalTemp.instance()), TTAudioSignalPtr(mSignalOut.instance()));
	}
	// otherwise just perform gain control
	else
		TTAudioObjectBasePtr(mGainUnit.instance())->process(TTAudioSignalPtr(mSignalIn.instance()), TTAudioSignalPtr(mSignalOut.instance()));
	
	// send the input on to the outlets for the algorithm
	TTAudioSignalPtr(mSignalOut.instance())->getVectorCopy(0, aVectorSize, anOutputSampleVector);
}

void TTOutputAudio::setupAudioSignals(TTUInt16 aVectorSize, TTFloat64 aSampleRate)
{
    mRampGainUnit.set(kTTSym_sampleRate, aSampleRate);	// convert midi to db for tap_gain
    mGainUnit.set("interpolated", 1);
    mRampMixUnit.set(kTTSym_sampleRate, aSampleRate);	// convert midi to db for tap_gain
    
    mSignalIn.set(kTTSym_numChannels, 1);
    mSignalOut.set(kTTSym_numChannels, 1);
    mSignalTemp.set(kTTSym_numChannels, 1);
    mSignalZero.set(kTTSym_numChannels, 1);
    
    mSignalIn.set(kTTSym_vectorSize, aVectorSize);
    mSignalOut.set(kTTSym_vectorSize, aVectorSize);
    mSignalTemp.set(kTTSym_vectorSize, aVectorSize);
    mSignalZero.set(kTTSym_vectorSize, aVectorSize);
    
    mSignalOut.send(kTTSym_alloc);
    mSignalOut.send(kTTSym_clear);
    
    mSignalTemp.send(kTTSym_alloc);
    
    mSignalZero.send(kTTSym_alloc);
    mSignalZero.send(kTTSym_clear);
    
    // debug
    std::cout << ">>>> setup signal out (" << TTAudioSignalPtr(mSignalOut.instance()) << ") : ";
    for (TTUInt16 i = 0; i < aVectorSize; i++)
        std::cout << TTAudioSignalPtr(mSignalOut.instance())->mSampleVectors[0][i] << " ";
    std::cout << std::endl;
}
