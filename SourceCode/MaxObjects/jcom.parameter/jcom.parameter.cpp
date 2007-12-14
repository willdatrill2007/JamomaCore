/* 
 * jcom.paramater
 * External for Jamoma: parameter definition using pattr
 * By Tim Place, Copyright � 2006
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "jcom.parameter.h"		// everything we need is in here

// Globals
t_class		*param_class;		// Required: Global pointer for our class
bool		g_pattr_valid;		// Did pattr init successfully?
	
int param_list_compare(t_atom *x, long lengthx, t_atom *y, long lengthy);

/************************************************************************************/
// Class Definition

int main(void)				// main recieves a copy of the Max function macros table
{
	t_class		*c;
	t_object	*attr = NULL;
	long		offset;
	
	// Initialize Globals
	g_pattr_valid = false;
	jamoma_init();
#ifndef JMOD_MESSAGE
	// TODO: move this into the framework [TAP]
	short		err = 0;
	err = ext_pattr_setup();
	if(err){
		post("Jamoma: pattr integration is not available - could not init pattr-bundle");
		g_pattr_valid = false;
	}
	else
		g_pattr_valid = true;
#endif

	// Define our class
	c = class_new(OBJECT_CLASS_NAME,(method)param_new, (method)param_free, 
		(short)sizeof(t_param), (method)0L, A_GIMME, 0);
	offset = calcoffset(t_param, common);
	class_obexoffset_set(c, offset + calcoffset(t_jcom_core_subscriber_common, obex));

	if(g_pattr_valid == true)
		pattr_obex_init(c);			// set up the pattr obex
		
	// Make methods accessible for our class:
	// Note that we can't make the bang method directly accessible here (must go through another function)
	//	because the function pointer is in out struct, which hasn't been defined yet
	class_addmethod(c, (method)param_dispatched,				"dispatched",					A_GIMME,	0);
	class_addmethod(c, (method)param_int,						"int",							A_DEFLONG,	0);
	class_addmethod(c, (method)param_float,						"float",						A_DEFFLOAT,	0);
 	class_addmethod(c, (method)param_list,						"list",							A_GIMME,	0);
 	class_addmethod(c, (method)param_symbol,					"anything",						A_GIMME,	0);
	class_addmethod(c, (method)param_setRampFunctionParameter,	"ramp/function/parameter",		A_GIMME,	0);
	class_addmethod(c, (method)param_getRampFunctionParameter,	"ramp/function/parameter/get",	A_GIMME,	0);
	class_addmethod(c, (method)param_setRampDriveParameter,		"ramp/drive/parameter",			A_GIMME,	0);
	class_addmethod(c, (method)param_getRampDriveParameter,		"ramp/drive/parameter/get",		A_GIMME,	0);
	class_addmethod(c, (method)param_ui_refresh,				"ui/refresh",					0);
	class_addmethod(c, (method)param_inc,						"inc",							A_GIMME,	0);
	class_addmethod(c, (method)param_dec,						"dec",							A_GIMME,	0);
	class_addmethod(c, (method)param_inc,						"+",							A_GIMME,	0);
	class_addmethod(c, (method)param_dec,						"-",							A_GIMME,	0);
	class_addmethod(c, (method)param_dump,						"dump",							0);
	class_addmethod(c, (method)param_bang,						"bang",							0);
	class_addmethod(c, (method)param_assist,					"assist",						A_CANT,		0); 
#ifndef JMOD_MESSAGE
	if(g_pattr_valid == true){
		// required to manually add because of our pattr-wrapping for parameters
		class_addmethod(c, (method)param_getvalueof,			"getvalueof",	A_CANT, 0);
		class_addmethod(c, (method)param_setvalueof,			"setvalueof",	A_CANT, 0);
		class_addmethod(c, (method)pattr_obex_notify,			"notify",		A_CANT, 0); 	
	}
#endif

	if(g_pattr_valid == true)
		jcom_core_subscriber_classinit_extended(c, attr, offset, false);	// don't define name attr
	else
		jcom_core_subscriber_classinit_extended(c, attr, offset, true);		// define a name attr
		
	// ATTRIBUTE: ramp	
	jamoma_class_attr_new(c, "ramp/drive", _sym_symbol,
		(method)param_attr_setramp, (method)param_attr_getramp,
		calcoffset(t_param, attr_ramp));
	jamoma_class_attr_new(c, "ramp/function", _sym_symbol,
		(method)param_attr_setrampfunction, (method)param_attr_getrampfunction,
		calcoffset(t_param, attr_rampfunction));

	// ATTRIBUTE: type - options are msg_generic, msg_int, msg_float, msg_symbol, msg_toggle, msg_list, msg_none
	jamoma_class_attr_new(c, "type", _sym_symbol,
		(method)param_attr_settype, (method)param_attr_gettype,
		calcoffset(t_jcom_core_subscriber_extended, attr_type));
	
	// ATTRIBUTE: ui/freeze - toggles a "frozen" ui outlet so that you can save cpu
	jamoma_class_attr_new(c, "ui/freeze", _sym_long,
		(method)0, (method)param_attr_getfreeze,
		calcoffset(t_param, attr_ui_freeze));
	
	// ATTRIBUTE: slavemode - indicates that the instance is slave to another parameter/message
	jamoma_class_attr_new(c, "slave", _sym_long,
		(method)0, (method)0,
		calcoffset(t_param, attr_slavemode));

	// ATTRIBUTE: stepsize - how much increment or decrement by
	jamoma_class_attr_new(c, "stepsize", _sym_float32,
		(method)0, (method)param_attr_getstepsize,
		calcoffset(t_param, attr_stepsize));

	// ATTRIBUTE: priority - used to determine order of parameter recall in a preset
	jamoma_class_attr_new(c, "priority", _sym_long,
		(method)0, (method)param_attr_getpriority,
		calcoffset(t_param, attr_priority));

	// ATTRIBUTE: value
	jamoma_class_attr_array_new(c, "value", _sym_atom, LISTSIZE,
		(method)0, (method)param_attr_getvalue,
		calcoffset(t_param, list_size), calcoffset(t_param, attr_value));

	// Finalize our class
	class_register(CLASS_BOX, c);
	param_class = c;
	
	return 0;
}


