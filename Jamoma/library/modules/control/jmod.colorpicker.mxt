max v2;#N vpatcher 340 132 1165 638;#P origin -7 -40;#P window setfont "Sans Serif" 9.;#P window linecount 2;#P hidden message 170 85 125 196617 /preset/store 1 default \, /preset/write;#P window linecount 1;#P hidden newex 119 177 45 196617 jcom.in;#P user jsui 141 28 73 20 1 0 0 jsui_textbutton.js View;#P user jsui 31 28 73 20 1 0 0 jsui_textbutton.js Set;#P hidden newex 389 143 37 196617 t open;#P hidden newex 119 298 57 196617 unpack s 0;#P hidden newex 166 319 32 196617 sel 1;#N vpatcher 492 125 927 610;#P origin 0 214;#P hidden bpatcher 209 375 193 63 0 0 jcom.color.hsl_picker.mxt 0;#P objectname hsl_colorpicker[11];#P hidden bpatcher 209 308 193 63 0 0 jcom.color.hsl_picker.mxt 0;#P objectname hsl_colorpicker[10];#P hidden bpatcher 209 241 193 63 0 0 jcom.color.hsl_picker.mxt 0;#P objectname hsl_colorpicker[9];#P hidden bpatcher 209 174 193 63 0 0 jcom.color.hsl_picker.mxt 0;#P objectname hsl_colorpicker[8];#P window setfont "Sans Serif" 9.;#P window linecount 0;#N vpatcher 60 360 767 689;#P window setfont "Sans Serif" 9.;#P window linecount 0;#P newex 478 58 51 196617 route set;#P inlet 478 32 15 0;#P window linecount 1;#P newex 478 97 163 196617 jit.fill $0_hsl_colors 0 offset 0 0;#P window linecount 0;#P newex 28 55 49 196617 zl rot -1;#P window linecount 1;#P newex 416 204 27 196617 * 3;#P newex 368 229 58 196617 zl slice;#P newex 368 205 43 196617 jit.spill;#P newex 28 132 115 196617 jit.fill $0_hsl_colors 0;#P message 158 102 61 196617 offset 0 \$1;#P newex 28 79 140 196617 zl slice 3;#P newex 28 162 193 196617 jit.matrix $0_hsl_colors 1 float32 3 12;#P inlet 28 30 15 0;#P inlet 416 33 15 0;#P outlet 368 258 15 0;#P connect 2 0 10 0;#P connect 10 0 4 0;#P fasten 5 0 6 0 163 122 33 122;#P connect 4 0 6 0;#P connect 6 0 3 0;#P connect 4 1 5 0;#P fasten 3 0 7 0 33 192 373 192;#P connect 7 0 8 0;#P connect 8 0 0 0;#P connect 1 0 9 0;#P connect 9 0 8 1;#P connect 12 0 13 0;#P connect 13 0 11 0;#P pop;#P hidden newobj 15 489 101 196617 p collect_as_matrix;#P hidden newex 15 455 157 196617 funnel 12;#P hidden bpatcher 209 107 193 63 0 0 jcom.color.hsl_picker.mxt 0;#P objectname hsl_colorpicker[7];#P hidden bpatcher 209 40 193 63 0 0 jcom.color.hsl_picker.mxt 0;#P objectname hsl_colorpicker[6];#P hidden bpatcher 12 375 193 63 0 0 jcom.color.hsl_picker.mxt 0;#P objectname hsl_colorpicker[5];#P hidden bpatcher 12 308 193 63 0 0 jcom.color.hsl_picker.mxt 0;#P objectname hsl_colorpicker[4];#P hidden bpatcher 12 241 193 63 0 0 jcom.color.hsl_picker.mxt 0;#P objectname hsl_colorpicker[3];#P hidden bpatcher 12 174 193 63 0 0 jcom.color.hsl_picker.mxt 0;#P objectname hsl_colorpicker[2];#P hidden bpatcher 12 107 193 63 0 0 jcom.color.hsl_picker.mxt 0;#P objectname hsl_colorpicker[1];#P bpatcher 12 40 193 63 0 0 jcom.color.hsl_picker.mxt 0;#P objectname hsl_colorpicker[0];#P hidden newex 288 541 106 196617 bgcolor 191 191 191;#N thispatcher;#Q end;#P hidden newobj 288 518 61 196617 thispatcher;#P hidden newex 288 499 40 196617 t front;#P hidden inlet 288 480 15 0;#N vpatcher 30 89 608 454;#P window setfont "Sans Serif" 9.;#P window linecount 0;#P newex 336 148 40 196617 change;#P newex 12 77 27 196617 t l l;#P newex 336 212 183 196617 pattrforward parent::NumberOfColors;#P newex 336 171 27 196617 / 3;#P window linecount 1;#P newex 12 276 62 196617 prepend set;#P newex 12 251 79 196617 zl slice 3;#P newex 12 50 51 196617 route set;#P newex 81 276 199 196617 sprintf send parent::hsl_colorpicker[%ld];#P newex 12 314 70 196617 pattrforward;#P newex 336 127 34 196617 zl len;#P newex 12 229 97 196617 zl join;#P newex 12 177 27 196617 t l b;#N counter 0 11;#X flags 0 0;#P newobj 99 206 68 196617 counter 0 11;#P newex 12 128 78 196617 t l 0;#P newex 12 153 55 196617 zl group 3;#P inlet 12 28 15 0;#P connect 0 0 9 0;#P connect 9 0 14 0;#P connect 14 0 2 0;#P connect 2 0 1 0;#P connect 1 0 4 0;#P connect 4 0 5 0;#P connect 5 0 10 0;#P connect 10 0 11 0;#P connect 11 0 7 0;#P fasten 8 0 7 0 86 303 17 303;#P connect 10 1 8 0;#P fasten 4 1 3 0 34 196 104 196;#P connect 3 0 5 1;#P fasten 2 1 3 2 85 150 132 150;#P fasten 14 1 6 0 34 106 341 106;#P connect 6 0 15 0;#P connect 15 0 12 0;#P connect 12 0 13 0;#P pop;#P hidden newobj 15 555 80 196617 p set_swatches;#P window linecount 2;#P hidden newex 15 512 235 196617 jcom.parameter colors @type msg_list @description "List of 1 to 12 HSL triplets.";#P objectname colors;#P window linecount 1;#N vpatcher 30 89 630 489;#P window setfont "Sans Serif" 9.;#P newex 110 50 27 196617 t b i;#P newex 79 182 95 196617 sel 1 0;#P newex 80 160 27 196617 <;#P newex 80 129 27 196617 t i i;#P newex 121 207 35 196617 t hide;#P newex 79 207 40 196617 t show;#P newex 79 263 186 196617 sprintf script %s hsl_colorpicker[%ld];#P newex 80 107 27 196617 - 1;#P newex 50 85 40 196617 uzi 12;#P inlet 110 30 15 0;#P outlet 79 332 15 0;#P connect 10 0 2 0;#P connect 8 0 9 0;#P connect 9 0 5 0;#P connect 6 0 4 0;#P connect 5 0 4 0;#P connect 4 0 0 0;#P connect 2 2 3 0;#P connect 3 0 7 0;#P connect 7 0 8 0;#P connect 10 1 8 1;#P connect 1 0 10 0;#P connect 9 1 6 0;#P fasten 7 1 4 1 102 152 260 152;#P pop;#P hidden newobj 463 91 67 196617 p show&hide;#P hidden newex 409 50 40 196617 change;#P number 117 17 35 9 1 12 3 3 0 0 0 221 221 221 222 222 222 0 0 0;#P objectname NumberOfColors;#N thispatcher;#Q end;#P hidden newobj 463 112 61 196617 thispatcher;#P comment 9 16 100 196617 Number of colors:;#P hidden connect 11 0 19 0;#P hidden connect 19 0 20 0;#P hidden connect 20 0 5 0;#P hidden connect 5 0 6 0;#P hidden connect 12 0 19 1;#P hidden connect 13 0 19 2;#P hidden connect 14 0 19 3;#P hidden fasten 3 0 20 1 414 475 65 475;#P hidden connect 15 0 19 4;#P hidden connect 16 0 19 5;#P hidden connect 17 0 19 6;#P hidden fasten 5 0 20 2 20 548 258 548 258 486 110 486;#P hidden connect 18 0 19 7;#P hidden connect 21 0 19 8;#P hidden connect 22 0 19 9;#P hidden connect 23 0 19 10;#P hidden connect 24 0 19 11;#P hidden connect 7 0 8 0;#P hidden connect 8 0 9 0;#P hidden fasten 2 0 3 0 122 35 414 35;#P hidden connect 3 0 4 0;#P hidden connect 4 0 1 0;#P pop;#P hidden newobj 166 342 96 196617 p "color inspector";#P objectname "sub patch";#P hidden newex 191 224 45 196617 pcontrol;#P hidden newex 119 197 155 196617 jcom.pass /open_inspector open;#P hidden message 38 89 125 196617 /documentation/generate;#P window linecount 2;#P hidden message 16 406 65 196617 \; max refresh;#P hidden message 16 369 75 196617 \; jcom.init bang;#P window linecount 1;#N vpatcher 61 81 345 441;#P origin 0 -40;#P window setfont "Sans Serif" 9.;#P hidden newex 36 310 88 196617 bgcolor 64 64 64;#N vpatcher 50 119 722 644;#P window setfont "Sans Serif" 9.;#P window linecount 0;#P newex 97 186 60 196617 jcom.round;#P newex 97 163 100 196617 pack 0. 0. 0.;#P newex 97 120 60 196617 jcom.round;#P newex 97 141 146 196617 tap.colorspace @mode hsl2rgb;#P newex 26 369 44 196617 qlim 40;#P window linecount 1;#P newex 551 248 21 196617 t 0;#P window linecount 0;#P newex 469 261 31 196617 t 1 b;#P newex 26 346 29 196617 gate;#P newex 45 325 20 196617 t b;#P window linecount 1;#P newex 469 236 32 196617 sel 1;#P newex 97 77 240 196617 t l 0 l;#P message 97 279 147 196617 setcell 0 \$4 val 255 \$1 \$2 \$3;#P newex 97 257 97 196617 zl join;#P newex 97 212 27 196617 t l b;#N counter 0 11;#X flags 0 0;#P newobj 184 234 68 196617 counter 0 11;#P newex 97 100 55 196617 zl group 3;#P newex 327 238 40 196617 change;#P message 327 260 50 196617 dim 1 \$1;#P newex 327 217 27 196617 / 3;#P newex 327 108 34 196617 zl len;#P newex 97 404 111 196617 jit.matrix 4 char 1 12;#P newex 97 56 111 196617 jcom.oscroute /colors;#P inlet 551 36 15 0;#P inlet 469 36 15 0;#P inlet 97 36 15 0;#P outlet 97 426 15 0;#P fasten 20 0 18 0 556 321 31 321;#P fasten 19 0 18 0 474 318 31 318;#P connect 18 0 21 0;#P connect 12 0 17 0;#P connect 17 0 18 1;#P connect 1 0 4 0;#P connect 4 0 15 0;#P connect 15 0 10 0;#P connect 10 0 23 0;#P connect 23 0 22 0;#P connect 22 0 24 0;#P connect 24 0 25 0;#P connect 25 0 12 0;#P connect 12 0 13 0;#P connect 13 0 14 0;#P connect 21 0 5 0;#P fasten 19 1 5 0 495 396 102 396;#P fasten 8 0 5 0 332 298 102 298;#P connect 14 0 5 0;#P connect 5 0 0 0;#P connect 22 1 24 1;#P fasten 12 1 11 0 119 231 189 231;#P connect 11 0 13 1;#P connect 22 2 24 2;#P connect 15 1 11 2;#P connect 15 2 6 0;#P connect 6 0 7 0;#P connect 7 0 9 0;#P connect 9 0 8 0;#P connect 2 0 16 0;#P connect 16 0 19 0;#P connect 3 0 20 0;#P pop;#P hidden newobj 33 21 90 196617 p display_colors;#P window linecount 1;#P hidden newex 113 0 53 196617 closebang;#P user jit.pwindow 32 42 202 258 0 0 0 0 1 0;#P window linecount 0;#P hidden newex 73 0 38 196617 active;#P hidden inlet 33 0 15 0;#P hidden connect 0 0 4 0;#P hidden connect 4 0 2 0;#P hidden connect 1 0 4 1;#P hidden connect 3 0 4 2;#P pop;#P hidden newobj 191 272 107 196617 p colorpicker_display;#P window linecount 4;#P hidden newex 16 114 210 196617 jcom.hub jmod.colorpicker @inspector 1 @size 1U-half @module_type control @description "Utility for setting 1 to 12 colors.";#P objectname jcom.hub;#P hidden inlet 16 90 13 0;#P hidden outlet 16 316 13 0;#P bpatcher 0 0 256 62 0 0 jcom.gui.mxt 0 $0_;#P objectname jcom.gui.1Uh.a.stereo;#P hidden fasten 7 0 3 0 43 108 21 108;#P hidden connect 2 0 3 0;#P hidden fasten 17 0 3 0 175 113 21 113;#P hidden connect 3 0 1 0;#P connect 16 0 8 0;#P hidden connect 8 0 12 0;#P hidden connect 12 1 11 0;#P hidden fasten 14 0 10 0 36 80 371 80 371 339 171 339;#P hidden connect 11 0 10 0;#P hidden fasten 13 0 9 0 394 218 196 218;#P hidden connect 8 1 9 0;#P hidden fasten 8 2 4 0 268 266 196 266;#P hidden connect 9 0 4 0;#P hidden fasten 15 0 13 0 146 66 394 66;#P pop;