/** @file
 *
 * @ingroup dspLibrary
 *
 * @brief #TTAudioObjectBase is the Jamoma DSP Audio Object Base Class
 *
 * @details
 *
 * @authors Tim Place, Nils Peters, Trond Lossius
 *
 * @copyright Copyright © 2008 by Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __TT_AUDIO_OBJECT_H__
#define __TT_AUDIO_OBJECT_H__

#include "TTObject.h"
#include "TTAudioObjectBase.h"


/** Wrap TTAudioSignal instances for convenience. */
class TTAudio : public TTObject {
public:
	TTAudio(int aChannelCount):
	TTObject(kTTSym_audiosignal, aChannelCount)
	{}
	
	TTAudioSignalPtr instance()
	{
		return (TTAudioSignalPtr)mObjectInstance;
	}
	
	int getVectorSizeAsInt()
	{
		return instance()->getVectorSizeAsInt();
	}
	
	void setVectorSizeWithInt(int aVectorSize)
	{
		instance()->setVectorSizeWithInt(aVectorSize);
	}
	
	void alloc()
	{
		instance()->alloc();
	}
	
	TTErr allocWithVectorSize(const TTUInt16 aNewVectorSize)
	{
		return instance()->allocWithVectorSize(aNewVectorSize);
	}
	
	void setNumChannels(int aChannelCount)
	{
		instance()->setNumChannels(aChannelCount);
	}
	
	
	TTErr setVector(const TTUInt16 channel, const TTUInt16 vectorSize, const TTSampleValuePtr newVector)
	{
		return instance()->setVector(channel, vectorSize, newVector);
	}
	
	
	TTErr getVectorCopy(const TTUInt16 channel, const TTUInt16 theVectorSize, TTSampleValue* returnedVector)
	{
		return instance()->getVectorCopy(channel, theVectorSize, returnedVector);
	}
	
	
	TTSampleValue** rawSamples()
	{
		return instance()->mSampleVectors;
	}
	
	void clear()
	{
		instance()->clear();
	}
	
};


inline TTErr TTAudioObjectBase::process(TTAudio& inputs, TTAudio& outputs)
{
	return process(inputs.instance(), outputs.instance());
}


/** Wrap audio objects for convenience. */
class TTAudioObject : public TTObject {
	
public:
	TTAudioObject(const TTSymbol aClassName, const TTValue arguments = kTTValNONE):
	TTObject(aClassName, arguments)
	{}
	
	// copy constructor is fully implemented in the super-class
	
	/** like a copy constructor -- but from TTObject to TTAudioObject */
	TTAudioObject(const TTObject& anOtherObject) :
	TTObject(anOtherObject)
	{}
	
	
	/**	Set the object's sample rate. */
	TTErr setSampleRate(const TTUInt32& newSampleRate)
	{
		return TTAudioObjectBasePtr(mObjectInstance)->setSampleRate(newSampleRate);
	}

	
	/** Allocate neccessary memory and make configuration adjustments so the object is able
		to process additional channels of audio. */
	TTErr adaptMaxChannelCount(const TTUInt16 aNewChannelCount)
	{
		return TTAudioObjectBasePtr(mObjectInstance)->adaptMaxNumChannels(aNewChannelCount);
	}


	TTErr process(TTAudioSignal& out)
	{
		return TTAudioObjectBasePtr(mObjectInstance)->process(out);
	}
	
	TTErr process(TTAudio& out)
	{
		return process(*out.instance());
	}

	TTErr process(TTAudioSignalArrayPtr in, TTAudioSignalArrayPtr out)
	{
		return TTAudioObjectBasePtr(mObjectInstance)->process(in, out);
	}
	
	TTErr process(TTAudioSignal& in, TTAudioSignal& out)
	{
		return TTAudioObjectBasePtr(mObjectInstance)->process(in, out);
	}
	
	TTErr process(TTAudio* in, TTAudio* out)
	{
		return TTAudioObjectBasePtr(mObjectInstance)->process(in->instance(), out->instance());
	}
	
	
	/**	Calculate a single sample of output for a single sample of input.
		 @param	x			The input to the function.
		 @param	y			The output of the function.
		 @return			#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr calculate(const TTFloat64& x, TTFloat64& y)
	{
		return TTAudioObjectBasePtr(mObjectInstance)->calculate(x, y);
	}

	
	/**	Calculate a single sample of output for a single sample of input.
		 @param	x			The input to the function.
		 @param	y			The output of the function.
		 @return			#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr calculate(const TTValue& x, TTValue& y)
	{
		return TTAudioObjectBasePtr(mObjectInstance)->calculate(x, y);
	}

	
};



#endif // __TT_AUDIO_OBJECT_H__