/************************************************************************************/
// Object Life
#pragma mark -
#pragma mark life cycle

void *param_new(t_symbol *s, long argc, t_atom *argv)
{
	short		i;
	long		attrstart = attr_args_offset(argc, argv);
	t_param		*x = (t_param *)object_alloc(param_class);
	t_symbol	*name = _sym_nothing;

	if(attrstart && argv)
		atom_arg_getsym(&name, 0, attrstart, argv);
	else
		name = symbol_unique();

	if(x){
		for(i=num_outlets; i > 0; i--)
			x->outlets[i-1] = outlet_new(x, 0);
		object_obex_store((void *)x, _sym_dumpout, (t_object *)x->outlets[k_outlet_dumpout]);
		
		x->ui_qelem = qelem_new(x, (method)param_ui_queuefn);
		x->ramp_qelem = qelem_new(x, (method)param_ramp_setup);

		// set defaults...
		x->attr_rampfunction = _sym_nothing;
		x->attr_ramp = _sym_nothing;
		x->ramper = NULL;

		// defaulted to one long above, set list to be of size 1
		x->list_size = 1;
		for(i = 0; i < LISTSIZE; i++)	
			atom_setlong(&x->atom_list[i], 0); // atom_setlong(&x->attr_value, 0);
		x->name = name;
		atom_setsym(&x->name_atom, name);
		x->attr_ui_freeze = 0;
		x->attr_slavemode = 0;
		x->attr_stepsize = 1.0;
		x->attr_priority = 0;						// default is no priority
		x->param_output = &param_output_generic;		// set function pointer to default
		
#ifdef JMOD_MESSAGE
		jcom_core_subscriber_new_extended(&x->common, name, ps_subscribe_message);
#else
		jcom_core_subscriber_new_extended(&x->common, name, ps_subscribe_parameter);
#endif
		attr_args_process(x, argc, argv);			// handle attribute args
		if(g_pattr_valid == true)
			pattr_obex_setup(x, name);				// set up out internal pattr instance

		defer_low(x, (method)jcom_core_subscriber_subscribe, 0, 0, 0);
		
		// If no type was specified by the user we call the accessor here
		// this is important because memory is configured - not just setting a default!
		if(x->common.attr_type == NULL){
			t_atom a;
			atom_setsym(&a, ps_msg_generic);
			object_attr_setvalueof(x, ps_type, 1, &a);
		}
		if(x->attr_ramp == _sym_nothing){
			t_atom a;
			atom_setsym(&a, ps_none);
			object_attr_setvalueof(x, gensym("ramp/drive"), 1, &a);
		}
	}
	return (x);										// return the pointer to our new instantiation
}


void param_free(t_param *x)
{	
	jcom_core_subscriber_common_free((t_jcom_core_subscriber_common *)x);
	qelem_free(x->ui_qelem);
	qelem_free(x->ramp_qelem);
	if(x->ramper)
		delete x->ramper;
}


#ifndef JMOD_MESSAGE
/************************************************************************************/
// Communication with PSTO (pattrstorage)
#pragma mark -
#pragma mark pattr support

// FROM psto
t_max_err param_setvalueof(t_param *x, long argc, t_atom *argv)
{
	if(argc && argv) {
		sysmem_copyptr(argv, &x->atom_list[0], sizeof(t_atom) * argc);
		x->list_size = argc;
		x->param_output(x);
	}	
	return MAX_ERR_NONE;
}

// TO psto
t_max_err param_getvalueof(t_param *x, long *argc, t_atom **argv)
{
	if(argc && argv){
		if(*argc && *argv) {
			// use passed in memory
		} 
		else { 
			if(x->list_size > 1)
				*argv = (t_atom *)getbytes(sizeof(t_atom) * x->list_size);
			else
				*argv = (t_atom *)getbytes(sizeof(t_atom));
		}
		
		*argc = x->list_size > 1 ? x->list_size : 1;
		sysmem_copyptr(&x->atom_list[0], *argv, sizeof(t_atom) * (*argc));
	}
	return MAX_ERR_NONE;
}

