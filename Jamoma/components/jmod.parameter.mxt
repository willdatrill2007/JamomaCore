max v2;
#N vpatcher 32 52 981 662;
#P origin 0 -5;
#P window setfont "Sans Serif" 9.;
#P newex 256 113 45 196617 tap.thru;
#P newex 303 86 55 196617 r jmod.init;
#P newex 256 86 45 196617 loadbang;
#P message 520 139 88 196617 ramp_enable 0 \, type generic \, special n/a \, filter_dupes 0 \, conversion none;
#P comment 697 246 175 196617 could these be trashed?;
#N vpatcher 240 126 619 499;
#P window setfont "Sans Serif" 9.;
#P comment 27 87 75 196617 from interface;
#P comment 147 87 58 196617 instruction;
#P inlet 130 87 15 0;
#P inlet 244 87 15 0;
#P inlet 103 87 15 0;
#P outlet 95 299 15 0;
#P newex 191 227 27 196617 gate;
#P newex 95 205 27 196617 + 1;
#P toggle 244 156 15 0;
#P newex 95 227 45 196617 gate 2 1;
#P newex 130 252 71 196617 jmod.line.mxt;
#P comment 261 87 100 196617 ramp_enable;
#P comment 27 51 194 196617 If ramp is enable \, it is taken care of here;
#P fasten 4 0 5 0 249 188 100 188;
#P connect 5 0 3 0;
#P connect 3 0 7 0;
#P connect 2 0 7 0;
#P connect 10 0 3 1;
#P connect 3 1 2 0;
#P fasten 4 0 6 0 249 222 196 222;
#P connect 6 0 2 1;
#P connect 8 0 6 1;
#P connect 9 0 4 0;
#P pop;
#P newobj 59 301 79 196617 p ramp_handler;
#N vpatcher 34 89 1048 809;
#P origin 0 34;
#P inlet 508 164 15 0;
#P window setfont "Sans Serif" 9.;
#P newex 508 230 27 196617 int;
#N vpatcher 10 59 489 323;
#P window setfont "Sans Serif" 9.;
#P newex 13 132 31 196617 sel 1;
#P newex 13 112 27 196617 i;
#P newex 30 93 53 196617 dspstate~;
#P newex 13 170 50 196617 tosymbol;
#P message 13 152 429 196617 sr-ratio: RESTART DSP FOR CHANGE TO TAKE EFFECT;
#P newex 13 190 74 196617 jmod.post.mxt;
#P newex 13 69 31 196617 sel 1;
#P inlet 13 37 15 0;
#P connect 0 0 1 0;
#P connect 1 0 6 0;
#P connect 6 0 7 0;
#P connect 7 0 3 0;
#P connect 3 0 4 0;
#P connect 4 0 2 0;
#P connect 5 0 6 1;
#P pop;
#P newobj 422 330 139 196617 p NOTIFY_TO_RESTART_DSP;
#P newex 439 282 27 196617 i;
#P message 550 208 14 196617 1;
#P message 508 208 14 196617 0;
#P newex 422 309 27 196617 gate;
#P newex 508 186 95 196617 sel n/a RestartDSP;
#P inlet 439 164 15 0;
#P fasten 7 0 2 0 513 267 427 267;
#P connect 2 0 6 0;
#P connect 0 0 5 0;
#P connect 5 0 2 1;
#P fasten 4 0 5 1 555 270 461 270;
#P connect 8 0 1 0;
#P connect 1 0 3 0;
#P connect 4 0 7 0;
#P connect 3 0 7 0;
#P connect 1 1 4 0;
#P pop;
#P newobj 316 539 50 196617 p restart;
#N vpatcher 257 118 800 429;
#P window setfont Verdana 9.;
#P message 312 177 66 472055817 -2000000.;
#P window setfont "Sans Serif" 9.;
#P comment 29 35 127 196617 Filter duplicates?;
#P inlet 295 67 15 0;
#P newex 312 157 55 196617 r jmod.init;
#P comment 380 159 127 196617 this allows the first zero value to make it through;
#P newex 94 203 211 196617 tap.change;
#P outlet 59 249 15 0;
#P inlet 94 67 15 0;
#P newex 116 97 20 196617 t b;
#P newex 116 118 123 196617 pv jmod.parameter.dupes;
#P newex 59 170 45 196617 gate 2 1;
#P connect 1 0 0 0;
#P connect 5 0 4 0;
#P connect 0 0 4 0;
#P connect 3 0 0 1;
#P connect 0 1 5 0;
#P connect 3 0 2 0;
#P connect 2 0 1 0;
#P connect 10 0 5 1;
#P connect 8 0 5 1;
#P connect 7 0 10 0;
#P pop;
#P newobj 59 342 103 196617 p dupes_filter;
#N vpatcher 34 89 302 255;
#P window setfont "Sans Serif" 9.;
#P number 111 76 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;
#P comment 79 25 100 196617 set flag;
#P inlet 80 46 15 0;
#P newex 80 101 123 196617 pv jmod.parameter.dupes;
#P newex 80 76 27 196617 + 1;
#P connect 2 0 0 0;
#P connect 0 0 1 0;
#P connect 0 0 4 0;
#P pop;
#P newobj 406 240 42 196617 p dupes;
#P comment 697 489 175 196617 flag indicating dupes attribute;
#P newex 697 505 123 196617 pv jmod.parameter.dupes;
#N vpatcher 34 89 334 323;
#P button 69 132 15 0;
#P window setfont "Sans Serif" 9.;
#P number 54 199 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;
#P comment 97 43 100 196617 set flag;
#P newex 98 181 118 196617 pv jmod.parameter.type;
#P inlet 98 68 15 0;
#P message 135 141 14 196617 2;
#P message 98 141 14 196617 1;
#P newex 98 114 84 196617 sel generic menu;
#P connect 4 0 6 0;
#P connect 3 0 0 0;
#P connect 0 0 1 0;
#P connect 7 0 4 0;
#P connect 2 0 4 0;
#P connect 1 0 4 0;
#P connect 0 1 2 0;
#P pop;
#P newobj 306 240 35 196617 p type;
#P comment 697 450 175 196617 flag indicating type attribute;
#P newex 697 466 118 196617 pv jmod.parameter.type;
#N vpatcher 227 131 638 573;
#P window setfont "Sans Serif" 9.;
#P comment 44 72 165 196617 + dealing with the type flag;
#P newex 59 164 118 196617 pv jmod.parameter.type;
#B color 14;
#P newex 350 66 20 196617 t b;
#B color 14;
#P newex 81 191 145 196617 pv jmod.parameter.conversion;
#B color 14;
#P newex 59 358 55 196617 switch 2 1;
#N vpatcher 10 59 410 359;
#P window setfont "Sans Serif" 9.;
#P newex 165 128 21 196617 t 0;
#B color 3;
#P newex 86 163 76 196617 pack;
#B color 3;
#P newex 86 99 76 196617 unpack;
#B color 3;
#P newex 86 119 64 196617 expr ($f1 * (10./6.)) + 127;
#B color 3;
#P comment 170 152 80 196617 decibels to midi conversion;
#P outlet 148 236 15 0;
#P inlet 144 36 15 0;
#P connect 0 0 4 0;
#P connect 4 0 3 0;
#P lcolor 4;
#P connect 3 0 5 0;
#P lcolor 4;
#P connect 5 0 1 0;
#P connect 4 1 5 1;
#P lcolor 4;
#P connect 6 0 5 1;
#P lcolor 4;
#P connect 4 1 6 0;
#P lcolor 4;
#P pop;
#P newobj 116 284 65 196617 p db_to_midi;
#P newex 81 264 45 196617 gate 2 1;
#P newex 103 337 98 196617 jmod.menuprep.mxt;
#P outlet 59 391 15 0;
#P inlet 331 36 15 0;
#P comment 44 53 165 196617 convertion of db to midi if required;
#P fasten 8 0 9 0 355 158 64 158;
#P lcolor 15;
#P connect 9 0 6 0;
#P lcolor 15;
#P connect 6 0 2 0;
#P fasten 8 0 7 0 355 186 86 186;
#P lcolor 15;
#P connect 7 0 4 0;
#P lcolor 15;
#P connect 5 0 6 1;
#P connect 4 0 6 1;
#P connect 4 0 3 0;
#P connect 3 0 6 2;
#P fasten 1 0 4 1 336 255 121 255;
#P connect 4 1 5 0;
#P connect 1 0 8 0;
#P lcolor 15;
#P pop;
#P newobj 59 416 131 196617 p conversion_type_handler;
#N vpatcher 312 85 779 394;
#P outlet 139 246 15 0;
#P window setfont "Sans Serif" 9.;
#P newex 182 140 145 196617 pv jmod.parameter.conversion;
#P newex 182 118 20 196617 t b;
#P inlet 139 79 15 0;
#N vpatcher 10 59 410 359;
#P window setfont "Sans Serif" 9.;
#P newex 61 108 27 196617 + 1;
#P newex 61 129 69 196617 gate 2 1;
#P newex 61 87 35 196617 < -76.;
#P inlet 61 36 15 0;
#P outlet 61 198 15 0;
#P newex 120 157 48 196617 t -120.;
#P newex 61 60 145 196617 expr ((127 - $f1) /10.) * -6.;
#B color 3;
#P connect 3 0 0 0;
#P connect 0 0 4 0;
#P connect 4 0 6 0;
#P connect 6 0 5 0;
#P connect 5 0 2 0;
#P connect 1 0 2 0;
#P fasten 0 0 5 1 66 83 125 83;
#P connect 5 1 1 0;
#P pop;
#P newobj 139 197 65 196617 p midi_to_db;
#P newex 104 177 45 196617 gate 2 1;
#P comment 89 40 158 196617 midi_2_db convertion if required;
#P connect 5 0 1 0;
#P connect 3 0 1 1;
#P connect 1 1 2 0;
#P connect 1 0 6 0;
#P connect 2 0 6 0;
#P connect 3 0 4 0;
#P connect 4 0 5 0;
#P pop;
#P newobj 31 105 105 196617 p conversion_handler;
#P newex 697 549 145 196617 pv jmod.parameter.conversion;
#P comment 697 533 175 196617 flag indicating conversion attribute;
#N vpatcher 34 89 399 379;
#P window setfont "Sans Serif" 9.;
#P number 119 154 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;
#P newex 89 183 145 196617 pv jmod.parameter.conversion;
#P inlet 89 78 15 0;
#P newex 89 153 27 196617 int;
#P message 125 127 14 196617 2;
#P message 89 127 14 196617 1;
#P newex 89 106 83 196617 sel none db2midi;
#P comment 85 42 100 196617 set flag;
#P connect 5 0 1 0;
#P connect 1 0 2 0;
#P connect 3 0 4 0;
#P connect 2 0 4 0;
#P connect 4 0 6 0;
#P connect 4 0 7 0;
#P connect 1 1 3 0;
#P pop;
#P newobj 456 240 65 196617 p conversion;
#P newex 697 390 112 196617 pv jmod.parameter.set;
#P newex 697 263 103 196617 print MENU_PREP_IN;
#P newex 697 283 88 196617 print MENU_PREP;
#P newex 697 303 80 196617 print PATTR_IN;
#P newex 59 368 121 196617 pattr $2 @autorestore 0;
#X prestore 1 0 0;
#P objectname $2;
#P outlet 59 444 15 0;
#P newex 31 128 53 196617 t b l f l;
#P newex 256 216 260 196617 route ramp_enable type special filter_dupes conversion;
#P newex 256 139 261 196617 patcherargs $0_ mod_name @ramp_enable 0 @type generic @special n/a @filter_dupes 0 @conversion none;
#P newex 697 172 137 196617 send $1_register;
#P message 697 154 132 196617 $2;
#P newex 697 134 140 196617 receive $1_query;
#P newex 93 207 141 196617 route $2;
#P newex 93 184 139 196617 receive $1_instruction;
#P inlet 31 62 15 0;
#P comment 697 374 175 196617 flag indicating if it's a "set" message;
#P connect 1 0 19 0;
#P connect 19 0 9 0;
#P connect 9 2 29 0;
#P connect 29 0 27 0;
#P fasten 9 3 27 0 78 333 64 333;
#P lcolor 15;
#P connect 27 0 11 0;
#P connect 11 0 20 0;
#P connect 20 0 10 0;
#P connect 2 0 3 0;
#P connect 3 0 29 1;
#P connect 8 0 29 2;
#P fasten 9 1 27 1 50 289 157 289;
#P fasten 33 0 34 0 308 108 261 108;
#P connect 32 0 34 0;
#P connect 34 0 7 0;
#P fasten 31 0 8 0 525 210 261 210;
#P fasten 7 1 8 0 512 208 261 208;
#P connect 8 1 23 0;
#P fasten 9 0 28 0 36 506 321 506;
#P connect 8 2 28 1;
#P connect 8 3 26 0;
#P connect 8 4 16 0;
#P fasten 34 0 31 0 261 134 525 134;
#P connect 4 0 5 0;
#P connect 5 0 6 0;
#P pop;
