max v2;#N vpatcher 214 68 1190 717;#P origin -6 -452;#P window setfont "Sans Serif" 9.;#P hidden newex 485 345 436 196617 jcom.message direct @type msg_symbol @description "direct commands to the sfplay~ object";#B color 2;#P objectname play[2];#P hidden newex 487 213 87 196617 r $0__xxx_done;#B color 14;#N vpatcher 497 319 1097 719;#P button 85 34 15 0;#P inlet 59 29 15 0;#P outlet 56 179 15 0;#P window setfont "Sans Serif" 9.;#P hidden message 60 91 64 196617 rgb2 66 0 2;#P hidden message 221 89 92 196617 frgb 181 181 181;#P hidden message 138 91 75 196617 brgb 47 46 36;#P newex 83 58 50 196617 deferlow;#P connect 2 0 4 0;#P connect 1 0 4 0;#P connect 3 0 4 0;#P connect 0 0 3 0;#P connect 5 0 0 0;#P connect 6 0 0 0;#P connect 0 0 1 0;#P connect 0 0 2 0;#P pop;#P hidden newobj 358 83 46 196617 p colors;#P hidden newex 439 163 35 196617 * 1.;#P window linecount 2;#P hidden newex 487 170 256 196617 jcom.parameter start @type msg_float @repetitions 0 @description "start time in soundfile to play in [ms]";#B color 2;#P objectname start;#P window linecount 1;#N vpatcher 10 59 610 459;#P window setfont "Sans Serif" 9.;#P message 60 108 52 196617 1 channel;#P newex 57 50 32 196617 sel 1;#P newex 194 101 81 196617 append channels;#P hidden newex 48 171 62 196617 prepend set;#P inlet 57 30 15 0;#P outlet 48 193 15 0;#P connect 3 0 2 0;#P connect 5 0 2 0;#P connect 2 0 0 0;#P connect 1 0 4 0;#P connect 4 0 5 0;#P connect 4 1 3 0;#P pop;#P hidden newobj 126 148 30 196617 p;#P hidden newex 631 475 62 196617 prepend set;#P bpatcher 1 23 161 13 0 0 jcom.textslider.mxt 0 0. @size 160 12 @text ThisSlider;#P hidden newex 539 24 81 196617 pvar countdown;#B color 7;#P window linecount 2;#P hidden newex 624 23 290 196617 jcom.parameter countdown @type msg_toggle @description "changes the time displayed in the module to countdown mode";#B color 2;#P objectname countdown[1];#P window linecount 1;#P comment 156 38 53 196617 countdown;#B frgb 181 181 181;#P user radiogroup 141 36 42 16;#X size 1;#X offset 16;#X inactive 0;#X itemtype 1;#X flagmode 0;#X set 0;#X done;#P objectname countdown;#P window linecount 0;#P message 163 21 58 196617;#P objectname name_symbol[1];#P window linecount 1;#P comment 227 38 32 196617 timer;#B frgb 181 181 181;#P user radiogroup 214 36 42 16;#X size 1;#X offset 16;#X inactive 0;#X itemtype 1;#X flagmode 0;#X set 1;#X done;#P objectname watch_toggle;#P hidden newex 494 145 94 196617 pvar watch_toggle;#B color 7;#P hidden newex 592 145 482 196617 jcom.parameter timer @type msg_int @description "turns on/off the time display in the module";#B color 2;#P objectname timer[1];#P comment 232 22 29 196617 loop;#B frgb 181 181 181;#P window setfont Arial 20.;#P comment 208 61 36 131137556 ms;#B frgb 181 181 181;#P comment 135 61 29 131137556 s;#B frgb 181 181 181;#P comment 76 61 29 131137556 m;#B frgb 181 181 181;#P comment 29 61 17 131137556 h;#B frgb 181 181 181;#P number 161 60 48 20 0 0 8353 2001 181 181 181 221 221 221 222 222 222 0 0 0;#P objectname xfade_threshold[3];#P number 100 60 33 20 0 0 8353 2001 181 181 181 221 221 221 222 222 222 0 0 0;#P objectname xfade_threshold[2];#P number 44 60 31 20 0 0 8353 2001 181 181 181 221 221 221 222 222 222 0 0 0;#P objectname xfade_threshold[1];#P number 6 60 24 20 0 0 8353 2001 181 181 181 221 221 221 222 222 222 0 0 0;#P objectname xfade_threshold;#P window setfont "Sans Serif" 9.;#N vpatcher 261 332 897 675;#P button 67 24 15 0;#P window setfont "Sans Serif" 9.;#P window linecount 0;#P newex 56 68 31 196617 !/ 1.;#P newex 56 44 99 196617 loadmess 3600000.;#P outlet 352 290 15 0;#P outlet 243 287 15 0;#P outlet 131 284 15 0;#P outlet 30 289 15 0;#P newex 259 208 68 196617 expr $f1-$i2;#P newex 352 231 45 196617 * 1000.;#P newex 158 162 68 196617 expr $f1-$i2;#P newex 243 186 33 196617 * 60.;#P newex 46 114 68 196617 expr $f1-$i2;#P newex 131 139 33 196617 * 60.;#P newex 30 91 35 196617 * 1.;#P inlet 30 27 15 0;#P window setfont "Sans Serif" 36.;#P window linecount 1;#P comment 458 261 63 196644 ms;#P comment 309 261 38 196644 s;#P comment 195 261 38 196644 m;#P comment 94 261 28 196644 h;#P connect 4 0 5 0;#P connect 5 0 12 0;#P fasten 5 0 7 0 35 111 51 111;#P connect 17 0 5 1;#P connect 18 0 16 0;#P connect 16 0 17 0;#P fasten 5 0 7 1 35 110 109 110;#P fasten 7 0 6 0 51 135 136 135;#P connect 6 0 13 0;#P fasten 6 0 9 0 136 158 163 158;#P fasten 6 0 9 1 136 158 221 158;#P fasten 9 0 8 0 163 183 248 183;#P connect 8 0 14 0;#P fasten 8 0 11 0 248 206 264 206;#P fasten 8 0 11 1 248 205 322 205;#P fasten 11 0 10 0 264 228 357 228;#P connect 10 0 15 0;#P pop;#P hidden newobj 265 32 59 196617 p h:m:s:ms;#P objectname timer;#P user jsui 91 37 45 19 1 0 0 jcom.jsui_texttoggle.js Pause Resume 68 68 68 225 225 225 121 255 15;#P objectname pause_button;#P hidden newex 529 57 93 196617 pvar pause_button;#B color 7;#P hidden newex 625 57 355 196617 jcom.message pause @type msg_toggle @repetitions 0 @description "Pause";#B color 2;#P objectname play[1];#P hidden newex 275 540 459 196617 jcom.multi.in~;#P hidden newex 46 149 67 196617 prepend text;#P hidden newex 331 46 50 196617 deferlow;#P hidden message 332 66 165 196617 text drag file into the time display;#P hidden newex 331 25 48 196617 loadbang;#P hidden newex 3 203 89 196617 prepend /sf_open;#P hidden newex 408 412 47 196617 pcontrol;#P hidden newex 275 388 143 196617 jcom.algorithm_control~.mxt;#P hidden newex 46 129 333 196617 jcom.oscroute /info/name /info/channels /info/size /info/playername;#P hidden newex 487 401 89 196617 pvar sample_size;#B color 7;#P hidden newex 487 382 382 196617 jcom.message info/size @type msg_int @description "size of the loaded soundfile";#B color 2;#P objectname loop[2];#P user radiogroup 218 20 42 16;#X size 1;#X offset 16;#X inactive 0;#X itemtype 1;#X flagmode 0;#X set 0;#X done;#P objectname Loop_toggle;#P window setfont "Sans Serif" 12.;#P hidden comment 440 102 39 196620 open;#B color 7;#P hidden comment 440 305 39 196620 loop;#B color 7;#P hidden comment 440 248 39 196620 play;#B frgb 181 181 181;#P window setfont "Sans Serif" 9.;#P hidden newex 487 317 85 196617 pvar Loop_toggle;#B color 7;#P hidden newex 487 263 85 196617 pvar Play_button;#B color 7;#P hidden newex 487 242 393 196617 jcom.message play @type msg_toggle @repetitions 0 @description "starts playback";#B color 2;#P objectname play;#P hidden newex 487 296 335 196617 jcom.parameter loop @type msg_toggle @description "Loop soundfile.";#B color 2;#P objectname loop;#P hidden newex 497 90 88 196617 pvar Open_button;#B color 7;#P window linecount 2;#P hidden newex 497 109 394 196617 jcom.message sf_open @type msg_symbol @description "Open sound file specified by filename. Without a filename a standard open file dialog allows you to choose a file.";#B color 2;#P objectname jcom.parameter.mxb[10];#P user jsui 46 37 45 19 1 0 0 jcom.jsui_texttoggle.js Play Stop 68 68 68 225 225 225 121 255 15;#P objectname Play_button;#P user jsui 1 37 45 19 1 0 0 jsui_textbutton.js Open 225 225 225 68 68 68;#P objectname Open_button;#P window linecount 1;#P hidden newex 134 407 47 196617 pcontrol;#P hidden newex 134 387 37 196617 t open;#P hidden newex 134 365 151 196617 jcom.oscroute /open_inspector;#P message 114 207 191 196617 /preset/store 1 default \, /preset/write;#B color 3;#P hidden newex 275 486 351 196617 jcom.out~ 24;#P hidden newex 134 343 49 196617 jcom.in~;#P message 122 229 125 196617 /documentation/generate;#B color 3;#P window linecount 2;#P message 52 302 65 196617 \; max refresh;#P newex 24 266 382 196617 jcom.hub jmod.sur.multi.input~ @size 2U-half @module_type audio.ambisonic @inspector 0 @description "A simple multichannel sampleplayer based on sfplay~";#P objectname jcom.hub;#P window linecount 1;#P comment 38 230 79 196617 command input;#P inlet 24 230 13 0;#P message 253 229 31 196617 /init;#P hidden inlet 134 325 13 0;#P hidden outlet 275 581 13 0;#P hidden newex 275 448 380 196617 jalg.sur.multi.input~.mxt $0_;#P outlet 24 306 13 0;#P hidden comment 299 583 101 196617 ---signal output---;#P user dropfile 4 59 251 116 0;#P bpatcher 0 1 255 118 0 0 jcom.gui.mxt 0 $0_;#P objectname jmod.gui.1Uh.a.stereo.mxt;#P hidden connect 65 0 64 0;#P hidden connect 38 0 64 0;#P hidden connect 40 0 64 0;#P hidden connect 69 0 64 0;#P hidden connect 1 0 36 0;#P lcolor 15;#P hidden connect 45 0 46 0;#P hidden connect 36 0 10 0;#P fasten 15 0 10 0 119 250 29 250;#P connect 8 0 10 0;#P fasten 12 0 10 0 127 250 29 250;#P fasten 7 0 10 0 258 251 29 251;#P connect 10 0 3 0;#P hidden connect 45 1 47 0;#P hidden connect 4 26 33 0;#P hidden connect 33 0 40 0;#P hidden connect 45 2 48 0;#P hidden connect 33 1 66 0;#P hidden connect 6 0 13 0;#P hidden connect 13 0 16 0;#P hidden connect 16 0 17 0;#P hidden connect 17 0 18 0;#P hidden connect 45 3 49 0;#P hidden connect 66 0 59 0;#P hidden connect 4 24 45 0;#P hidden fasten 16 1 34 0 280 385 280 385;#P hidden fasten 35 0 4 0 413 432 280 432;#P hidden fasten 34 0 4 0 280 432 280 432;#P hidden connect 4 0 14 0;#P hidden connect 14 0 41 0;#P hidden connect 41 0 5 0;#P hidden connect 4 1 14 1;#P hidden connect 14 1 41 1;#P hidden connect 4 2 14 2;#P hidden connect 14 2 41 2;#P hidden connect 4 3 14 3;#P hidden connect 14 3 41 3;#P hidden connect 37 0 39 0;#P hidden connect 4 4 14 4;#P hidden connect 14 4 41 4;#P hidden connect 39 0 38 0;#P hidden connect 4 5 14 5;#P hidden connect 14 5 41 5;#P hidden connect 39 0 69 0;#P hidden connect 4 6 14 6;#P hidden connect 14 6 41 6;#P hidden connect 4 7 14 7;#P hidden connect 14 7 41 7;#P hidden connect 4 8 14 8;#P hidden connect 14 8 41 8;#P hidden connect 4 9 14 9;#P hidden connect 14 9 41 9;#P hidden connect 34 1 35 0;#P hidden connect 4 10 14 10;#P hidden connect 14 10 41 10;#P hidden connect 4 11 14 11;#P hidden connect 14 11 41 11;#P hidden connect 64 0 68 0;#P hidden connect 4 12 14 12;#P hidden connect 14 12 41 12;#P hidden connect 4 13 14 13;#P hidden connect 14 13 41 13;#P hidden connect 33 2 68 1;#P hidden connect 4 14 14 14;#P hidden connect 14 14 41 14;#P hidden connect 4 15 14 15;#P hidden connect 14 15 41 15;#P hidden connect 68 0 67 0;#P hidden fasten 25 0 24 0 492 286 482 286 482 239 492 239;#P hidden connect 70 0 24 0;#P hidden connect 24 0 25 0;#P hidden fasten 26 0 23 0 492 338 484 338 484 292 492 292;#P hidden connect 23 0 26 0;#P hidden fasten 32 0 31 0 492 422 480 422 480 377 492 377;#P hidden connect 31 0 32 0;#P hidden connect 55 0 56 0;#P connect 22 0 21 0;#P hidden connect 4 16 14 16;#P hidden connect 14 16 41 16;#P hidden connect 4 17 14 17;#P hidden connect 14 17 41 17;#P hidden connect 4 18 14 18;#P hidden connect 14 18 41 18;#P hidden connect 42 0 43 0;#P hidden connect 62 0 63 0;#P hidden connect 4 19 14 19;#P hidden connect 14 19 41 19;#P hidden connect 4 20 14 20;#P hidden connect 14 20 41 20;#P hidden connect 4 21 14 21;#P hidden connect 14 21 41 21;#P hidden connect 4 22 14 22;#P hidden connect 14 22 41 22;#P hidden connect 56 0 55 0;#P hidden connect 4 23 14 23;#P hidden connect 14 23 41 23;#P hidden connect 63 0 62 0;#P hidden connect 43 0 42 0;#P hidden connect 4 25 65 0;#P pop;