#endif


/************************************************************************************/
// Methods bound to input/inlets
#pragma mark -
#pragma mark attribute accessors

// ATTRIBUTE: TYPE
// This is crucial because it sets function pointers for the optimized clipping, bang, and other functions
t_max_err param_attr_settype(t_param *x, void *attr, long argc, t_atom *argv)
{
	t_symbol *arg = atom_getsym(argv);
	x->common.attr_type = arg;

	if(arg == ps_msg_int){
		x->param_output = &param_output_int;
	}
	else if(arg == ps_msg_float){
		x->param_output = &param_output_float;
	}
	else if(arg == ps_msg_symbol){
		x->param_output = &param_output_symbol;
	}
	else if(arg == ps_msg_toggle){
		x->param_output = &param_output_int;
	}
	else if(arg == ps_msg_generic){
		x->param_output = &param_output_generic;
	} 
	else if(arg == ps_msg_list){
		x->param_output = &param_output_list;
	}
#ifdef JMOD_MESSAGE
	else if(arg == ps_msg_none){
		x->param_output = &param_output_none;
	}
#endif // JMOD_MESSAGE
	else{
#ifdef JMOD_MESSAGE
		error("Jamoma - invalid type specified for %s jcom.message in the %s module.", x->name->s_name, x->common.module_name->s_name);
#else
		error("Jamoma - invalid type specified for %s jcom.parameter in the %s module.", x->name->s_name, x->common.module_name->s_name);
#endif
		x->common.attr_type = ps_msg_generic;
		x->param_output = &param_output_generic;
	}

	qelem_set(x->ramp_qelem);	// set up the rampunit with callbacks appropriate to this data type

	return MAX_ERR_NONE;
	#pragma unused(attr)
}


// ATTRIBUTE: RAMP
// This is crucial because it sets function pointers
t_max_err param_attr_setramp(t_param *x, void *attr, long argc, t_atom *argv)
{
	t_symbol *arg = atom_getsym(argv);
	x->attr_ramp = arg;
	
	qelem_set(x->ramp_qelem);	// place a call to param_ramp_setup() at the end of the low-priority queue

	return MAX_ERR_NONE;
	#pragma unused(attr)
}

t_max_err param_attr_getramp(t_param *x, void *attr, long *argc, t_atom **argv)
{
	*argc = 1;
	if (!(*argv)) // otherwise use memory passed in
		*argv = (t_atom *)sysmem_newptr(sizeof(t_atom));
	atom_setsym(*argv, x->attr_ramp);
	
	jamoma_class_attr_get_sender((t_object*)x, attr, *argc, *argv);
	return MAX_ERR_NONE;
}


t_max_err param_attr_setrampfunction(t_param *x, void *attr, long argc, t_atom *argv)
{
	t_symbol *arg = atom_getsym(argv);
	x->attr_rampfunction = arg;

	x->ramper->setFunction(x->attr_rampfunction);

	return MAX_ERR_NONE;
	#pragma unused(attr)
}

t_max_err param_attr_getrampfunction(t_param *x, void *attr, long *argc, t_atom **argv)
{
	*argc = 1;
	if (!(*argv)) // otherwise use memory passed in
		*argv = (t_atom *)sysmem_newptr(sizeof(t_atom));
	atom_setsym(*argv, x->attr_rampfunction);

	jamoma_class_attr_get_sender((t_object*)x, attr, *argc, *argv);
	return MAX_ERR_NONE;
}


t_max_err param_attr_gettype(t_param *x, void *attr, long *argc, t_atom **argv)
{
	*argc = 1;
	if (!(*argv)) // otherwise use memory passed in
		*argv = (t_atom *)sysmem_newptr(sizeof(t_atom));
	atom_setsym(*argv, x->common.attr_type);

	jamoma_class_attr_get_sender((t_object*)x, attr, *argc, *argv);
	return MAX_ERR_NONE;
}

	
t_max_err param_attr_getfreeze(t_param *x, void *attr, long *argc, t_atom **argv)
{
	*argc = 1;
	if (!(*argv)) // otherwise use memory passed in
		*argv = (t_atom *)sysmem_newptr(sizeof(t_atom));
	atom_setlong(*argv, x->attr_ui_freeze);

	jamoma_class_attr_get_sender((t_object*)x, attr, *argc, *argv);
	return MAX_ERR_NONE;
}

	
t_max_err param_attr_getstepsize(t_param *x, void *attr, long *argc, t_atom **argv)
{
	*argc = 1;
	if (!(*argv)) // otherwise use memory passed in
		*argv = (t_atom *)sysmem_newptr(sizeof(t_atom));
	atom_setfloat(*argv, x->attr_stepsize);

	jamoma_class_attr_get_sender((t_object*)x, attr, *argc, *argv);
	return MAX_ERR_NONE;
}


