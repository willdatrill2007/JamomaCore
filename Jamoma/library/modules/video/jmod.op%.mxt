max v2;
#N vpatcher 128 183 1114 538;
#P window setfont "Sans Serif" 9.;
#P hidden newex 237 312 49 196617 jcom.out;
#P hidden newex 297 196 78 196617 jcom.in 2;
#P hidden inlet 297 174 13 0;
#P hidden comment 297 158 98 196617 -- VIDEO INPUTS --;
#P hidden inlet 366 175 15 0;
#P hidden newex 497 167 69 196617 pvar OpValue;
#P window linecount 2;
#P hidden newex 497 192 312 196617 jcom.parameter op_value @type msg_float @ramp 1 @repetitions 0 @description "Number to associate with operation.";
#P objectname op_value;
#P flonum 136 29 35 9 0 0 8224 3 181 181 181 221 221 221 255 255 255 0 0 0;
#P objectname OpValue;
#P window linecount 1;
#P hidden newex 496 79 77 196617 pvar OpMenu 3;
#P hidden newex 169 249 47 196617 pcontrol;
#P hidden newex 169 226 78 196617 jcom.pass open;
#P hidden message 106 87 125 196617 /documentation/generate;
#B color 3;
#P window linecount 3;
#P hidden newex 0 109 347 196617 jcom.hub jmod.op% @size 1U-half $1 @module_type video @algorithm_type jitter @description "Perform mathematical operations using two video inputs as the operands";
#P objectname jcom.hub;
#P user ubumenu 64 29 60 196617 0 1 1 0;
#X add pass;
#X add *;
#X add /;
#X add +;
#X add -;
#X add +m;
#X add -m;
#X add %;
#X add min;
#X add max;
#X add abs;
#X add avg;
#X add absdiff;
#X add !pass;
#X add !/;
#X add !-;
#X add !%;
#X add &;
#X add |;
#X add ^;
#X add ~;
#X add >>;
#X add <<;
#X add &&;
#X add ||;
#X add !;
#X add >;
#X add <;
#X add >=;
#X add <=;
#X add ==;
#X add !=;
#X add >p;
#X add <p;
#X add >=p;
#X add <=p;
#X add ==p;
#X add !=p;
#X add sin;
#X add cos;
#X add tan;
#X add asin;
#X add acos;
#X add atan;
#X add atan2;
#X add sinh;
#X add cosh;
#X add tanh;
#X add asinh;
#X add acosh;
#X add atanh;
#X add exp;
#X add exp2;
#X add ln;
#X add log2;
#X add log10;
#X add hypot;
#X add pow;
#X add sqrt;
#X add ceil;
#X add floor;
#X add round;
#X add trunc;
#X add ignore;
#X prefix_set 0 0 <none> 0;
#X pattrmode 1;
#P objectname OpMenu;
#P window linecount 1;
#P comment 41 31 45 196617 op;
#B frgb 149 149 149;
#P window linecount 3;
#P hidden newex 496 102 257 196617 jcom.parameter op @type msg_menu @description "Chooses the type of operation to perform on the two video inputs to the module.";
#P objectname op;
#P window linecount 1;
#P hidden comment 252 334 75 196617 VIDEO OUTPUT;
#P hidden outlet 237 334 13 0;
#P hidden newex 237 291 131 196617 jalg.op%.mxt;
#P window linecount 2;
#P hidden message 27 185 72 196617 \; jcom.init bang;
#B color 3;
#P window linecount 1;
#P hidden comment 14 84 79 196617 command input;
#P hidden outlet 0 171 13 0;
#P hidden inlet 0 84 13 0;
#P bpatcher 0 0 256 60 0 0 jcom.gui.mxt 0;
#P objectname jcom.gui.1Uh.v.mxb;
#P hidden fasten 12 0 11 0 111 105 5 105;
#P hidden connect 1 0 11 0;
#P hidden connect 11 0 2 0;
#P hidden fasten 22 2 13 0 346 219 174 219;
#P hidden connect 13 0 14 0;
#P hidden fasten 14 0 5 0 174 275 242 275;
#P hidden connect 13 1 5 0;
#P hidden connect 5 0 23 0;
#P hidden connect 23 0 6 0;
#P hidden connect 21 0 22 0;
#P hidden connect 22 0 5 1;
#P hidden fasten 22 1 5 2 324 252 362 252;
#P hidden connect 19 0 22 1;
#P hidden fasten 8 0 15 0 501 149 488 149 488 74 501 74;
#P hidden fasten 15 1 8 0 534 99 501 99;
#P hidden fasten 17 0 18 0 535 158 502 158;
#P hidden connect 18 0 17 0;
#P pop;
