/** @file
 *
 * @ingroup dspFilterLib
 *
 * @brief #TTOnePole is a 1-pole filter.
 *
 * @details
 *
 * @authors Timothy Place, Trond Lossius
 *
 * @copyright Copyright © 2010, Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#ifndef __TT_ONEPOLE_H__
#define __TT_ONEPOLE_H__

#include "TTDSP.h"


/**	The simplest of lowpass filters: a single-pole, no-zero algorithm. */
class TTOnePole : public TTAudioObjectBase {
	TTCLASS_SETUP(TTOnePole)

protected:

	TTSymbol			mMode;							///< filter mode: 'lowpass' or 'highpass'
	TTFloat64			mFrequency;						///< filter cutoff frequency
	
	TTFloat64			mLowpassCoefficient;			///< filter coefficients
	TTFloat64			mOneMinusLowpassCoefficient;	///< filter coefficients
	TTFloat64			mHighpassCoefficient;			///< filter coefficients
	TTFloat64			mOneMinusHighpassCoefficient;	///< filter coefficients
	TTSampleVector		mFeedback;						///< previous output sample for each channel


	/**	Receives notifications when there are changes to the inherited 
		mMaxNumChannels attribute.			*/
	TTErr updateMaxNumChannels(const TTValue& oldMaxNumChannels, TTValue&);


	/** Receives notifications when there are changes to the inherited 
		sr attribute.						*/
	TTErr updateSampleRate(const TTValue& oldSampleRate, TTValue&);

	
	/**	This algorithm uses an IIR filter, meaning that it relies on feedback.  If the filter should
	 *	not be producing any signal (such as turning audio off and then back on in a host) or if the
	 *	feedback has become corrupted (such as might happen if a NaN is fed in) then it may be 
	 *	neccesary to clear the filter by calling this method.
	 *	@return Returns a TTErr error code.												*/
	TTErr clear();	


	/**	Setter for the mode attribute.
	 	This also sets the audio processing method.  */
	TTErr setMode(const TTValue& value);

	/**	Setter for the frequency attribute. */
	TTErr setFrequency(const TTValue& value);
	TTErr setCoefficient(const TTValue& newValue);
	TTErr getCoefficient(TTValue& returnedValue);
	

	// Single-sample Value Calculation Methods
	inline TTErr calculateLowpass(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel);
	inline TTErr calculateHighpass(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel);	


	// Block-based Audio Processing Methods
	TTErr processLowpass(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	TTErr processHighpass(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	
	
	/**	Unit Tests
	 @param	returnedTestInfo		Used to return test information
	 @return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	virtual TTErr test(TTValue& returnedTestInfo);
};


#endif // __TT_ONEPOLE_H__