t_max_err param_attr_getpriority(t_param *x, void *attr, long *argc, t_atom **argv)
{
	*argc = 1;
	if (!(*argv)) // otherwise use memory passed in
		*argv = (t_atom *)sysmem_newptr(sizeof(t_atom));
	atom_setlong(*argv, x->attr_priority);

	jamoma_class_attr_get_sender((t_object*)x, attr, *argc, *argv);
	return MAX_ERR_NONE;
}


t_max_err param_attr_getvalue(t_param *x, void *attr, long *argc, t_atom **argv)
{
	*argc = x->list_size;
	if (!(*argv)) // otherwise use memory passed in
		*argv = (t_atom *)sysmem_newptr(sizeof(t_atom) * x->list_size);
	sysmem_copyptr(x->atom_list, *argv, sizeof(t_atom) * x->list_size);

	jamoma_class_attr_get_sender((t_object*)x, attr, *argc, *argv);
	return MAX_ERR_NONE;
}


void param_getRampFunctionParameter(t_param *obj, t_symbol *msg, long argc, t_atom *argv)
{
	t_symbol	*parameterName;
	t_atom		*a;
	long		ac = 0;
	t_atom		*av = NULL;
	
	if(!argc){
		error("jcom.map: not enough arguments to getParameter");
		return;
	}
	
	parameterName = atom_getsym(argv);
	//obj->function->getParameter(parameterName, &ac, &av);
	obj->ramper->getFunctionParameter(parameterName, &ac, &av);
	if(ac) {
		//atom_setsym(a+0, parameterName);
		//atom_setfloat(a+1, av);
		a = (t_atom *)sysmem_newptr(sizeof(t_atom)*(ac+1));
		// Forst list item is name of parameter
		atom_setsym(a, parameterName);
		// Next the whole shebang is copied
		sysmem_copyptr(av, a+1, sizeof(t_atom)*ac);
		object_obex_dumpout(obj, gensym("ramp.function.getParameter"), ac+1, av);
	
		// The pointer to an atom assign in the getParameter method needs to be freed.
		sysmem_freeptr(av);
		sysmem_freeptr(a);
	}
}


void param_setRampFunctionParameter(t_param *obj, t_symbol *msg, long argc, t_atom *argv)
{
	//double		value = 0.0;
	t_symbol	*parameterName;
	
	if(argc < 2){
		error("jcom.map: not enough arguments to setParameter");
		return;
	}
	
	parameterName = atom_getsym(argv);
	//obj->function->setParameter(parameterName, argc-1, argv+1);
	obj->ramper->setFunctionParameter(parameterName, argc-1, argv+1);
}


void param_getRampDriveParameter(t_param *obj, t_symbol *msg, long argc, t_atom *argv)
{
	t_symbol	*parameterName;
	t_atom		a[2];
	double		value = 0.0;
	
	if(!argc){
		error("jcom.map: not enough arguments to getParameter");
		return;
	}
	
	parameterName = atom_getsym(argv);
	
	obj->ramper->attrget(parameterName, &value);
	atom_setsym(a+0, parameterName);
	atom_setfloat(a+1, value);
	object_obex_dumpout(obj, gensym("ramp.drive.getParameter"), 2, a);
}


void param_setRampDriveParameter(t_param *obj, t_symbol *msg, long argc, t_atom *argv)
{
	double		value = 0.0;
	t_symbol	*parameterName;
	
	if(argc < 2){
		error("jcom.map: not enough arguments to setParameter");
		return;
	}
	
	parameterName = atom_getsym(argv+0);
	value = atom_getfloat(argv+1);
	obj->ramper->attrset(parameterName, value);
}


/************************************************************************************/
// Methods bound to input/inlets
#pragma mark -
#pragma mark methods

// Method for Assistance Messages
void param_assist(t_param *x, void *b, long msg, long arg, char *dst)
{
	if(msg==1) 						// Inlet
		strcpy(dst, "input");
	else{							// Outlets
		switch(arg){
			case k_outlet_set:
					strcpy(dst, "set: connect to ui object");
					break;
			case k_outlet_direct:
					strcpy(dst, "direct: values");
					break;
			case k_outlet_dumpout:
					strcpy(dst, "dumpout");
					break;
		}
 	}		
}


