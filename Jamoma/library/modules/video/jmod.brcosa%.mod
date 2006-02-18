max v2;
#N vpatcher 222 141 745 735;
#P origin 0 -1003;
#P window setfont "Sans Serif" 9.;
#P window linecount 1;
#P hidden newex 180 171 47 196617 pcontrol;
#P hidden newex 180 148 78 196617 jmod.pass open;
#P hidden newex 177 242 62 196617 prepend set;
#P hidden newex 39 224 62 196617 prepend set;
#P window linecount 2;
#P hidden message 319 357 66 196617 \; max refresh;
#B color 3;
#P window linecount 1;
#P hidden newex 317 288 50 196617 deferlow;
#P objectname u370000900[1];
#P hidden newex 317 266 48 196617 loadbang;
#P objectname u370000900;
#P hidden newex 18 490 90 196617 pvar monochrome;
#P window linecount 2;
#P hidden newex 18 512 228 196617 jmod.parameter $0_ monochrome @type toggle @description "Monochrome image - 0 is default";
#P objectname jmod.parameter.mxt[3];
#P window linecount 1;
#P comment 98 42 66 196617 monochrome;
#P user radiogroup 160 40 18 16;
#X size 1;
#X offset 16;
#X inactive 0;
#X itemtype 1;
#X flagmode 0;
#X set 0;
#X done;
#P objectname monochrome;
#P hidden newex 17 410 80 196617 pvar saturation;
#P window linecount 2;
#P hidden newex 17 432 232 196617 jmod.parameter $0_ saturation @type msg_float @description "Saturation of image - 1 is default";
#P objectname jmod.parameter.mxt[2];
#P flonum 56 41 35 9 0 0 8224 3 0 0 0 221 221 221 222 222 222 0 0 0;
#P objectname saturation;
#P flonum 143 22 35 9 0 0 8224 3 0 0 0 221 221 221 222 222 222 0 0 0;
#P objectname contrast;
#P flonum 56 22 35 9 0. 0 8225 3 0 0 0 221 221 221 222 222 222 0 0 0;
#P objectname brightness;
#P window linecount 1;
#P comment 5 42 56 196617 saturation;
#P comment 98 24 48 196617 contrast;
#P comment 4 24 57 196617 brightness;
#P hidden newex 16 328 72 196617 pvar contrast;
#P hidden message 99 86 43 196617 autodoc;
#B color 3;
#P window linecount 2;
#P hidden newex 16 350 224 196617 jmod.parameter $0_ contrast @type msg_float @description "Contrast of image - 1 is default";
#P objectname jmod.parameter.mxt[1];
#P hidden newex 16 270 233 196617 jmod.parameter $0_ brightness @type msg_float @description "Brightness of image - 1 is default";
#P objectname jmod.parameter.mxt;
#P window linecount 1;
#P hidden newex 16 250 81 196617 pvar brightness;
#P window linecount 3;
#P hidden newex 396 106 79 196617 pattrstorage @autorestore 0 @savemode 0;
#X client_rect 0 0 640 240;
#X storage_rect 0 0 640 240;
#P objectname jmod.brcosa%;
#P window linecount 1;
#P hidden comment 195 226 75 196617 VIDEO OUTPUT;
#P hidden outlet 260 241 13 0;
#P hidden inlet 260 178 13 0;
#P hidden comment 275 178 65 196617 VIDEO INPUT;
#P hidden newex 180 200 90 196617 jmod.brcosa%.alg;
#P window linecount 2;
#P hidden message 317 311 72 196617 \; jmod.init bang;
#B color 3;
#P window linecount 1;
#P hidden comment 15 84 79 196617 command input;
#P window linecount 2;
#P hidden newex 1 109 369 196617 jmod.hub $0_ jmod.brcosa% @size 1U-half @module_type video @library_type jitter @num_inputs 1 @num_outputs 1 @description "Simple image controls";
#P objectname jmod.hub;
#P hidden outlet 1 171 13 0;
#P hidden inlet 1 84 13 0;
#P bpatcher 0 0 256 60 0 0 jmod.gui.mxt 0 $0_;
#P objectname jmod.gui;
#P window linecount 4;
#P hidden user com 304 495 182 196617 47;
#K set 0 16748 25976 24942 25701 29216 21093 26227 30061 8266 25966 29541 28265 30067 8205 21870 26998 25970 29545 29817 8303 26144 20339 27759 3432 29812 28730 12079 28021 29545 25441 27751 25971 29813 29285 29486 30057 28462 28271 3432 29812 28730 12079 30583 30510 24946 27182 28271;
#K end;
#P hidden fasten 7 2 1 0 265 231 480 231 480 -4 5 -4;
#P hidden connect 2 0 4 0;
#P hidden fasten 16 0 4 0 104 105 6 105;
#P hidden connect 4 0 3 0;
#P hidden fasten 14 0 13 0 21 304 11 304 11 241 21 241;
#P hidden connect 33 0 13 0;
#P hidden connect 13 0 14 0;
#P hidden fasten 15 0 17 0 21 388 10 388 10 318 21 318;
#P hidden connect 34 0 17 0;
#P hidden connect 17 0 15 0;
#P hidden fasten 24 0 25 0 22 467 11 467 11 401 22 401;
#P hidden connect 25 0 24 0;
#P hidden fasten 28 0 29 0 23 547 12 547 12 481 23 481;
#P hidden connect 29 0 28 0;
#P hidden connect 7 0 33 0;
#P hidden connect 7 1 34 0;
#P hidden connect 4 1 35 0;
#P hidden connect 35 0 36 0;
#P hidden connect 36 0 7 0;
#P hidden connect 35 1 7 0;
#P hidden connect 9 0 7 1;
#P hidden connect 7 2 10 0;
#P hidden connect 30 0 31 0;
#P hidden connect 31 0 6 0;
#P hidden connect 12 0 4 1;
#P hidden connect 4 2 12 0;
#P pop;
