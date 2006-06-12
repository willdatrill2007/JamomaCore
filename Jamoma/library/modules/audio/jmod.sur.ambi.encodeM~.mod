max v2;#N vpatcher 109 189 988 687;#P window setfont "Sans Serif" 9.;#P window linecount 3;#P hidden newex 462 264 381 196617 jmod.parameter.mxt $0_ /center_radius @repetitions 0 @type msg_float @range 0.01 5. @clipmode low @description "The radius (in meters) of the center circle where spatial information collapse to an omni signal as distance approaches zero.";#P objectname jmod.parameter.mxt[3];#P window linecount 1;#P hidden newex 462 244 93 196617 pvar CenterRadius;#P flonum 194 38 40 9 0. 60. 8227 3 198 198 198 221 221 221 222 222 222 0 0 0;#P objectname CenterRadius;#P comment 123 40 70 196617 center radius;#B frgb 172 172 172;#P hidden inlet 407 322 15 0;#P hidden newex 302 391 126 196617 jmod.sur.ambi.getW~.mxt;#P hidden newex 462 340 213 196617 jmod.message.mxt $0_ /aed @type msg_list;#P hidden newex 462 171 73 196617 pvar DB_UNIT;#P window linecount 2;#P hidden newex 462 191 337 196617 jmod.parameter.mxt $0_ /db_drop_off @repetitions 0 @type msg_float @range 0 60 @clipmode both @description "db drop off per meter.";#P objectname jmod.parameter.mxt[2];#P window linecount 1;#P hidden newex 462 103 60 196617 pvar Order;#P window linecount 2;#P hidden newex 462 123 298 196617 jmod.parameter.mxt $0_ /order @repetitions 0 @type msg_int @range 1 16 @clipmode both @description "Order of encoding.";#P objectname jmod.parameter.mxt[1];#P window linecount 1;#P hidden newex 152 215 78 196617 jmod.pass open;#P hidden newex 152 237 47 196617 pcontrol;#P hidden message 220 300 20 196617 \$2;#P hidden newex 220 277 59 196617 route mute;#P hidden newex 220 320 38 196617 mute~;#N comlet W - omni;#P hidden outlet 280 403 13 0;#P hidden newex 280 362 137 196617 jmod.sur.ambi.encodeM~.alg;#P number 49 38 35 9 1 3 8227 3 198 198 198 221 221 221 222 222 222 0 0 0;#P objectname Order;#P comment 4 39 44 196617 Order;#B frgb 172 172 172;#P flonum 194 20 40 9 0. 60. 8227 3 198 198 198 221 221 221 222 222 222 0 0 0;#P objectname DB_UNIT;#P comment 123 21 59 196617 db drop off;#B frgb 172 172 172;#P hidden message 36 123 50 196617 /autodoc;#P window linecount 2;#P hidden message 14 440 65 196617 \; max refresh;#P hidden message 14 403 75 196617 \; jmod.init bang;#P window linecount 1;#P comment 4 20 44 196617 Voices;#B frgb 172 172 172;#P number 49 19 35 9 1 16 8227 3 198 198 198 221 221 221 222 222 222 0 0 0;#P objectname Voices;#P hidden newex 462 36 63 196617 pvar Voices;#P window linecount 3;#P hidden newex 14 148 286 196617 jmod.hub $0_ jmod.sur.ambi.encodeM~ @size 1U-half @module_type audio.ambisonic @num_inputs 1 @num_outputs 1 @description "Ambisonic encoding of mono signals.";#P objectname jmod.hub;#P hidden inlet 14 124 13 0;#P hidden outlet 14 350 13 0;#P window linecount 2;#P hidden newex 462 56 338 196617 jmod.parameter.mxt $0_ /voices @repetitions 0 @type msg_int @range 1 16 @clipmode both @description "Number of mono sources to encode.";#P objectname jmod.parameter.mxt;#P window linecount 3;#P hidden newex 307 148 79 196617 pattrstorage @autorestore 0 @savemode 0;#X client_rect 14 59 768 566;#X storage_rect 0 0 640 240;#P objectname jmod.sur.ambi.encodeM~;#P bpatcher 0 0 255 60 0 0 jmod.gui.mxt 0 $0_;#P objectname jmod.gui.1Uh.a.stereo.mxt;#P hidden fasten 28 0 0 0 307 417 850 417 850 -9 5 -9;#P hidden connect 4 0 5 0;#P hidden fasten 11 0 5 0 41 142 19 142;#P hidden connect 5 0 3 0;#P hidden connect 5 1 22 0;#P hidden connect 22 0 21 0;#P hidden connect 22 1 19 0;#P hidden connect 19 0 20 0;#P hidden connect 20 0 18 0;#P hidden connect 19 1 16 0;#P hidden fasten 21 0 16 0 157 259 285 259;#P hidden connect 18 0 16 0;#P hidden connect 16 0 17 0;#P hidden connect 1 0 5 1;#P hidden connect 16 0 28 0;#P hidden connect 5 2 1 0;#P hidden connect 29 0 16 1;#P hidden fasten 2 0 6 0 467 89 455 89 455 31 467 31;#P hidden connect 6 0 2 0;#P hidden fasten 23 0 24 0 467 156 455 156 455 98 467 98;#P hidden connect 24 0 23 0;#P hidden fasten 25 0 26 0 467 226 455 226 455 166 467 166;#P hidden connect 26 0 25 0;#P hidden fasten 33 0 32 0 467 310 455 310 455 239 467 239;#P hidden connect 32 0 33 0;#P pop;