// DUMP: use for debugging - dump state to the Max window
void param_dump(t_param *x)
{
	char	s[256];
	t_atom	a[4];
	
	if(x->common.hub != NULL){
		sprintf(s, "%s:clipmode", x->common.attr_name->s_name);
		atom_setsym(&a[0], gensym(s));
		atom_setsym(&a[1], x->common.attr_clipmode);
		object_method_typed(x->common.hub, ps_feedback, 2, a, NULL);

		sprintf(s, "%s:description", x->common.attr_name->s_name);
		atom_setsym(&a[0], gensym(s));
		atom_setsym(&a[1], x->common.attr_description);
		object_method_typed(x->common.hub, ps_feedback, 2, a, NULL);

		sprintf(s, "%s:priority", x->common.attr_name->s_name);
		atom_setsym(&a[0], gensym(s));
		atom_setlong(&a[1], x->attr_priority);
		object_method_typed(x->common.hub, ps_feedback, 2, a, NULL);

		sprintf(s, "%s:ramp", x->common.attr_name->s_name);
		atom_setsym(&a[0], gensym(s));
		atom_setsym(&a[1], x->attr_ramp);
		object_method_typed(x->common.hub, ps_feedback, 2, a, NULL);

		sprintf(s, "%s:range", x->common.attr_name->s_name);
		atom_setsym(&a[0], gensym(s));
		atom_setfloat(&a[1], x->common.attr_range[0]);
		atom_setfloat(&a[2], x->common.attr_range[1]);
		object_method_typed(x->common.hub, ps_feedback, 3, a, NULL);

		sprintf(s, "%s:repetitions", x->common.attr_name->s_name);
		atom_setsym(&a[0], gensym(s));
		atom_setlong(&a[1], x->common.attr_repetitions);
		object_method_typed(x->common.hub, ps_feedback, 2, a, NULL);

		sprintf(s, "%s:type", x->common.attr_name->s_name);
		atom_setsym(&a[0], gensym(s));
		atom_setsym(&a[1], x->common.attr_type);
		object_method_typed(x->common.hub, ps_feedback, 2, a, NULL);

		sprintf(s, "%s:ui/freeze", x->common.attr_name->s_name);
		atom_setsym(&a[0], gensym(s));
		atom_setlong(&a[1], x->attr_ui_freeze);
		object_method_typed(x->common.hub, ps_feedback, 2, a, NULL);

		sprintf(s, "%s:value", x->common.attr_name->s_name);
		atom_setsym(&a[0], gensym(s));
		jcom_core_atom_copy(&a[1], &x->attr_value);
		object_method_typed(x->common.hub, ps_feedback, 2, a, NULL);
	}
}


// 'bang' method for user input
void param_bang(t_param *x)
{
#ifdef JMOD_MESSAGE
	t_atom	a;
	
	atom_setsym(&a, gensym(""));
	outlet_int(x->outlets[k_outlet_direct], x->attr_value.a_w.w_long);
	outlet_anything(x->outlets[k_outlet_set], _sym_set, 1, &a);

	// call on the hub to pass our data onward
	if(x->common.hub != NULL){
		jcom_core_atom_copy(&a, &x->name_atom);
		object_method_typed(x->common.hub, ps_feedback, 1, &a, NULL);
	}
#else
	x->param_output(x);
#endif
}


// Actual bang functions
void param_output_generic(void *z)
{
	t_param *x = (t_param *)z;
	
	if(x->list_size == 1){
		param_clip_generic(x);
		if(x->attr_value.a_type == A_LONG)
			outlet_int(x->outlets[k_outlet_direct], x->attr_value.a_w.w_long);
		else if(x->attr_value.a_type == A_FLOAT)
			outlet_float(x->outlets[k_outlet_direct], x->attr_value.a_w.w_float);
		else if(x->attr_value.a_type == A_SYM)
			outlet_anything(x->outlets[k_outlet_direct], x->attr_value.a_w.w_sym, 0, NULL);
	}
	else if(x->list_size > 1){
		param_clip_generic(x);
		outlet_anything(x->outlets[k_outlet_direct], _sym_list, x->list_size, x->atom_list);
	} 
	else{	// zero args
		param_output_none(x);
	}
	param_send_feedback(x);
}


void param_output_int(void *z)
{
	t_param *x = (t_param *)z;

	param_clip_int(x);
	outlet_int(x->outlets[k_outlet_direct], x->attr_value.a_w.w_long);
	param_send_feedback(x);
}


void param_output_float(void *z)
{
	t_param *x = (t_param *)z;

	param_clip_float(x);
	outlet_float(x->outlets[k_outlet_direct], x->attr_value.a_w.w_float);
	param_send_feedback(x);
}


void param_output_symbol(void *z)
{
	t_param *x = (t_param *)z;

	outlet_anything(x->outlets[k_outlet_direct], x->attr_value.a_w.w_sym, 0, NULL);
	param_send_feedback(x);
}


void param_output_list(void *z)
{
	t_param *x = (t_param *)z;
	
	param_clip_list(x);
	outlet_anything(x->outlets[k_outlet_direct], _sym_list, x->list_size, x->atom_list);
	param_send_feedback(x);
}


void param_output_none(void *z)
{
	t_param *x = (t_param *)z;
	t_atom output[1];
	t_atom *out = (t_atom *)(&output);

	// bang direct output
	outlet_bang(x->outlets[k_outlet_direct]);
	
	// call on the hub to pass our data onward
	// We can not use (method)param_send_feedback here as it assumes an additional argument
	if(x->common.hub != NULL){
		jcom_core_atom_copy(out, &x->name_atom);
		object_method_typed(x->common.hub, ps_feedback, 1, out, NULL);
	}
}


