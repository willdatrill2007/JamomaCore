/* 
 *	tt.balance~
 *	External object for Max/MSP
 *	
 *	Example project for TTBlue
 *	Copyright © 2008 by Trond Lossius
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */


#include "TTClassWrapperMax.h"
#include "ext.h"					// Max Header
#include "z_dsp.h"					// MSP Header
#include "ext_strings.h"			// String Functions
#include "commonsyms.h"				// Common symbols used by the Max 4.5 API
#include "ext_obex.h"				// Max Object Extensions (attributes) Header

#include "TTDSP.h"					// TTBlue Interfaces...


// Data Structure for this object
typedef struct _balance	{
    t_pxobject			obj;
	TTAudioObjectPtr	balance;
	TTAudioSignalPtr	audioIn;
	TTAudioSignalPtr	audioOut;
	long				attrBypass;
	float				attrFrequency;
	TTUInt16			maxNumChannels;
	TTUInt16			numChannels;
	TTUInt16			vs;
} t_balance;


// Prototypes for methods: need a method for each incoming message type
void*		balance_new(t_symbol *msg, short argc, t_atom *argv);					// New Object Creation Method
void		balance_free(t_balance *x);
void		balance_assist(t_balance *x, void *b, long msg, long arg, char *dst);	// Assistance Method
t_int*		balance_perform(t_int *w);												// An MSP Perform (signal) Method
void		balance_dsp(t_balance *x, t_signal **sp, short *count);					// DSP Method
void		balance_clear(t_balance *x);
t_max_err	balance_setBypass(t_balance *x, void *attr, long argc, t_atom *argv);
t_max_err	balance_setFrequency(t_balance *x, void *attr, long argc, t_atom *argv);


// Globals
t_class *balance_class;				// Required. Global pointing to this class


/************************************************************************************/
// Main() Function

int TTCLASSWRAPPERMAX_EXPORT main(void)
{
	long attrflags = 0;
	t_class *c;
	t_object *attr;

	TTDSPInit();	
	common_symbols_init();

	c = class_new("jcom.balance~",(method)balance_new, (method)balance_free, (short)sizeof(t_balance), 
		(method)0L, A_GIMME, 0);

 	class_addmethod(c, (method)balance_clear, 			"clear",	0L);		
 	class_addmethod(c, (method)balance_dsp, 			"dsp",		A_CANT, 0L);		
	class_addmethod(c, (method)balance_assist, 			"assist",	A_CANT, 0L); 

	attr = attr_offset_new("bypass", _sym_long, attrflags,
		(method)0L,(method)balance_setBypass, calcoffset(t_balance, attrBypass));
	class_addattr(c, attr);	

	attr = attr_offset_new("frequency", _sym_float32, attrflags,
		(method)0L,(method)balance_setFrequency, calcoffset(t_balance, attrFrequency));
	class_addattr(c, attr);	

	class_dspinit(c);						// Setup object's class to work with MSP
	class_register(CLASS_BOX, c);
	balance_class = c;

	return 0;
}


/************************************************************************************/
// Object Creation Method

void* balance_new(t_symbol *msg, short argc, t_atom *argv)
{
    t_balance	*x;
	TTValue		sr(sys_getsr());
 	long		attrstart = attr_args_offset(argc, argv);		// support normal arguments
	short		i;
   
    x = (t_balance *)object_alloc(balance_class);
    if(x){
		// Default values
		x->attrFrequency = 10;
		x->attrBypass = 0;
		// An initial argument to this object will set the maximum number of channels to process
		// Two input channels are required for each processed channel (source and comperator)
		x->maxNumChannels = 1;		
		if(attrstart && argv)
			x->maxNumChannels = atom_getlong(argv);

		ttEnvironment->setAttributeValue(kTTSym_SampleRate, sr);
		TTObjectInstantiate(TT("balance"), &x->balance, x->maxNumChannels);
		TTObjectInstantiate(TT("audiosignal"), &x->audioIn, x->maxNumChannels*2);
		TTObjectInstantiate(TT("audiosignal"), &x->audioOut, x->maxNumChannels);

		attr_args_process(x,argc,argv);				// handle attribute args	
				
    	object_obex_store((void *)x, _sym_dumpout, (object *)outlet_new(x,NULL));	// dumpout	
	    dsp_setup((t_pxobject *)x, x->maxNumChannels*2);							// inlets
		for(i=0; i < x->maxNumChannels; i++)
			outlet_new((t_pxobject *)x, "signal");									// outlets
		
		x->obj.z_misc = Z_NO_INPLACE;
	}
	return (x);										// Return the pointer
}

