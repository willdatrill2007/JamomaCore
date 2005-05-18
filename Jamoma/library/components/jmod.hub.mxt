max v2;
#N vpatcher 10 44 1024 740;
#P origin 116 0;
#P window setfont "Sans Serif" 9.;
#P message 232 608 130 196617 \; max htmlref $2;
#P newex 9 649 123 196617 prepend parameter_name;
#P newex 9 609 39 196617 t dump;
#N coll $1_registered_parameters 1;
#P newobj 9 629 161 196617 coll $1_registered_parameters 1;
#P newex 9 589 213 196617 jmod.message.mxt $1 get_parameter_names;
#P newex 563 651 109 196617 prepend PARAMETERS;
#P newex 1002 574 42 196617 t BUILD;
#P newex 999 553 45 196617 sel done;
#P newex 1046 575 104 196617 prepend ATTRIBUTES;
#P newex 863 116 50 196617 tosymbol;
#P newex 190 452 51 196617 route list;
#P newex 862 380 100 196617 sprintf read %s.xml;
#P message 966 599 92 196617 MODULE_TITLE $2;
#P newex 822 657 114 196617 prepend MODULE_TITLE;
#P newex 966 626 93 196617 s $1_FROM_MHUB;
#P newex 855 508 45 196617 sel bang;
#P newex 838 441 45 196617 sel bang;
#N vpatcher 484 194 890 610;
#P origin 0 -110;
#P window setfont "Sans Serif" 9.;
#P newex 107 229 50 196617 tosymbol;
#P newex 232 230 50 196617 tosymbol;
#P inlet 147 34 15 0;
#P inlet 130 34 15 0;
#P outlet 264 139 15 0;
#P newex 177 95 192 196617 jmod.route @searchstring save_settings;
#P newex 232 273 27 196617 t l b;
#P message 249 308 42 196617 store 1;
#P newex 177 225 49 196617 t write b;
#P newex 192 205 50 196617 zl slice 1;
#P newex 232 253 72 196617 prepend write;
#P newex 177 125 50 196617 t l l;
#P newex 192 185 35 196617 zl reg;
#P newex 177 165 40 196617 sel 1 2;
#P newex 177 145 33 196617 zl len;
#P outlet 211 349 15 0;
#P newex 107 273 27 196617 t b l;
#P message 52 307 35 196617 recall 1;
#P newex 52 225 44 196617 t b read;
#P newex 67 205 50 196617 zl slice 1;
#P newex 107 253 65 196617 prepend read;
#P newex 52 125 50 196617 t l l;
#P newex 67 185 35 196617 zl reg;
#P newex 52 165 40 196617 sel 1 2;
#P newex 52 145 33 196617 zl len;
#P newex 52 72 189 196617 jmod.route @searchstring load_settings;
#P outlet 86 349 15 0;
#P inlet 52 45 15 0;
#P connect 0 0 2 0;
#P connect 2 0 6 0;
#P connect 6 0 3 0;
#P connect 3 0 4 0;
#P connect 24 0 9 0;
#P connect 4 0 9 0;
#P connect 9 0 10 0;
#P connect 11 0 10 0;
#P connect 4 1 5 0;
#P connect 5 0 8 0;
#P connect 9 1 1 0;
#P connect 10 0 1 0;
#P connect 11 1 1 0;
#P connect 6 1 5 1;
#P connect 8 1 27 0;
#P connect 27 0 7 0;
#P connect 7 0 11 0;
#P connect 2 1 22 0;
#P connect 22 0 16 0;
#P connect 16 0 13 0;
#P connect 13 0 14 0;
#P connect 25 0 19 0;
#P connect 14 0 19 0;
#P connect 14 1 15 0;
#P connect 15 0 18 0;
#P connect 20 0 12 0;
#P connect 21 0 12 0;
#P connect 19 0 12 0;
#P connect 16 1 15 1;
#P connect 18 1 26 0;
#P connect 26 0 17 0;
#P connect 17 0 21 0;
#P connect 21 1 20 0;
#P connect 19 1 20 0;
#P connect 22 1 23 0;
#P pop;
#P newobj 838 563 53 196617 p settings;
#N vpatcher 227 303 740 708;
#P outlet 326 354 15 0;
#P window setfont "Sans Serif" 9.;
#P newex 299 84 135 196617 jmod.message.mxt $1 force;
#P objectname jmod.parameter.mxb[4];
#P newex 43 257 59 196617 jmod.usurp;
#P newex 55 202 35 196617 t open;
#P button 210 123 15 0;
#P message 107 257 14 196617 1;
#B color 4;
#P message 92 224 14 196617 2;
#B color 4;
#P message 149 257 14 196617 1;
#B color 4;
#P message 134 224 14 196617 3;
#B color 4;
#P message 191 257 14 196617 1;
#B color 4;
#P message 176 224 14 196617 0;
#B color 4;
#P number 92 295 35 9 0 0 0 3 0 0 0 59 62 255 222 222 222 0 0 0;
#P newex 176 202 40 196617 sel 1 0;
#B color 4;
#P newex 134 202 40 196617 sel 1 0;
#B color 4;
#P newex 92 202 40 196617 sel 1 0;
#B color 4;
#P message 92 313 74 196617 outputmode \$1;
#B color 4;
#P comment 69 34 100 196617 'mute' just passes through;
#P newex 18 71 222 196617 route view_internals bypass freeze mute force;
#P outlet 304 353 15 0;
#P inlet 20 46 15 0;
#P connect 0 0 2 0;
#P connect 13 0 17 0;
#P connect 11 0 17 0;
#P connect 9 0 17 0;
#P connect 2 0 16 0;
#P connect 2 1 5 0;
#P connect 5 0 13 0;
#P lcolor 5;
#P connect 17 0 8 0;
#P connect 14 0 8 0;
#P lcolor 5;
#P connect 12 0 8 0;
#P lcolor 5;
#P connect 10 0 8 0;
#P lcolor 5;
#P connect 8 0 4 0;
#P lcolor 5;
#P connect 5 1 14 0;
#P lcolor 5;
#P connect 2 2 6 0;
#P connect 6 0 11 0;
#P lcolor 5;
#P connect 6 1 12 0;
#P lcolor 5;
#P connect 2 3 7 0;
#P connect 7 0 9 0;
#P lcolor 5;
#P connect 7 1 10 0;
#P lcolor 5;
#P connect 2 4 15 0;
#P connect 18 0 15 0;
#P connect 2 5 1 0;
#P connect 16 0 1 0;
#P connect 4 0 1 0;
#P connect 15 0 19 0;
#P pop;
#P newobj 419 311 73 196617 p parse_jitter;
#N vpatcher 418 269 934 669;
#P window setfont "Sans Serif" 9.;
#P comment 192 30 100 196617 'mute' just passes through;
#P outlet 138 69 15 0;
#P inlet 143 42 15 0;
#P connect 0 0 1 0;
#P pop;
#P newobj 394 331 80 196617 p parse_control;
#P message 452 253 14 196617 5;
#P message 430 252 14 196617 4;
#P newex 343 92 59 196617 jmod.usurp;
#P newex 447 582 86 196617 pack 1 half;
#P message 523 561 23 196617 full;
#P newex 523 541 31 196617 sel 0;
#P newex 501 521 50 196617 zl slice 1;
#P newex 447 501 118 196617 regexp (\\\\d)U-?(\\\\S*);
#P newex 447 602 185 196617 prepend set \\\; _MODULE_INSTALL_SIZE;
#P newex 863 137 63 196617 fromsymbol;
#P newex 823 158 50 196617 zl join;
#P newex 823 96 50 196617 zl slice 1;
#P newex 823 182 35 196617 zl reg;
#P newex 346 485 35 196617 t open;
#N vpatcher 231 194 690 593;
#P window setfont "Sans Serif" 9.;
#P newex 234 135 78 196617 prepend mute 0;
#P newex 59 108 59 196617 jmod.round;
#P window setfont "Lucida Grande" 12.;
#P newex 77 194 27 67108876 - 2;
#P window setfont "Sans Serif" 9.;
#P newex 28 168 59 196617 sel setitem;
#P newex 28 137 88 196617 jmod.core.sr.mxt;
#P newex 28 88 72 196617 route int float;
#P newex 214 260 215 196617 jmod.post.mxt "parse_poly: bad sample rate";
#P message 212 281 27 196617 up 4;
#P message 172 282 27 196617 up 2;
#P message 82 324 41 196617 down 4;
#P message 101 306 41 196617 down 2;
#P message 120 282 41 196617 down 1;
#P newex 82 230 119 196617 sel -2 -1 0 1 2;
#P newex 28 46 370 196617 route sr mute;
#P outlet 241 369 15 0;
#P inlet 28 26 15 0;
#P connect 0 0 2 0;
#P connect 2 0 10 0;
#P connect 14 0 11 0;
#P connect 10 0 11 0;
#P connect 11 0 12 0;
#P connect 10 1 14 0;
#P connect 12 1 13 0;
#P connect 13 0 3 0;
#P connect 3 0 6 0;
#P connect 3 1 5 0;
#P connect 3 2 4 0;
#P connect 3 3 7 0;
#P connect 3 4 8 0;
#P connect 3 5 9 0;
#P connect 2 1 15 0;
#P connect 2 2 1 0;
#P connect 7 0 1 0;
#P connect 8 0 1 0;
#P connect 6 0 1 0;
#P connect 5 0 1 0;
#P connect 4 0 1 0;
#P connect 15 0 1 0;
#P pop;
#P newobj 310 373 65 196617 p parse_poly;
#N vpatcher 237 245 544 633;
#P window setfont "Sans Serif" 9.;
#P newex 51 109 59 196617 jmod.round;
#P window setfont "Lucida Grande" 12.;
#P newex 20 185 27 67108876 - 2;
#P window setfont "Sans Serif" 9.;
#P newex 20 158 59 196617 sel setitem;
#P newex 20 88 72 196617 route int float;
#P newex 20 137 88 196617 jmod.core.sr.mxt;
#P newex 66 254 214 196617 jmod.post.mxt "parse_blue: bad sample rate";
#P message 20 310 72 196617 downsample 2;
#P message 34 292 72 196617 downsample 1;
#P message 50 274 72 196617 downsample 0;
#P newex 20 215 59 196617 sel -2 -1 0;
#P newex 20 52 161 196617 route sr gain_midi defeat_meters;
#P outlet 215 346 15 0;
#P inlet 20 27 15 0;
#P connect 0 0 2 0;
#P connect 2 0 9 0;
#P connect 12 0 8 0;
#P connect 9 0 8 0;
#P connect 8 0 10 0;
#P connect 10 1 11 0;
#P connect 11 0 3 0;
#P connect 3 0 6 0;
#P connect 3 1 5 0;
#P connect 3 2 4 0;
#P connect 9 1 12 0;
#P connect 3 3 7 0;
#P connect 4 0 1 0;
#P connect 5 0 1 0;
#P connect 6 0 1 0;
#P connect 2 3 1 0;
#P pop;
#P newobj 348 352 65 196617 p parse_blue;
#P message 412 254 14 196617 3;
#P newex 311 277 160 196617 gate 5 1;
#P newex 838 465 105 196617 prepend load_settings;
#P newex 838 419 172 196617 jmod.message.mxt $1 load_settings;
#P newex 854 528 110 196617 prepend save_settings;
#P message 969 320 87 196617 name $2;
#P newex 138 28 90 196617 r $1_FROM_MGUI;
#P message 343 136 149 196617 \; _MODULE_INSTALL_SIZE 1 full;
#P newex 343 113 22 196617 b 1;
#P newex 232 587 130 196617 jmod.message.mxt $1 help;
#P newex 308 438 112 196617 jmod.message.mxt $1 view_internals;
#P newex 854 488 175 196617 jmod.message.mxt $1 save_settings;
#P newex 850 235 188 196617 jmod.message.mxt $1 restore_defaults;
#P comment 962 349 100 196617 load the first preset;
#P message 817 363 44 196617 recall 1;
#P message 862 363 77 196617 $2;
#P comment 875 337 100 196617 read the default preset(s);
#P newex 817 295 29 196617 t b b;
#P message 961 61 72 196617 substitute %0;
#P newex 970 33 45 196617 loadbang;
#P newex 823 59 83 196617 regexp (\\\\S+::);
#P message 899 320 69 196617 outputmode 1;
#P newex 817 216 55 196617 r jmod.init;
#P comment 833 599 100 196617 pattrstorage;
#N comlet connect to pattrstorage;
#P outlet 817 599 15 0;
#N comlet connect to pattrstorage;
#P inlet 823 31 15 0;
#P newex 506 164 59 196617 jmod.usurp;
#P newex 506 141 35 196617 pipe 5;
#N vpatcher 10 59 610 459;
#P outlet 166 72 15 0;
#P inlet 161 40 15 0;
#P connect 0 0 1 0;
#P pop;
#P newobj 603 52 35 196617 p thru;
#P newex 668 368 101 196617 prepend _FROM_MODULEHUB;
#P newex 406 399 35 196617 zl reg;
#P message 387 252 14 196617 2;
#P newex 311 226 151 196617 sel poly blue none control jitter;
#P message 311 252 14 196617 1;
#P message 280 521 52 196617 target \$1;
#P newex 263 500 27 196617 t b i;
#P newex 263 544 50 196617 zl reg;
#P newex 263 480 50 196617 zl slice 1;
#N vpatcher 10 59 610 459;
#P outlet 166 72 15 0;
#P inlet 161 40 15 0;
#P connect 0 0 1 0;
#P pop;
#P newobj 148 523 35 196617 p thru;
#P window setfont "Sans Serif" 12.;
#P comment 136 427 131 196620 Poly Handling;
#P window setfont "Sans Serif" 9.;
#P newex 542 380 50 196617 pack;
#P newex 542 361 27 196617 i;
#P newex 542 280 27 196617 - 1;
#P newex 542 399 75 196617 sprintf p%i.%i;
#P newex 542 323 27 196617 t b i;
#P newex 542 342 50 196617 uzi;
#P number 542 301 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;
#P message 681 249 81 196617 enableitem 10 0;
#P newex 668 321 72 196617 prepend MENU;
#P message 697 269 82 196617 append PRESETS;
#P message 700 297 95 196617 append <separator>;
#P newex 668 229 75 196617 prepend append;
#N vpatcher 53 203 352 731;
#P window setfont "Sans Serif" 9.;
#P newex 182 203 50 196617 zl slice 1;
#P newex 142 183 50 196617 zl slice 1;
#P newex 102 163 50 196617 zl slice 1;
#P newex 102 384 35 196617 zl join;
#P newex 127 362 35 196617 zl rev;
#P newex 102 336 50 196617 zl slice 1;
#P outlet 176 379 15 0;
#P newex 154 328 50 196617 zl slice 2;
#P newex 176 352 35 196617 zl rev;
#P newex 102 306 59 196617 route name;
#P newex 102 140 35 196617 zl rev;
#P newex 102 262 138 196617 zl join;
#P newex 102 240 35 196617 zl join;
#P newex 25 78 215 196617 zl slice 1;
#P newex 25 110 165 196617 regexp ([p])([\\\\d]*)([.])([\\\\w]*);
#P outlet 102 486 15 0;
#P inlet 25 47 15 0;
#P connect 0 0 3 0;
#P connect 3 0 2 0;
#P connect 2 1 6 0;
#P connect 6 0 14 0;
#P connect 14 0 4 0;
#P connect 4 0 5 0;
#P connect 5 0 7 0;
#P connect 7 0 11 0;
#P connect 11 0 13 0;
#P connect 13 0 1 0;
#P connect 16 0 4 1;
#P connect 11 1 12 0;
#P connect 12 0 13 1;
#P connect 14 1 15 0;
#P connect 7 1 9 0;
#P connect 9 1 8 0;
#P connect 8 0 10 0;
#P connect 15 1 16 0;
#P connect 3 1 5 1;
#P pop;
#P newobj 668 142 42 196617 p parse;
#P number 578 301 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;
#P newex 506 210 85 196617 sprintf p%i.name;
#P newex 506 188 40 196617 uzi;
#P newex 506 122 173 196617 route num_presets num_parameters;
#N vpatcher 20 74 420 374;
#P window setfont "Sans Serif" 9.;
#P newex 121 175 35 196617 zl rev;
#P outlet 121 197 15 0;
#P newex 121 154 107 196617 zl join;
#P newex 218 81 68 196617 route symbol;
#P newex 121 81 68 196617 route symbol;
#P inlet 218 44 15 0;
#P inlet 121 44 15 0;
#P connect 0 0 2 0;
#P connect 2 0 4 0;
#P connect 2 1 4 0;
#P connect 4 0 6 0;
#P connect 6 0 5 0;
#P connect 1 0 3 0;
#P connect 3 1 4 1;
#P connect 3 0 4 1;
#P pop;
#P newobj 603 98 30 196617 p zip;
#P newex 603 32 183 196617 t num_presets num_parameters l b b b;
#P window setfont "Sans Serif" 12.;
#P comment 438 427 131 196620 Attribute Handling;
#P window setfont "Sans Serif" 9.;
#N coll ;
#P newobj 603 78 70 196617 coll;
#P newex 601 502 71 196617 prepend refer;
#N comlet connect to a poly~ object;
#P outlet 406 558 15 0;
#P newex 117 49 214 196617 route _POLY _MGUI_FEEDBACK MENU PRESET _GET_MODULE_INSTALL_SIZE MODULE_TITLE;
#P newex 447 479 321 196617 route size xxxx presets library_type;
#P newex 449 441 328 196617 patcherargs @size 1U @presets @library_type poly @module_type audio @skin default;
#P newex 134 178 115 196617 t l l l;
#P newex 134 331 35 196617 zl reg;
#P newex 134 352 84 196617 jmod.post.mxt $2-SyntaxError;
#P newex 134 305 31 196617 sel 0;
#P newex 134 285 27 196617 i;
#P newex 2 301 71 196617 prepend store;
#P newex 2 280 35 196617 zl rev;
#P newex 134 224 44 196617 t b l 0;
#P newex 2 259 35 196617 zl join;
#P newex 2 216 27 196617 t b l;
#N counter;
#X flags 0 0;
#P newobj 2 237 66 196617 counter;
#P newex 1 121 55 196617 t b clear 1;
#P newex 134 202 50 196617 zl slice 1;
#N coll $1_registered_parameters 1;
#P newobj 151 254 161 196617 coll $1_registered_parameters 1;
#P newex 1 196 126 196617 receive $1_register;
#P newex 1 141 96 196617 send $1_query;
#P newex 1 90 55 196617 r jmod.init;
#P newex 200 223 100 196617 send $1_instruction;
#N comlet module feedback - connect to 1st outlet;
#P outlet 263 359 15 0;
#N comlet connect to mgui (1st outlet);
#P inlet 117 29 15 0;
#P window setfont "Sans Serif" 12.;
#P comment 498 25 103 196620 Preset Handling;
#P window setfont "Sans Serif" 9.;
#P comment 504 303 45 196617 preset:;
#P user panel 303 189 192 234;
#X brgb 191 191 191;
#X frgb 0 0 0;
#X border 1;
#X rounded 0;
#X shadow 0;
#X done;
#P comment 840 31 100 196617 pattrstorage;
#P comment 904 281 75 196617 tell pattrstorage to send feedback;
#P comment 913 83 172 196617 filter out the part of the feedback symbol preceeding the double-colon. Then send to the feedback outlet;
#P user panel 497 22 300 400;
#X brgb 191 191 191;
#X frgb 0 0 0;
#X border 1;
#X rounded 0;
#X shadow 0;
#X done;
#P background;
#P user panel 133 424 300 158;
#X brgb 191 191 191;
#X frgb 0 0 0;
#X border 1;
#X rounded 0;
#X shadow 0;
#X done;
#P background;
#P user panel 435 424 362 207;
#X brgb 191 191 191;
#X frgb 0 0 0;
#X border 1;
#X rounded 0;
#X shadow 0;
#X done;
#P background;
#P connect 12 0 17 0;
#P connect 17 0 13 0;
#P connect 14 0 19 0;
#P connect 19 0 18 0;
#P connect 18 0 20 0;
#P connect 20 0 22 0;
#P connect 22 0 23 0;
#P connect 126 0 128 0;
#P connect 128 0 127 0;
#P connect 127 0 129 0;
#P connect 19 1 20 1;
#P connect 17 2 18 2;
#P connect 9 0 31 0;
#P connect 88 0 31 0;
#P connect 60 0 28 0;
#P connect 56 0 28 0;
#P connect 28 0 16 0;
#P connect 16 0 21 0;
#P connect 21 0 24 0;
#P connect 24 0 25 0;
#P connect 25 0 27 0;
#P connect 27 0 26 0;
#P connect 120 1 56 0;
#P connect 58 0 56 0;
#P connect 17 1 15 0;
#P connect 23 0 15 0;
#P connect 21 1 15 0;
#P connect 15 0 24 1;
#P fasten 21 2 24 1 173 280 156 280;
#P fasten 28 1 27 1 191 327 164 327;
#P connect 31 6 120 0;
#P connect 42 1 11 0;
#P connect 28 2 11 0;
#P connect 85 0 130 0;
#P connect 98 0 10 0;
#P connect 129 0 10 0;
#P connect 31 1 10 0;
#P connect 120 0 57 0;
#P connect 57 0 59 0;
#P connect 59 0 58 0;
#P connect 59 1 60 0;
#P connect 57 1 58 1;
#P connect 93 0 96 0;
#P connect 30 3 62 0;
#P connect 62 0 61 0;
#P connect 110 0 93 0;
#P connect 109 0 93 0;
#P connect 94 0 93 0;
#P connect 61 0 93 0;
#P connect 63 0 93 0;
#P connect 31 4 108 0;
#P connect 108 0 86 0;
#P connect 102 0 87 0;
#P connect 86 0 87 0;
#P connect 84 0 97 0;
#P connect 93 1 95 0;
#P connect 62 1 63 0;
#P connect 93 3 111 0;
#P connect 95 0 64 0;
#P connect 96 0 64 0;
#P connect 111 0 64 0;
#P connect 112 0 64 0;
#P connect 112 1 32 0;
#P connect 97 0 32 0;
#P connect 64 0 32 0;
#P connect 93 2 32 0;
#P connect 62 2 94 0;
#P connect 93 4 112 0;
#P connect 62 3 109 0;
#P fasten 29 1 30 0 613 474 452 474;
#P connect 30 0 103 0;
#P connect 104 0 107 0;
#P connect 107 0 102 0;
#P connect 62 4 110 0;
#P connect 98 0 93 1;
#P connect 103 1 104 0;
#P fasten 37 0 38 0 608 118 511 118;
#P connect 38 0 67 0;
#P connect 67 0 68 0;
#P connect 68 0 39 0;
#P connect 39 2 40 0;
#P connect 104 1 105 0;
#P connect 105 0 106 0;
#P fasten 105 1 107 1 549 579 528 579;
#P connect 106 0 107 1;
#P connect 31 2 52 0;
#P connect 31 3 48 0;
#P connect 52 0 48 0;
#P connect 48 0 50 0;
#P connect 50 0 49 0;
#P connect 49 0 53 0;
#P connect 53 0 54 0;
#P connect 54 0 51 0;
#P connect 50 1 53 1;
#P lcolor 2;
#P connect 19 1 125 0;
#P fasten 38 1 41 0 592 237 583 237;
#P connect 41 0 49 1;
#P connect 49 2 54 1;
#P connect 30 2 33 0;
#P fasten 33 0 36 0 606 530 797 530 797 29 608 29;
#P connect 36 0 66 0;
#P connect 36 2 34 0;
#P connect 36 1 34 0;
#P connect 51 0 34 0;
#P fasten 40 0 34 0 511 236 502 236 502 73 608 73;
#P connect 66 0 34 0;
#P connect 34 0 37 0;
#P connect 34 1 37 1;
#P connect 38 2 42 0;
#P connect 42 0 43 0;
#P connect 47 0 46 0;
#P connect 44 0 46 0;
#P connect 45 0 46 0;
#P connect 43 0 46 0;
#P connect 46 0 65 0;
#P connect 36 3 47 0;
#P connect 36 4 45 0;
#P connect 36 5 44 0;
#P connect 82 0 77 0;
#P connect 72 0 77 0;
#P connect 77 0 80 0;
#P fasten 89 0 70 0 974 404 822 404;
#P fasten 73 0 70 0 904 402 822 402;
#P connect 80 0 70 0;
#P connect 113 0 70 0;
#P connect 113 1 70 0;
#P fasten 119 0 70 0 867 400 822 400;
#P connect 31 5 117 0;
#P connect 76 0 74 0;
#P connect 69 0 74 0;
#P connect 74 0 99 0;
#P connect 99 0 100 0;
#P connect 100 0 98 0;
#P connect 91 0 114 0;
#P connect 114 1 92 0;
#P connect 92 0 113 0;
#P connect 90 0 113 0;
#P connect 115 1 90 0;
#P connect 83 0 115 0;
#P connect 114 0 113 1;
#P fasten 77 1 79 0 841 320 867 320;
#P connect 79 0 119 0;
#P connect 99 1 121 0;
#P connect 121 0 101 0;
#P connect 101 0 100 1;
#P connect 115 0 113 2;
#P connect 75 0 73 0;
#P connect 75 0 76 0;
#P connect 75 0 118 0;
#P connect 124 0 116 0;
#P connect 118 0 116 0;
#P connect 117 0 116 0;
#P connect 122 0 116 0;
#P connect 125 0 116 0;
#P connect 75 0 89 0;
#P connect 29 1 123 0;
#P connect 123 0 124 0;
#P connect 123 1 122 0;
#P pop;