// INC & DEC
void param_inc(t_param *x, t_symbol *msg, long argc, t_atom *argv)
{
	float	stepmult = 1.0;
	long	ramptime = 0;		// ms
	t_atom	a[3];				// value, 'ramp', value
	short	a_len = 1;
	
	// Check for slave mode
	if(x->attr_slavemode) {
		outlet_anything(x->outlets[k_outlet_direct], ps_inc, 0, NULL);
		return;
	}
	
	// Check for Arguments...
	if(argc){
		// Look for arg to specify the number of steps to move
		if(argv->a_type == A_FLOAT){
			stepmult = argv->a_w.w_float;
			argc--;
			argv++;
		}
		else if(argv->a_type == A_LONG){
			stepmult = argv->a_w.w_long;
			argc--;
			argv++;
		}
		
		// Look for args to specify a ramp time
		if(argc){
			if(argv->a_type == A_SYM){
				if(argv->a_w.w_sym == ps_ramp){
					argc--;
					argv++;
					if(argc){
						ramptime = atom_getlong(argv);
						if(ramptime){
							atom_setsym(a+1, ps_ramp);
							atom_setlong(a+2, ramptime);
							a_len = 3;
						}
					}
				}
			}
		}
	}
	
	if(x->ramper)
		x->ramper->stop();
		
	if(x->common.attr_type == ps_msg_int)
		atom_setlong(a, x->attr_value.a_w.w_long + (x->attr_stepsize * stepmult));
	else if((x->common.attr_type == ps_msg_float) || (x->common.attr_type == ps_msg_generic))
		atom_setfloat(a, x->attr_value.a_w.w_float + (x->attr_stepsize * stepmult));
	else if(x->common.attr_type == ps_msg_toggle){
		if(x->attr_value.a_w.w_long == 1)
			x->attr_value.a_w.w_long = 0;
		else
			x->attr_value.a_w.w_long = 1;
		param_output_int(x);
		return;
	}
	else{
		error("%s parameter (in the %s module) is an inappropriate type for the 'inc' message.");
		return;
	}

	param_dispatched(x, msg, a_len, a);
}


void param_dec(t_param *x, t_symbol *msg, long argc, t_atom *argv)
{
	float	stepmult = 1.0;
	long	ramptime = 0;		// ms
	t_atom	a[3];				// value, 'ramp', value
	short	a_len = 1;

	// Check for slave mode
	if(x->attr_slavemode) {
		outlet_anything(x->outlets[k_outlet_direct], ps_dec, 0, NULL);
		return;
	}
	
	// Check for Arguments...
	if(argc){
		// Look for arg to specify the number of steps to move
		if(argv->a_type == A_FLOAT){
			stepmult = argv->a_w.w_float;
			argc--;
			argv++;
		}
		else if(argv->a_type == A_LONG){
			stepmult = argv->a_w.w_long;
			argc--;
			argv++;
		}
		
		// Look for args to specify a ramp time
		if(argc){
			if(argv->a_type == A_SYM){
				if(argv->a_w.w_sym == ps_ramp){
					argc--;
					argv++;
					if(argc){
						ramptime = atom_getlong(argv);
						if(ramptime){
							atom_setsym(a+1, ps_ramp);
							atom_setlong(a+2, ramptime);
							a_len = 3;
						}
					}
				}
			}
		}
	}

	// new input - halt any ramping...
	if(x->ramper)
		x->ramper->stop();
		
	if(x->common.attr_type == ps_msg_int)
		atom_setlong(a, x->attr_value.a_w.w_long - (x->attr_stepsize * stepmult));
	else if((x->common.attr_type == ps_msg_float) || (x->common.attr_type == ps_msg_generic))
		atom_setfloat(a, x->attr_value.a_w.w_float - (x->attr_stepsize * stepmult));
	else if(x->common.attr_type == ps_msg_toggle){
		if(x->attr_value.a_w.w_long == 1)
			x->attr_value.a_w.w_long = 0;
		else
			x->attr_value.a_w.w_long = 1;
		param_output_int(x);
		return;
	}
	else{
		error("%s parameter (in the %s module) is an inappropriate type for the 'dec' message.");
		return;
	}

	param_dispatched(x, msg, a_len, a);
}


// INT INPUT
void param_int(t_param *x, long value)
{
	// Check for slave mode
	if (x->attr_slavemode) {
		outlet_int(x->outlets[k_outlet_direct], value);
		return;
	}
	x->list_size = 1;
	if(x->common.attr_repetitions == 0){
		if(value == atom_getlong(&x->attr_value))
			return;
	}
	// new input - halt any ramping...
	if(x->ramper)
		x->ramper->stop();
	atom_setlong(&x->attr_value, value);
	x->param_output(x);
}


// FLOAT INPUT
void param_float(t_param *x, double value)
{
	// Check for slave mode
	if (x->attr_slavemode) {
		outlet_float(x->outlets[k_outlet_direct], value);
		return;
	}
	
	x->list_size = 1;
	if(x->common.attr_repetitions == 0){
		if(value == atom_getfloat(&x->attr_value))
			return;
	}
	// new input - halt any ramping...
	if(x->ramper)
		x->ramper->stop();

	atom_setfloat(&x->attr_value, value);
	x->param_output(x);
}


