/* 
 * TTBlue Limiter Object
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTLimiter.h"


TTLimiter::TTLimiter(TTUInt8 newMaxNumChannels)
	: TTAudioObject::TTAudioObject(newMaxNumChannels)
{
	// register our parameters
	registerParameter(TT("bypass"),		kTypeInt32,		&attrBypass,	(TTGetterMethod)NULL, (TTSetterMethod)&TTDegrade::setBypass);
	registerParameter(TT("bitdepth"),	kTypeInt32,		&attrBitdepth,	(TTGetterMethod)NULL, (TTSetterMethod)&TTDegrade::setBitdepth);
	registerParameter(TT("srRatio"),	kTypeFloat32,	&attrSrRatio);

	// register for notifications from the parent class so we can allocate memory as required
	registerMessage(TT("updateMaxNumChannels"), (TTMethod)&TTDCBlock::updateMaxNumChannels);

	setParameterValue(TT("maxNumChannels"),	newMaxNumChannels);
	setParameterValue(TT("bypass"),			kTTBoolNo);
	setParameterValue(TT("bitdepth"),		24);
	setParameterValue(TT("srRatio"),		1.0);
	setProcess((TTProcessMethod)&TTLimiter::processAudio);

}


TTLimiter::~TTLimiter()
{
	free(output);
}


TTErr TTLimiter::updateMaxNumChannels()
{
	short i;
	
	output = (TTSampleValue*)malloc(sizeof(TTSampleValue) * maxNumChannels);
	for(i=0; i<maxNumChannels; i++)
		output[i] = 0.0;				// clear the values
	return kTTErrNone;
}


TTErr TTLimiter::setBitdepth(TTValue& newValue)
{
	attrBitdepth = clip((int)newValue, 1, 24);
	bitShift = 24 - attrBitdepth;
	return kTTErrNone;
}


// DSP LOOP
TTErr TTLimiter::processAudio(TTAudioSignal& in, TTAudioSignal& out)
{
	short			vs;
	TTSampleValue	*inSample,
					*outSample;
	short			numchannels = TTAudioSignal::getMinChannelCount(in, out);
	short			channel;

	for(channel=0; channel<numchannels; channel++){
		inSample = in.sampleVectors[channel];
		outSample = out.sampleVectors[channel];
		vs = in.vs;
		
		while(vs--){
			// SampeRate Reduction
			accumulator += attrSrRatio;
			if(accumulator >= 1.0){
				output[channel] = *inSample++;
				accumulator -= 1.0;
			}
		
			// BitDepth Reduction
			l = (long)(output[channel] * BIG_INT);			// change float to long int
			l >>= bitShift;									// shift away the least-significant bits
			l <<= bitShift;									// shift back to the correct registers
			*outSample++ = (float) l * ONE_OVER_BIG_INT;	// back to float
		}
	}
	return kTTErrNone;
}

