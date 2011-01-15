/* 
 * Object to filter common types of MIDI events out of raw MIDI event dictionaries
 * Copyright © 2011, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_MIDIFILTER_H__
#define __TT_MIDIFILTER_H__

#include "TTDSP.h"


class TTMidiFilter : TTObject {
	TTCLASS_SETUP(TTMidiFilter)

	TTSymbolPtr	mType;
	
	TTErr dictionary(TTValue& input);
};


#endif // __TT_MIDIFILTER_H__