// SYMBOL INPUT
void param_symbol(t_param *x, t_symbol *msg, long argc, t_atom *argv)
{
	// Check for slave mode
	if (x->attr_slavemode) {
		outlet_anything(x->outlets[k_outlet_direct], msg, argc, argv);
		return;
	}
	
	x->list_size = 1;
	if(x->common.attr_repetitions == 0){
		if(jcom_core_atom_compare(x->common.attr_type, &x->attr_value, argv))
			return;
	}
	atom_setsym(&x->attr_value, msg);
	x->param_output(x);

}


void param_ui_refresh(t_param *x)
{
	if (!x->attr_slavemode)
		outlet_anything(x->outlets[k_outlet_set], _sym_set, x->list_size, &x->attr_value);
}


// Send feedback to the hub
void param_send_feedback(t_param *x)
{
	t_atom output[LISTSIZE + 1];
	t_atom *out = (t_atom *)(&output);
	
	// send to our ui outlet
	if(x->attr_ui_freeze == 0)
		qelem_set(x->ui_qelem);
	
	// call on the hub to pass our data onward
	if(x->common.hub != NULL){
		jcom_core_atom_copy(out, &x->name_atom);
		jcom_core_atom_copy(out+1, &x->attr_value);
		// copy any remaining atoms
		if(x->list_size > 1) 
			sysmem_copyptr(&x->atom_list[1], out + 2, sizeof(t_atom) * (x->list_size - 1));
		object_method_typed(x->common.hub, ps_feedback, x->list_size + 1, out, NULL);
	}
	// notify pattr that we have modified data
#ifndef JMOD_MESSAGE
	object_notify(x, _sym_modified, NULL);
#endif
}


// Send values to a potentially connected ui object at the first outlet
void param_ui_queuefn(t_param *x)
{
	outlet_anything(x->outlets[k_outlet_set], _sym_set, x->list_size, &x->attr_value);
}


// messages received from jcom.hub
void param_dispatched(t_param *x, t_symbol *msg, long argc, t_atom *argv)
{
	if (x->attr_slavemode) {
		if (argc==0)
			outlet_bang(x->outlets[k_outlet_direct]);
		else if (argc==1) {		
			switch(argv[0].a_type) 
				{
					case A_LONG:
						outlet_int(x->outlets[k_outlet_direct], atom_getlong(argv));
						break;
					case A_FLOAT:
						outlet_float(x->outlets[k_outlet_direct], atom_getfloat(argv));
						break;
					case A_SYM:
						outlet_anything(x->outlets[k_outlet_direct], atom_getsym(argv), 0, 0L);
						break;
					default:
						outlet_anything(x->outlets[k_outlet_direct], msg, argc, argv);
						break;
				}
		}
		else
			outlet_anything(x->outlets[k_outlet_direct], _sym_list, argc, argv);
	}
	else {
		//ps_ramp_update				= gensym("ramp_update");
		if (atom_getsym(argv)==ps_ramp_update)
		{
			post("Update!");
			// Send som message to 
		}
		else {
			// new input - halt any ramping...
			if(x->ramper)
				x->ramper->stop();
		
			if(argc == 1 ){
				// If repetitions are disabled, we check for a repetition by treating
				// this as a 1 element list
				if(x->common.attr_repetitions == 0 && param_list_compare(x->atom_list, 
					x->list_size, argv, argc)) 
					return;

				x->list_size = 1;				
				jcom_core_atom_copy(&x->attr_value, argv);
				x->param_output(x);
			} else if(argc > 1) {
				param_list(x, msg, argc, argv);
			}
			else{ 	// no args
#ifndef JMOD_MESSAGE
				// generic parameters may have no arg -- i.e. to open a dialog that defines the arg
				if(x->common.attr_type == ps_msg_generic)
					x->list_size = 0;
#endif			
				x->param_output(x);
			}
		}
		
	}
}

// Returns true if lists are identical
int param_list_compare(t_atom *x, long lengthx, t_atom *y, long lengthy)
{
	// If lists differ in length they're obviously not the same
	if(lengthx == lengthy) {
		short type;
		for(int i = 0; i < lengthx; i++) {
			if((x->a_type) != (y->a_type))
				return 0; // not identical, types differ
			
			type = x->a_type;
			if((type == A_FLOAT) && (x->a_w.w_float != y->a_w.w_float))
				return 0;
			else if((type == A_LONG) && (x->a_w.w_long != y->a_w.w_long))
				return 0;
			else if((type == A_SYM) && (x->a_w.w_sym != y->a_w.w_sym))
				return 0;
			
			x++; y++;  // keep going
		}
	} 
	else {
		return 0; // list lengths differ
	}
	
	return 1;
}

