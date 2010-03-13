/*
 * TTBlue 3rd order Butterworth Lowpass Filter Object
 * Copyright © 2008, Trond Lossius
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTLowpassButterworth3.h"

#define thisTTClass			TTLowpassButterworth3
#define thisTTClassName		"lowpass.butterworth.3"
#define thisTTClassTags		"audio, processor, filter, lowpass, butterworth"


TT_AUDIO_CONSTRUCTOR
{
	// register attributes
	addAttributeWithSetter(Frequency,	kTypeFloat64);
	addAttributeProperty(Frequency,			range,			TTValue(10.0, sr*0.475));
	addAttributeProperty(Frequency,			rangeChecking,	TT("clip"));

	// register for notifications from the parent class so we can allocate memory as required
	registerMessageWithArgument(updateMaxNumChannels);
	// register for notifications from the parent class so we can recalculate coefficients as required
	addMessage(updateSr);
	// make the clear method available to the outside world
	addMessage(Clear);

	// Set Defaults...
	setAttributeValue(TT("maxNumChannels"),	arguments);			// This attribute is inherited
	setAttributeValue(TT("Frequency"),		1000.0);
	setProcessMethod(processAudio);
	setCalculateMethod(calculateValue);
}


TTLowpassButterworth3::~TTLowpassButterworth3()
{
	;
}


TTErr TTLowpassButterworth3::updateMaxNumChannels(const TTValue& oldMaxNumChannels)
{
	mX1.resize(maxNumChannels);
	mX2.resize(maxNumChannels);
	mX3.resize(maxNumChannels);
	mY1.resize(maxNumChannels);
	mY2.resize(maxNumChannels);
	mY3.resize(maxNumChannels);	
	Clear();
	return kTTErrNone;
}


TTErr TTLowpassButterworth3::updateSr()
{
	TTValue	v(mFrequency);
	return setFrequency(v);
}


TTErr TTLowpassButterworth3::Clear()
{
	mX1.assign(maxNumChannels, 0.0);
	mX2.assign(maxNumChannels, 0.0);
	mX3.assign(maxNumChannels, 0.0);
	mY1.assign(maxNumChannels, 0.0);
	mY2.assign(maxNumChannels, 0.0);
	mY3.assign(maxNumChannels, 0.0);
	return kTTErrNone;
}


TTErr TTLowpassButterworth3::setFrequency(const TTValue& newValue)
{
	mFrequency = newValue;
	
	mRadians = kTTTwoPi*mFrequency;
	mRadiansSquared = mRadians * mRadians;
	mRadiansCubic = mRadiansSquared * mRadians;
	
	mK =  mRadians/tan(kTTPi*mFrequency/sr); // kTTTwoPi*frequency/tan(kTTPi*frequency/sr);
	mKSquared = mK * mK;
    mKCubic = mKSquared * mK;
	calculateCoefficients();	
	return kTTErrNone;
}

void TTLowpassButterworth3::calculateCoefficients() //TODO: with a little bit of thinking, this can be optimized
{   
	TTFloat64 temp1;
	temp1 = (mRadiansCubic + mKCubic + 2*mRadiansSquared*mK + 2*mRadians*mKSquared);
	
	mA0 = (mRadiansCubic)   / temp1; 
	mA1 = (3*mRadiansCubic) / temp1; 
	//mA2 = mA1; //mA2 = (3*mRadiansCubic) / temp1; 
	//mA3 = mA0; //mA3 = (mRadiansCubic)   / temp1; 

	mB1 = (3*mRadiansCubic - 3*mKCubic + 2*mRadiansSquared*mK - 2*mRadians*mKSquared) / temp1; 
	mB2 = (3*mRadiansCubic + 3*mKCubic - 2*mRadiansSquared*mK - 2*mRadians*mKSquared) / temp1; 
	mB3 = (mRadiansCubic   -   mKCubic - 2*mRadiansSquared*mK + 2*mRadians*mKSquared) / temp1;

}


inline TTErr TTLowpassButterworth3::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel)
{
	//y = TTAntiDenormal(mA0*x + mA1*mX1[channel] + mA2*mX2[channel] + mA3*mX3[channel] - mB1*mY1[channel] - mB2*mY2[channel] -mB3*mY3[channel]);
	// since mA2 = mA1 and mA3 = mA0, we can write
	y = TTAntiDenormal(mA0*(x +mX3[channel]) + mA1*(mX1[channel] + mX2[channel]) - mB1*mY1[channel] - mB2*mY2[channel] -mB3*mY3[channel]);
	mX3[channel] = mX2[channel];
	mX2[channel] = mX1[channel];
	mX1[channel] = x;
	mY3[channel] = mY2[channel];
	mY2[channel] = mY1[channel];
	mY1[channel] = y;
	return kTTErrNone;
}


TTErr TTLowpassButterworth3::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}
