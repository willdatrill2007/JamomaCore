/* 
 * TTBlue 2nd order Butterworth Highpass Filter Object
 * Copyright © 2008, Trond Lossius
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTHighpassButterworth2.h"


TTHighpassButterworth2::TTHighpassButterworth2(TTUInt8 newMaxNumChannels)
	: TTAudioObject::TTAudioObject(newMaxNumChannels),
	xm1(NULL), xm2(NULL), ym1(NULL), ym2(NULL)
{
	// register attributes
	registerAttribute(TT("frequency"),	kTypeFloat64, &attrFrequency, (TTSetterMethod)&TTHighpassButterworth2::setFrequency);

	// register for notifications from the parent class so we can allocate memory as required
	registerMessage(TT("updateMaxNumChannels"), (TTMethod)&TTHighpassButterworth2::updateMaxNumChannels);
	// register for notifications from the parent class so we can recalculate coefficients as required
	registerMessage(TT("updateSr"),	(TTMethod)&TTHighpassButterworth2::updateSr);
	// make the clear method available to the outside world
	registerMessage(TT("clear"), (TTMethod)&TTHighpassButterworth2::clear);

	// Set Defaults...
	setAttributeValue(TT("maxNumChannels"),	newMaxNumChannels);			// This attribute is inherited
	setAttributeValue(TT("frequency"),		1000.0);
	setProcess((TTProcessMethod)&TTHighpassButterworth2::processAudio);
}


TTHighpassButterworth2::~TTHighpassButterworth2()
{
	free(xm1);
	free(xm2);
	free(ym1);
	free(ym2);
}


TTErr TTHighpassButterworth2::updateMaxNumChannels()
{
	if(xm1)
		free(xm1);
	if(xm2)
		free(xm2);
	if(ym1)
		free(ym1);
	if(ym2)
		free(ym2);
	
	xm1 = (TTFloat64*)malloc(sizeof(TTFloat64) * maxNumChannels);
	xm2 = (TTFloat64*)malloc(sizeof(TTFloat64) * maxNumChannels);
	ym1 = (TTFloat64*)malloc(sizeof(TTFloat64) * maxNumChannels);
	ym2 = (TTFloat64*)malloc(sizeof(TTFloat64) * maxNumChannels);
	
	clear();
	return kTTErrNone;
}


TTErr TTHighpassButterworth2::updateSr()
{
	TTValue	v(attrFrequency);
	return setFrequency(v);
}


TTErr TTHighpassButterworth2::clear()
{
	short i;

	for(i=0; i<maxNumChannels; i++){
		xm1[i] = 0.0;
		xm2[i] = 0.0;
		ym1[i] = 0.0;
		ym2[i] = 0.0;
	}
	return kTTErrNone;
}


TTErr TTHighpassButterworth2::setFrequency(const TTValue& newValue)
{	
	attrFrequency = clip((double)newValue, 10., (sr*0.45));

	c = tan( kTTPi*(attrFrequency/sr ) );
	a0 = 1 / (1 + kTTSqrt2*c + c*c);
	a1 = -2*a0;
	a2 = a0;
	b1 = 2*a0*( c*c - 1 );
	b2 = a0 * (1 - kTTSqrt2*c + c*c);
	return kTTErrNone;
}


TTErr TTHighpassButterworth2::processAudio(TTAudioSignal& in, TTAudioSignal& out)
{
	short			vs;
	TTSampleValue	*inSample,
					*outSample;
	TTFloat64		tempx,
					tempy;
	short			numchannels = TTAudioSignal::getMinChannelCount(in, out);
	short			channel;

	// This outside loop works through each channel one at a time
	for(channel=0; channel<numchannels; channel++){
		inSample = in.sampleVectors[channel];
		outSample = out.sampleVectors[channel];
		vs = in.vs;
		
		// This inner loop works through each sample within the channel one at a time
		while(vs--){
			tempx = *inSample++;
			tempy = antiDenormal(a0*tempx + a1*xm1[channel] + a2*xm2[channel] - b1*ym1[channel] - b2*ym2[channel]);
			xm2[channel] = xm1[channel];
			xm1[channel] = tempx;
			ym2[channel] = ym1[channel];
			ym1[channel] = tempy;
			*outSample++ = tempy;
		}
	}
	return kTTErrNone;
}