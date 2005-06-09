max v2;
#N vpatcher 82 63 803 699;
#P window setfont "Sans Serif" 9.;
#P window linecount 1;
#N vpatcher 38 53 931 623;
#P origin 0 5;
#P window setfont "Sans Serif" 9.;
#P window linecount 1;
#P newex 627 125 79 196617 t b 3 s message;
#N coll $0_dec 1;
#T flags 1 0;
#T store repetitions repetitions 1;
#T store ramp ramp 0;
#T store clipmode clipmode none;
#T store range range N/A;
#T store type type generic;
#T store description description Increase gain MIDI value by one;
#P newobj 448 402 71 196617 coll $0_dec 1;
#P newex 104 174 271 196617 sprintf store description description Set %s as MIDI value;
#P newex 68 229 315 196617 sprintf store description description Decrease %s MIDI value by one;
#P newex 85 202 313 196617 sprintf store description description Increase %s MIDI value by one;
#P window linecount 0;
#P newex 53 113 50 196617 tosymbol;
#P newex 53 256 262 196617 sprintf store description description Set %s as dB value;
#P newex 420 281 53 196617 gate 4;
#P window linecount 1;
#P newex 545 125 79 196617 t b 2 s message;
#P newex 804 218 65 196617 prepend kind;
#P window linecount 0;
#N coll $0_inc 1;
#T flags 1 0;
#T store repetitions repetitions 1;
#T store ramp ramp 0;
#T store clipmode clipmode none;
#T store range range N/A;
#T store type type generic;
#T store description description Decrease gain MIDI value by one;
#P newobj 434 440 69 196617 coll $0_inc 1;
#P window linecount 1;
#N coll $0_midi 1;
#T flags 1 0;
#T store repetitions repetitions 1;
#T store ramp ramp 1;
#T store clipmode clipmode low;
#T store range range 0 127;
#T store type type msg_float;
#T store description description Set gain as MIDI value;
#P newobj 462 365 75 196617 coll $0_midi 1;
#P window linecount 0;
#N coll $0_dB 1;
#T flags 1 0;
#T store repetitions repetitions 1;
#T store ramp ramp 1;
#T store clipmode clipmode none;
#T store range range -144 0;
#T store type type msg_float;
#T store description description Set gain as dB value;
#P newobj 420 477 65 196617 coll $0_dB 1;
#P window linecount 1;
#P newex 719 218 70 196617 prepend name;
#P newex 463 125 79 196617 t b 1 s message;
#P window linecount 0;
#P newex 709 125 88 196617 t b 4 s parameter;
#P window linecount 1;
#P newex 463 85 338 196617 jmod.pass $2 $2_inc $2_dec $2_midi;
#P window linecount 0;
#P newex 463 258 79 196617 prepend symbol;
#P newex 463 218 235 196617 t description repetitions ramp clipmode range type;
#P window linecount 1;
#P newex 558 515 109 196617 send $1_register_doc;
#P newex 463 61 112 196617 receive $1_query_doc;
#P window linecount 0;
#P newex 53 84 85 196617 route description;
#P inlet 53 52 15 0;
#P connect 0 0 1 0;
#P connect 1 0 17 0;
#P connect 17 0 16 0;
#P connect 17 0 19 0;
#P connect 17 0 18 0;
#P connect 17 0 20 0;
#P fasten 8 1 15 0 491 181 425 181;
#P lcolor 14;
#P fasten 14 1 15 0 573 181 425 181;
#P lcolor 14;
#P fasten 7 1 15 0 740 181 425 181;
#P lcolor 14;
#P fasten 22 1 15 0 655 181 425 181;
#P lcolor 14;
#P connect 15 0 10 0;
#P connect 16 0 10 0;
#P lcolor 1;
#P connect 19 0 12 0;
#P lcolor 1;
#P connect 15 1 12 0;
#P connect 18 0 21 0;
#P lcolor 1;
#P connect 15 2 21 0;
#P connect 15 3 11 0;
#P connect 20 0 11 0;
#P lcolor 1;
#P connect 2 0 6 0;
#P connect 6 0 8 0;
#P fasten 22 0 4 0 632 192 468 192;
#P lcolor 13;
#P fasten 7 0 4 0 714 192 468 192;
#P lcolor 13;
#P fasten 14 0 4 0 550 192 468 192;
#P lcolor 13;
#P connect 8 0 4 0;
#P lcolor 13;
#P fasten 4 5 5 0 693 248 468 248;
#P fasten 4 4 5 0 648 248 468 248;
#P fasten 4 3 5 0 603 248 468 248;
#P fasten 4 2 5 0 558 248 468 248;
#P fasten 4 1 5 0 513 248 468 248;
#P fasten 4 0 5 0 468 248 468 248;
#P connect 5 0 15 1;
#P connect 6 1 14 0;
#P fasten 10 0 3 0 425 499 563 499;
#P fasten 21 0 3 0 453 423 563 423;
#P fasten 9 0 3 0 724 272 563 272;
#P fasten 12 0 3 0 439 462 563 462;
#P fasten 11 0 3 0 467 386 563 386;
#P fasten 13 0 3 0 809 272 563 272;
#P connect 6 2 22 0;
#P connect 6 3 7 0;
#P fasten 22 2 9 0 678 169 724 169;
#P lcolor 8;
#P fasten 7 2 9 0 766 169 724 169;
#P lcolor 8;
#P fasten 8 2 9 0 514 169 724 169;
#P lcolor 8;
#P fasten 14 2 9 0 596 169 724 169;
#P lcolor 8;
#P fasten 22 3 13 0 701 156 809 156;
#P lcolor 2;
#P fasten 7 3 13 0 792 156 809 156;
#P lcolor 2;
#P fasten 8 3 13 0 537 156 809 156;
#P lcolor 2;
#P fasten 14 3 13 0 619 156 809 156;
#P lcolor 2;
#P pop;
#P newobj 576 576 81 196617 p documentation;
#P newex 441 545 145 196617 patcherargs @description gain;
#P window linecount 4;
#P comment 50 168 395 196617 For this component to work properly \, you have to avoid output from being fed back to the inlet \, else the output will kill any ongoing ramp. If jmod.parameter.gain outlet/inlet is connected to a GUI inlet/outlet \, use the "set" mesage for updating GUI display when jmod.parameter.gain value change.;
#P window linecount 1;
#P comment 50 153 395 196617 IMPORTANT:;
#P newex 441 477 137 196617 send $1_register;
#P message 441 459 145 196617 $2 \, $2_midi \, $2_inc \, $2_dec;
#P newex 441 439 140 196617 receive $1_query;
#P newex 66 542 59 196617 jmod.round;
#P comment 83 239 100 196617 Connect to GUI outlet;
#P comment 82 567 208 196617 Prepend "set" and connect to GUI inlet;
#P comment 50 81 311 196617 - $2_dec: decrease MIDI gain value by one;
#P comment 50 68 311 196617 - $2_inc: increase MIDI gain value by one;
#P comment 50 55 311 196617 - $2_midi: gain as MIDI values;
#N comlet Prepend "set" and connect to GUI inlet;
#P outlet 66 566 15 0;
#N comlet Connect to GUI outlet;
#P inlet 66 238 15 0;
#P newex 133 486 103 196617 loadmess -2000000.;
#P newex 66 486 64 196617 jmod.change;
#P newex 66 509 145 196617 pattr $2_midi @autorestore 0;
#X prestore 1 0 0;
#P objectname $2_midi;
#P newex 66 461 71 196617 jmod.line.mxt;
#P newex 139 264 139 196617 receive $1_instruction;
#P newex 139 378 73 196617 pack 0. 0.;
#P newex 215 333 21 196617 t 0;
#P newex 139 333 73 196617 unpack 0. 0;
#N vpatcher 10 59 410 359;
#P window setfont "Sans Serif" 9.;
#P newex 144 85 64 196617 expr ($f1 * (10./6.)) + 127;
#B color 3;
#P comment 212 91 80 196617 decibels to midi conversion;
#P outlet 144 145 15 0;
#P inlet 144 36 15 0;
#P connect 0 0 3 0;
#P connect 3 0 1 0;
#P pop;
#P newobj 139 356 65 196617 p db_to_midi;
#P newex 361 382 27 196617 +;
#P newex 472 319 26 196617 t -1;
#P newex 361 319 21 196617 t 1;
#P newex 139 287 455 196617 route $2 $2_midi $2_inc $2_dec;
#P comment 50 27 311 196617 Component for dealing with gain parameters. Incorporates;
#P comment 50 42 311 196617 - $2: gain as dB values;
#P window linecount 3;
#P comment 50 108 395 196617 jmod.parameter.gain is special in the sense that gain levels can be adjusted using various messages \, or by a GUI. All kinds of messages are mapped to MIDI values internally \, so that they can all be dealt with by the same "jmod.line.mxt".;
#P window linecount 2;
#P comment 441 502 146 196617 Required for registering the messages as valid syntax.;
#P connect 17 0 13 0;
#P fasten 7 0 13 0 366 408 71 408;
#P fasten 4 1 13 0 255 405 71 405;
#P fasten 11 0 13 0 144 402 71 402;
#P connect 13 0 15 0;
#P connect 15 0 14 0;
#P connect 14 0 24 0;
#P connect 24 0 18 0;
#P connect 16 0 15 1;
#P fasten 14 0 13 1 71 533 250 533 250 456 132 456;
#P connect 12 0 4 0;
#P connect 4 0 9 0;
#P connect 9 0 8 0;
#P connect 8 0 11 0;
#P connect 10 0 11 1;
#P connect 9 1 11 1;
#P connect 4 0 10 0;
#P connect 4 2 5 0;
#P connect 5 0 7 0;
#P fasten 6 0 7 0 477 350 366 350;
#P fasten 14 0 7 1 71 536 396 536 396 375 383 375;
#P connect 25 0 26 0;
#P connect 26 0 27 0;
#P connect 4 3 6 0;
#P connect 30 1 31 0;
#P pop;