// Memory Deallocation
void balance_free(t_balance *x)
{
	dsp_free((t_pxobject *)x);
	TTObjectRelease(&x->balance);
	TTObjectRelease(&x->audioIn);
	TTObjectRelease(&x->audioOut);
}


/************************************************************************************/
// Methods bound to input/inlets

// Method for Assistance Messages
void balance_assist(t_balance *x, void *b, long msg, long arg, char *dst)
{
	if(msg==1) 	// Inlets
		strcpy(dst, "(signal) input, control messages");		
	else if(msg==2) // Outlets
		strcpy(dst, "(signal) Balanced output");
}


void balance_clear(t_balance *x)
{
	x->balance->sendMessage(TT("Clear"));
}


// Perform (signal) Method
t_int *balance_perform(t_int *w)
{
   	t_balance	*x = (t_balance *)(w[1]);
	short		i, j, k;

	// We sort audioIn so that all channels of signalA comes first, then all channels of signalB
	for(i=0; i < x->numChannels; i++){
		j = (i*3) + 1;
		k = i + x->numChannels;
		TTAUDIOSIGNAL_SETVECTOR32(x->audioIn, i, x->vs, w[j+1]);
		TTAUDIOSIGNAL_SETVECTOR32(x->audioIn, k, x->vs, w[j+2]);
	}

	if(!x->obj.z_disabled)									// if we are not muted...
		x->balance->process(*x->audioIn, *x->audioOut);		// Actual balance process

	for(i=0; i < x->numChannels; i++){
		j = (i*3) + 1;
		TTAUDIOSIGNAL_GETVECTOR32(x->audioOut, i, x->vs, w[j+3]);
	}

	return w + ((x->numChannels*3)+2);				// +2 = +1 for the x pointer and +1 to point to the next object
}


// DSP Method: Adds our perform method to the DSP call chain
void balance_dsp(t_balance *x, t_signal **sp, short *count)
{
	short		i, j, k, l=0;
	void		**audioVectors = NULL;
	
	audioVectors = (void**)sysmem_newptr(sizeof(void*) * ((x->maxNumChannels * 3) + 1));
	audioVectors[l] = x;
	l++;
	
	// audioVectors[] passed to balance_perform() as {x, audioInL[0], audioInR[0], audioOut[0], audioInL[1], audioInR[1], audioOut[1],...}
	x->numChannels = 0;
	x->vs = 0;
	for(i=0; i < x->maxNumChannels; i++){
		j = x->maxNumChannels + i;
		k = x->maxNumChannels*2 + i;
		if(count[i] && count[j] && count[k]){
			x->numChannels++;
			if(sp[i]->s_n > x->vs)
				x->vs = sp[i]->s_n;

			audioVectors[l] = sp[i]->s_vec;
			l++;
			audioVectors[l] = sp[j]->s_vec;
			l++;
			audioVectors[l] = sp[k]->s_vec;
			l++;
		}
	}
	
	x->audioOut->setAttributeValue(TT("NumChannels"), x->numChannels*2);
	x->audioOut->setAttributeValue(TT("NumChannels"), x->numChannels);
	x->audioIn->setAttributeValue(TT("VectorSize"), x->vs);
	x->audioOut->setAttributeValue(TT("VectorSize"), x->vs);
	//audioIn will be set in the perform method
	x->audioOut->sendMessage(TT("alloc"));
	
	x->balance->setAttributeValue(TT("SampleRate"), sp[0]->s_sr);
	
	dsp_addv(balance_perform, l, audioVectors);
	sysmem_freeptr(audioVectors);
}


t_max_err balance_setBypass(t_balance *x, void *attr, long argc, t_atom *argv)
{
	if(argc){
		x->attrBypass = atom_getlong(argv);		
		x->balance->setAttributeValue(TT("Bypass"), (TTBoolean)x->attrBypass);
	}
	return MAX_ERR_NONE;
}


t_max_err balance_setFrequency(t_balance *x, void *attr, long argc, t_atom *argv)
{
	if(argc){
		x->attrFrequency = atom_getfloat(argv);
		x->balance->setAttributeValue(TT("Frequency"), x->attrFrequency);
	}
	return MAX_ERR_NONE;
}