// LIST INPUT <value, ramptime>
void param_list(t_param *x, t_symbol *msg, long argc, t_atom *argv)
{
	double	start[LISTSIZE], values[LISTSIZE], time;
	int i;
	
	if (x->attr_slavemode) {
		outlet_anything(x->outlets[k_outlet_direct], _sym_list, argc, argv);
		return;
	}
		
	// Check the second to last item in the list first, which when ramping should == the string ramp
	t_atom* ramp = argv + (argc - 2);
	if (ramp->a_type == A_SYM && ramp->a_w.w_sym == ps_ramp) {

		time = atom_getfloat(argv+(argc-1));

		// Only one list member if @type is msg_int of msg_float
		if ( x->common.attr_type == ps_msg_int || x->common.attr_type == ps_msg_float)
			argc = 1;
		else
			argc = argc - 2;
		
		for (i=0; i<argc; i++) {
			values[i] = atom_getfloat(argv+i);
			if (i<=x->list_size)
				start[i] = atom_getfloat(&x->atom_list[i]);
			else
				start[i] = atom_getfloat(&x->atom_list[(x->list_size)-1]);
		}

		if(time <= 0){
			jcom_core_atom_copy(&x->attr_value, argv);
			x->param_output(x);
			return;
		}	

		if(x->common.attr_repetitions == 0){
			if(param_list_compare(x->atom_list, x->list_size, argv, argc))
				return;	// nothing to do
		}

		x->list_size = argc;
		x->ramper->set(argc, start);
		x->ramper->go(argc, values, time);
	} 
	else {
		// Don't output if the input data is identical
		if(!x->common.attr_repetitions) {
			if(param_list_compare(x->atom_list, x->list_size, argv, argc))
				return;	// nothing to do
		}
		
		// Avoid copying more than one atom if the type only can have one argument
		if(x->common.attr_type != ps_msg_list && x->common.attr_type != ps_msg_generic
			&& x->common.attr_type != ps_msg_none) {
			// If attr_type is != to anyone of the above values then we know 
			// that it must be == to a scalar type.  This ensures it will behave
			// as a scalar and not a list.
			argc = 1;
		}
			
		for(i = 0; i < argc; i++) {
			switch(argv[i].a_type) 
			{
				case A_LONG:
					atom_setlong(&x->atom_list[i], atom_getlong(argv + i));
					break;
				case A_FLOAT:
					atom_setfloat(&x->atom_list[i], atom_getfloat(argv + i));
					break;
				case A_SYM:
					atom_setsym(&x->atom_list[i], atom_getsym(argv + i));
					break;
				default:
					error("param_list: no type specification");
					break;
			}
		}
		x->list_size = argc;
		x->param_output(x);
	}
}


#pragma mark -
#pragma mark Ramp Units

void param_ramp_callback_float(void *v, short, double *value)
{
	t_param *x = (t_param *)v;
	float	oldval = atom_getfloat(&x->attr_value);
	
	if(x->common.attr_repetitions || *value != oldval){
		atom_setfloat(&x->attr_value, *value);
		param_output_float(x);
	}
}


void param_ramp_callback_int(void *v, short, double *value)
{
	t_param	*x= (t_param *)v;
	long	val	= *value;
	long	oldval;

	oldval = atom_getlong(&x->attr_value);
	if (x->common.attr_repetitions || val != oldval){
		atom_setlong(&x->attr_value, val);
		param_output_int(x);
	}
}


void param_ramp_callback_list(void *v, short argc, double *value)
{
	long i;
	t_param *x = (t_param *)v;
	
	// we won't bother about avoiding repetitions for list, so never mind oldval

	for (i=0; i<argc; i++)
		atom_setfloat(&x->atom_list[i], value[i]);
	param_output_list(x);	
}


void param_ramp_setup(t_param *x)
{
	// 1. destroy the old rampunit
	if(x->ramper != NULL)
		delete x->ramper;
		
	// 2. create the new rampunit
	// For backwards compatibility, we still accept 'linear' as an input value for @ramp
	// but we need to convert that to the actual name of the rampunit...
	if(x->attr_ramp == ps_linear || x->attr_ramp == gensym("linear.sched"))
		x->attr_ramp = gensym("scheduler");

	// For some types ramping doesn't make sense, so they will be set to none
	if((x->common.attr_type == ps_msg_none) || (x->common.attr_type == ps_msg_symbol) || (x->common.attr_type == ps_msg_generic))
		x->attr_ramp = gensym("none");
		
	if((x->common.attr_type == ps_msg_int) || (x->common.attr_type == ps_msg_toggle))
		x->ramper = new rampunit(x->attr_ramp->s_name, param_ramp_callback_int, (void *)x);
	else if (x->common.attr_type == ps_msg_list)
		x->ramper = new rampunit(x->attr_ramp->s_name, param_ramp_callback_list, (void *)x);
	else
		x->ramper = new rampunit(x->attr_ramp->s_name, param_ramp_callback_float, (void *)x);

	if(x->ramper == NULL)
		error("jcom.parameter (%s module): could not allocate memory for ramp unit!", x->common.module_name);
}
