max v2;#N vpatcher 6 427 863 678;#P origin 0 -8;#P window setfont "Sans Serif" 9.;#N vpatcher 327 62 552 255;#P origin -343 -68;#P window setfont "Sans Serif" 9.;#P newex 57 97 50 196617 zl slice 1;#P newex 57 120 93 196617 prepend attributes;#P newex 57 49 80 196617 prepend symbol;#P outlet 57 146 15 0;#N coll jmod.namespace 1;#P newobj 57 72 111 196617 coll jmod.namespace 1;#P inlet 57 23 15 0;#P connect 0 0 3 0;#P connect 3 0 1 0;#P connect 1 0 5 0;#P fasten 5 1 4 0 102 116 62 116;#P connect 4 0 2 0;#P pop;#P newobj 737 152 47 196617 p mods;#N vpatcher 233 51 485 236;#P origin -343 -68;#P window setfont "Sans Serif" 9.;#P newex 41 59 80 196617 prepend symbol;#P newex 41 105 130 196617 prepend module_attributes;#P outlet 41 128 15 0;#N coll jmod.modules_attributes 1;#P newobj 41 82 150 196617 coll jmod.modules_attributes 1;#P inlet 41 38 15 0;#P connect 0 0 4 0;#P connect 4 0 1 0;#P connect 1 0 3 0;#P connect 3 0 2 0;#P pop;#P newobj 633 150 41 196617 p mods;#P newex 633 128 114 196617 route module;#P newex 33 163 105 196617 jmod.post namespace;#P window linecount 2;#P message 33 105 50 196617 analysis done;#P window linecount 1;#N vpatcher 10 59 229 240;#P window setfont "Sans Serif" 9.;#P window linecount 1;#P newex 32 100 50 196617 zl iter 1;#P outlet 32 143 15 0;#P window linecount 0;#P newex 32 120 82 196617 prepend returns;#P newex 32 54 80 196617 prepend symbol;#N coll jmod.modules_returns 1;#P newobj 32 77 139 196617 coll jmod.modules_returns 1;#P inlet 32 30 15 0;#P connect 0 0 2 0;#P connect 2 0 1 0;#P connect 1 0 5 0;#P connect 5 0 3 0;#P connect 3 0 4 0;#P pop;#P newobj 533 125 41 196617 p ret;#N vpatcher 10 59 249 247;#P window setfont "Sans Serif" 9.;#P window linecount 1;#P newex 32 100 50 196617 zl iter 1;#P window linecount 0;#P newex 32 125 100 196617 prepend messages;#P newex 32 53 80 196617 prepend symbol;#P outlet 32 148 15 0;#N coll jmod.modules_messages 1;#P newobj 32 77 148 196617 coll jmod.modules_messages 1;#P inlet 32 30 15 0;#P connect 0 0 3 0;#P connect 3 0 1 0;#P connect 1 0 5 0;#P connect 5 0 4 0;#P connect 4 0 2 0;#P pop;#P newobj 483 126 41 196617 p mess;#N vpatcher 331 64 569 249;#P window setfont "Sans Serif" 9.;#P newex 32 106 50 196617 zl iter 1;#P newex 32 131 100 196617 prepend parameters;#P outlet 32 154 15 0;#P newex 32 52 80 196617 prepend symbol;#N coll jmod.modules_parameters 1;#P newobj 32 77 157 196617 coll jmod.modules_parameters 1;#P inlet 32 30 15 0;#P connect 0 0 2 0;#P connect 2 0 1 0;#P connect 1 0 5 0;#P connect 5 0 4 0;#P connect 4 0 3 0;#P pop;#P newobj 433 126 46 196617 p params;#N comlet retrieve outlet;#P outlet 383 189 15 0;#N vpatcher 233 51 464 251;#P window setfont "Sans Serif" 9.;#P window linecount 0;#P newex 69 119 84 196617 prepend modules;#P outlet 69 142 15 0;#P newex 69 96 69 196617 route symbol;#P newex 23 49 40 196617 t dump;#P window linecount 1;#N coll jmod.modules_attributes 1;#P newobj 23 72 150 196617 coll jmod.modules_attributes 1;#P inlet 23 28 15 0;#P connect 0 0 2 0;#P connect 2 0 1 0;#P connect 1 1 3 0;#P connect 3 0 5 0;#P connect 5 0 4 0;#P pop;#P newobj 383 126 41 196617 p mods;#P newex 383 104 314 196617 route modules parameters messages returns all attributes;#N vpatcher 10 59 232 197;#P window setfont "Sans Serif" 9.;#P window linecount 0;#P newex 32 54 50 196617 t open;#P window linecount 1;#N coll jmod.namespace 1;#P newobj 32 77 111 196617 coll jmod.namespace 1;#P inlet 32 30 15 0;#P connect 0 0 2 0;#P connect 2 0 1 0;#P pop;#P newobj 313 129 41 196617 p space;#N vpatcher 10 59 232 197;#P window setfont "Sans Serif" 9.;#P window linecount 0;#P newex 32 54 50 196617 t open;#P window linecount 1;#N coll jmod.modules_returns 1;#P newobj 32 77 139 196617 coll jmod.modules_returns 1;#P inlet 32 30 15 0;#P connect 0 0 2 0;#P connect 2 0 1 0;#P pop;#P newobj 263 128 41 196617 p ret;#N vpatcher 10 59 232 197;#P window setfont "Sans Serif" 9.;#P window linecount 0;#P newex 32 54 50 196617 t open;#P window linecount 1;#N coll jmod.modules_messages 1;#P newobj 32 77 148 196617 coll jmod.modules_messages 1;#P inlet 32 30 15 0;#P connect 0 0 2 0;#P connect 2 0 1 0;#P pop;#P newobj 213 128 41 196617 p mess;#N vpatcher 10 59 232 197;#P window setfont "Sans Serif" 9.;#P window linecount 0;#P newex 32 54 50 196617 t open;#P window linecount 1;#N coll jmod.modules_parameters 1;#P newobj 32 77 157 196617 coll jmod.modules_parameters 1;#P inlet 32 30 15 0;#P connect 0 0 2 0;#P connect 2 0 1 0;#P pop;#P newobj 163 128 46 196617 p params;#N vpatcher 10 59 232 197;#P window setfont "Sans Serif" 9.;#P window linecount 0;#P newex 32 54 50 196617 t open;#P window linecount 1;#N coll jmod.modules_attributes 1;#P newobj 32 77 150 196617 coll jmod.modules_attributes 1;#P inlet 32 30 15 0;#P connect 0 0 2 0;#P connect 2 0 1 0;#P pop;#P newobj 113 128 41 196617 p mods;#P newex 113 104 262 196617 route modules parameters messages returns namespace;#P newex 113 81 551 196617 route view get;#P inlet 33 31 15 0;#P newex 33 56 91 196617 route bang analyse;#N vpatcher 38 200 981 638;#P window setfont "Sans Serif" 9.;#P window linecount 1;#N vpatcher 4 58 1083 727;#P origin 257 28;#P window setfont "Sans Serif" 9.;#P window linecount 1;#N vpatcher 20 52 325 290;#P origin 8 0;#P window setfont "Sans Serif" 9.;#P window linecount 0;#P newex 79 152 29 196617 t 1 l;#P newex 79 131 50 196617 zl slice 2;#P newex 39 106 50 196617 gate 2 1;#P inlet 79 83 15 0;#P outlet 39 183 15 0;#P inlet 126 53 15 0;#P window linecount 2;#P comment 105 92 158 196617 in case there's no int/float/menu parameter;#P window linecount 1;#P newex 39 83 21 196617 t 2;#P fasten 2 0 0 0 131 75 44 75;#P connect 7 0 5 0;#P connect 0 0 5 0;#P fasten 7 1 3 0 103 178 44 178;#P connect 5 0 3 0;#P connect 4 0 5 1;#P connect 5 1 6 0;#P connect 6 0 7 0;#P pop;#P newobj 507 540 231 196617 p noparam;#N vpatcher 20 52 440 328;#P origin 8 0;#P outlet 59 199 15 0;#P window setfont "Sans Serif" 9.;#P newex 59 176 71 196617 t <separator>;#P window linecount 1;#P newex 59 153 34 196617 sel 0;#P newex 59 130 42 196617 i;#N counter;#X flags 0 0;#P newobj 91 106 66 196617 counter;#P newex 39 61 30 196617 t 0 b;#P window linecount 0;#P newex 91 63 23 196617 t b;#P inlet 39 36 15 0;#P inlet 91 39 15 0;#P comment 122 60 158 196617 in case there's no int/float/menu parameter;#P connect 2 0 4 0;#P connect 4 1 6 0;#P connect 6 0 7 0;#P connect 7 0 8 0;#P connect 8 0 9 0;#P connect 1 0 3 0;#P connect 3 0 5 0;#P connect 5 0 6 1;#P fasten 4 0 5 3 44 93 138 93;#P pop;#P newobj 728 464 56 196617 p noparam;#P newex 888 140 37 196617 zl rev;#P newex 608 145 37 196617 zl rev;#P newex 435 174 82 196617 t <separator> b;#P newex 507 491 37 196617 zl rev;#P newex 435 463 82 196617 zl join;#P newex 608 76 50 196617 zl reg;#P newex 648 55 73 196617 r $0_mod;#P newex 953 164 72 196617 s $0_mod;#P newex 581 191 37 196617 t l l;#P newex 507 122 111 196617 t b l;#P newex 507 440 67 196617 zl group 255;#P newex 540 418 51 196617 gate;#P newex 728 382 21 196617 t 0;#P newex 608 388 21 196617 t 1;#P window linecount 3;#P newex 608 328 136 196617 sel generic menu toggle msg_int msg_float msg_list msg_symbol jit_matrix;#P window linecount 1;#P newex 608 304 53 196617 zl nth 7;#P newex 608 259 72 196617 sprintf %s%s;#P newex 608 236 59 196617 zl rev;#P newex 608 213 59 196617 pack s s;#P newex 608 167 47 196617 zl iter 1;#P newex 657 167 80 196617 route symbol;#N coll jmod.namespace 1;#P newobj 608 282 111 196617 coll jmod.namespace 1;#N coll jmod.modules_parameters 1;#P newobj 608 98 157 196617 coll jmod.modules_parameters 1;#P newex 507 517 290 196617 zl join;#P newex 507 587 37 196617 zl rev;#P newex 507 610 72 196617 prepend store;#P newex 861 187 37 196617 t l l;#N coll jmod.trig_mapper_ins 1;#P newobj 507 637 151 196617 coll jmod.trig_mapper_ins 1;#P newex 787 118 111 196617 t b l;#P newex 937 185 111 196617 t s s;#P newex 507 565 541 196617 zl join;#P newex 787 464 67 196617 zl group 255;#P newex 820 414 51 196617 gate;#P newex 1010 383 21 196617 t 0;#P newex 888 384 21 196617 t 1;#P window linecount 3;#P newex 888 327 136 196617 sel generic menu toggle msg_int msg_float msg_list msg_symbol jit_matrix;#P window linecount 1;#P newex 888 300 53 196617 zl nth 7;#P newex 888 72 176 196617 t dump clear;#P newex 888 255 72 196617 sprintf %s%s;#P newex 888 232 59 196617 zl rev;#P newex 888 209 59 196617 pack s s;#P newex 888 163 47 196617 zl iter 1;#P newex 937 118 65 196617 route symbol;#N coll jmod.namespace 1;#P newobj 888 278 111 196617 coll jmod.namespace 1;#N coll jmod.modules_returns 1;#P newobj 888 94 157 196617 coll jmod.modules_returns 1;#P button 264 -4 15 0;#N vpatcher 20 52 325 290;#P origin 8 0;#P window setfont "Sans Serif" 9.;#P window linecount 0;#P newex 79 152 29 196617 t 1 l;#P newex 79 131 50 196617 zl slice 2;#P newex 39 106 50 196617 gate 2 1;#P inlet 79 83 15 0;#P outlet 39 183 15 0;#P inlet 126 53 15 0;#P window linecount 2;#P comment 105 92 158 196617 in case there's no int/float/menu parameter;#P window linecount 1;#P newex 39 83 21 196617 t 2;#P fasten 2 0 0 0 131 75 44 75;#P connect 0 0 5 0;#P connect 7 0 5 0;#P connect 5 0 3 0;#P fasten 7 1 3 0 103 178 44 178;#P connect 4 0 5 1;#P connect 5 1 6 0;#P connect 6 0 7 0;#P pop;#P newobj -145 509 231 196617 p noparam;#P window linecount 0;#N vpatcher 20 52 440 328;#P origin 8 0;#P outlet 59 199 15 0;#P window setfont "Sans Serif" 9.;#P newex 59 176 71 196617 t <separator>;#P window linecount 1;#P newex 59 153 34 196617 sel 0;#P newex 59 130 42 196617 i;#N counter;#X flags 0 0;#P newobj 91 106 66 196617 counter;#P newex 39 61 30 196617 t 0 b;#P window linecount 0;#P newex 91 63 23 196617 t b;#P inlet 39 36 15 0;#P inlet 91 39 15 0;#P comment 122 60 158 196617 in case there's no int/float/menu parameter;#P connect 2 0 4 0;#P connect 4 1 6 0;#P connect 6 0 7 0;#P connect 7 0 8 0;#P connect 8 0 9 0;#P connect 1 0 3 0;#P connect 3 0 5 0;#P connect 5 0 6 1;#P fasten 4 0 5 3 44 93 138 93;#P pop;#P newobj 76 433 56 196617 p noparam;#P window linecount 1;#P newex 236 109 37 196617 zl rev;#P newex -44 114 37 196617 zl rev;#P window linecount 0;#P newex 236 14 662 196617 t b b;#P newex -217 143 82 196617 t <separator> b;#P newex -145 460 37 196617 zl rev;#P newex -217 432 82 196617 zl join;#P newex -44 45 50 196617 zl reg;#P newex -4 24 73 196617 r $0_mod;#P newex 301 133 72 196617 s $0_mod;#P newex -71 160 37 196617 t l l;#P newex -145 91 111 196617 t b l;#P newex -145 409 67 196617 zl group 255;#P newex -112 387 51 196617 gate;#P newex 76 351 21 196617 t 0;#P newex -44 357 21 196617 t 1;#P newex -44 297 136 196617 sel generic menu toggle msg_int msg_float msg_list msg_symbol jit_matrix;#P newex -44 273 53 196617 zl nth 7;#P newex -44 228 72 196617 sprintf %s%s;#P newex -44 205 59 196617 zl rev;#P newex -44 182 59 196617 pack s s;#P newex -44 136 47 196617 zl iter 1;#P newex 5 136 80 196617 route symbol;#N coll jmod.namespace 1;#P newobj -44 251 111 196617 coll jmod.namespace 1;#N coll jmod.modules_messages 1;#P newobj -44 67 157 196617 coll jmod.modules_messages 1;#P newex -145 486 290 196617 zl join;#P newex -145 556 37 196617 zl rev;#P newex -145 579 72 196617 prepend store;#P newex 209 156 37 196617 t l l;#N coll jmod.trig_mapper_outs 1;#P newobj -145 606 151 196617 coll jmod.trig_mapper_outs 1;#P newex 135 87 111 196617 t b l;#P newex 285 154 111 196617 t s s;#P newex -145 534 541 196617 zl join;#P newex 135 433 67 196617 zl group 255;#P newex 168 383 51 196617 gate;#P newex 358 352 21 196617 t 0;#P newex 236 353 21 196617 t 1;#P newex 236 296 136 196617 sel generic menu toggle msg_int msg_float msg_list msg_symbol jit_matrix;#P newex 236 269 53 196617 zl nth 7;#P newex 236 41 176 196617 t dump clear;#P newex 236 224 72 196617 sprintf %s%s;#P newex 236 201 59 196617 zl rev;#P newex 236 178 59 196617 pack s s;#P newex 236 132 47 196617 zl iter 1;#P newex 285 87 65 196617 route symbol;#N coll jmod.namespace 1;#P newobj 236 247 111 196617 coll jmod.namespace 1;#N coll jmod.modules_parameters 1;#P newobj 236 63 157 196617 coll jmod.modules_parameters 1;#P inlet 236 -5 15 0;#P connect 36 0 43 0;#P connect 43 0 41 0;#P fasten 23 0 36 0 -39 86 -140 86;#P connect 43 1 35 0;#P connect 34 0 35 0;#P connect 35 0 41 1;#P fasten 41 0 42 0 -212 454 -140 454;#P connect 42 0 22 0;#P connect 22 0 48 0;#P connect 48 0 15 0;#P connect 15 0 21 0;#P connect 21 0 20 0;#P fasten 8 1 18 0 407 601 -140 601;#P connect 20 0 18 0;#P fasten 33 0 34 0 81 380 -107 380;#P fasten 32 0 34 0 -39 380 -107 380;#P fasten 26 0 37 0 -39 156 -66 156;#P connect 37 0 34 1;#P fasten 17 0 40 0 140 110 126 110 126 17 -39 17;#P connect 40 0 23 0;#P connect 36 1 45 0;#P connect 45 0 26 0;#P connect 37 1 27 0;#P connect 27 0 28 0;#P connect 28 0 29 0;#P connect 29 0 24 0;#P connect 24 0 30 0;#P connect 30 0 31 0;#P fasten 31 7 32 0 66 347 -39 347;#P fasten 31 6 32 0 51 347 -39 347;#P fasten 31 5 32 0 36 347 -39 347;#P fasten 31 4 32 0 21 347 -39 347;#P fasten 31 3 32 0 6 347 -39 347;#P fasten 31 2 32 0 -9 347 -39 347;#P connect 31 0 32 0;#P fasten 31 1 32 0 -24 347 -39 347;#P connect 39 0 40 1;#P connect 23 1 25 0;#P connect 25 0 27 1;#P connect 31 8 33 0;#P fasten 17 0 47 0 140 407 81 407;#P connect 47 0 48 1;#P connect 13 0 47 1;#P fasten 1 0 17 0 241 82 140 82;#P connect 17 0 14 0;#P connect 13 0 14 0;#P connect 47 0 22 1;#P connect 14 0 22 1;#P fasten 11 0 13 0 241 376 173 376;#P fasten 12 0 13 0 363 376 173 376;#P fasten 4 0 19 0 241 152 214 152;#P connect 19 0 13 1;#P connect 49 0 44 0;#P connect 0 0 44 0;#P connect 44 0 8 0;#P connect 8 0 1 0;#P connect 17 1 46 0;#P connect 46 0 4 0;#P connect 19 1 5 0;#P connect 5 0 6 0;#P connect 6 0 7 0;#P connect 7 0 2 0;#P connect 2 0 9 0;#P connect 9 0 10 0;#P fasten 10 1 11 0 256 345 241 345;#P connect 10 0 11 0;#P fasten 10 2 11 0 271 345 241 345;#P connect 1 1 3 0;#P connect 3 0 16 0;#P connect 16 0 5 1;#P connect 3 0 38 0;#P connect 10 8 12 0;#P connect 16 1 15 1;#P connect 85 0 92 0;#P connect 92 0 90 0;#P fasten 72 0 85 0 613 117 512 117;#P connect 83 0 84 0;#P connect 92 1 84 0;#P connect 84 0 90 1;#P fasten 90 0 91 0 440 485 512 485;#P connect 91 0 71 0;#P connect 71 0 96 0;#P connect 96 0 64 0;#P connect 64 0 70 0;#P connect 70 0 69 0;#P fasten 57 1 67 0 1059 632 512 632;#P connect 69 0 67 0;#P fasten 81 0 83 0 613 411 545 411;#P fasten 82 0 83 0 733 411 545 411;#P fasten 75 0 86 0 613 187 586 187;#P connect 86 0 83 1;#P fasten 66 0 89 0 792 141 778 141 778 48 613 48;#P connect 89 0 72 0;#P connect 85 1 93 0;#P connect 93 0 75 0;#P connect 86 1 76 0;#P connect 76 0 77 0;#P connect 77 0 78 0;#P connect 78 0 73 0;#P connect 73 0 79 0;#P connect 79 0 80 0;#P fasten 80 1 81 0 628 378 613 378;#P connect 80 0 81 0;#P fasten 80 2 81 0 643 378 613 378;#P fasten 80 3 81 0 658 378 613 378;#P fasten 80 4 81 0 673 378 613 378;#P fasten 80 5 81 0 688 378 613 378;#P fasten 80 6 81 0 703 378 613 378;#P fasten 80 7 81 0 718 378 613 378;#P connect 88 0 89 1;#P connect 72 1 74 0;#P connect 74 0 76 1;#P connect 80 8 82 0;#P fasten 66 0 95 0 792 438 733 438;#P connect 95 0 96 1;#P connect 62 0 95 1;#P fasten 50 0 66 0 893 113 792 113;#P connect 66 0 63 0;#P connect 62 0 63 0;#P connect 95 0 71 1;#P connect 63 0 71 1;#P fasten 61 0 62 0 1015 407 825 407;#P fasten 60 0 62 0 893 407 825 407;#P fasten 53 0 68 0 893 183 866 183;#P connect 68 0 62 1;#P connect 44 1 57 0;#P connect 57 0 50 0;#P connect 66 1 94 0;#P connect 94 0 53 0;#P connect 68 1 54 0;#P connect 54 0 55 0;#P connect 55 0 56 0;#P connect 56 0 51 0;#P connect 51 0 58 0;#P connect 58 0 59 0;#P fasten 59 2 60 0 923 376 893 376;#P connect 59 0 60 0;#P fasten 59 1 60 0 908 376 893 376;#P connect 50 1 52 0;#P connect 52 0 65 0;#P connect 65 0 54 1;#P connect 52 0 87 0;#P connect 59 8 61 0;#P connect 65 1 64 1;#P pop;#P newobj 84 119 77 196617 p trig_mapping;#P window linecount 0;#N vpatcher 83 99 1147 764;#P button 521 26 15 0;#P window setfont "Sans Serif" 9.;#P window linecount 1;#N vpatcher 20 52 325 290;#P origin 8 0;#P window setfont "Sans Serif" 9.;#P window linecount 0;#P newex 79 152 29 196617 t 1 l;#P newex 79 131 50 196617 zl slice 2;#P newex 39 106 50 196617 gate 2 1;#P inlet 79 83 15 0;#P outlet 39 183 15 0;#P inlet 126 53 15 0;#P window linecount 2;#P comment 105 92 158 196617 in case there's no int/float/menu parameter;#P window linecount 1;#P newex 39 83 21 196617 t 2;#P fasten 2 0 0 0 131 75 44 75;#P connect 7 0 5 0;#P connect 0 0 5 0;#P fasten 7 1 3 0 103 178 44 178;#P connect 5 0 3 0;#P connect 4 0 5 1;#P connect 5 1 6 0;#P connect 6 0 7 0;#P pop;#P newobj 112 500 231 196617 p noparam;#P window linecount 0;#N vpatcher 20 52 440 328;#P origin 8 0;#P outlet 59 199 15 0;#P window setfont "Sans Serif" 9.;#P newex 59 176 71 196617 t <separator>;#P window linecount 1;#P newex 59 153 34 196617 sel 0;#P newex 59 130 42 196617 i;#N counter;#X flags 0 0;#P newobj 91 106 66 196617 counter;#P newex 39 61 30 196617 t 0 b;#P window linecount 0;#P newex 91 63 23 196617 t b;#P inlet 39 36 15 0;#P inlet 91 39 15 0;#P comment 122 60 158 196617 in case there's no int/float/menu parameter;#P connect 2 0 4 0;#P connect 4 1 6 0;#P connect 6 0 7 0;#P connect 7 0 8 0;#P connect 8 0 9 0;#P connect 1 0 3 0;#P connect 3 0 5 0;#P connect 5 0 6 1;#P fasten 4 0 5 3 44 93 138 93;#P pop;#P newobj 333 424 56 196617 p noparam;#P window linecount 1;#P newex 834 140 37 196617 zl rev;#P newex 493 139 37 196617 zl rev;#P newex 213 144 37 196617 zl rev;#P window linecount 0;#P newex 493 44 351 196617 t b b;#P newex 40 173 82 196617 t <separator> b;#P newex 112 451 37 196617 zl rev;#P newex 40 423 82 196617 zl join;#P newex 213 75 50 196617 zl reg;#P newex 253 54 73 196617 r $0_mod;#P newex 558 163 72 196617 s $0_mod;#P newex 186 190 37 196617 t l l;#P newex 112 121 111 196617 t b l;#P newex 112 400 67 196617 zl group 255;#P newex 145 378 51 196617 gate;#P newex 339 347 21 196617 t 0;#P newex 213 348 21 196617 t 1;#P newex 213 326 136 196617 sel msg_float msg_int menu;#P newex 213 303 53 196617 zl nth 7;#P newex 213 258 72 196617 sprintf %s%s;#P newex 213 235 59 196617 zl rev;#P newex 213 212 59 196617 pack s s;#P newex 213 166 47 196617 zl iter 1;#P newex 262 166 80 196617 route symbol;#N coll jmod.namespace 1;#P newobj 213 281 111 196617 coll jmod.namespace 1;#N coll jmod.modules_messages 1;#P newobj 213 97 157 196617 coll jmod.modules_messages 1;#P newex 112 477 290 196617 zl join;#P newex 112 547 37 196617 zl rev;#P newex 112 570 72 196617 prepend store;#P newex 466 186 37 196617 t l l;#N coll jmod.cont_mapper_outs 1;#P newobj 112 597 151 196617 coll jmod.cont_mapper_outs 1;#P newex 392 117 111 196617 t b l;#P newex 542 184 111 196617 t s s;#P newex 112 525 541 196617 zl join;#P newex 392 424 67 196617 zl group 255;#P newex 425 374 51 196617 gate;#P newex 619 343 21 196617 t 0;#P newex 493 344 21 196617 t 1;#P newex 493 322 136 196617 sel msg_float msg_int menu;#P newex 493 299 53 196617 zl nth 7;#P newex 493 71 176 196617 t dump clear;#P newex 493 254 72 196617 sprintf %s%s;#P newex 493 231 59 196617 zl rev;#P newex 493 208 59 196617 pack s s;#P newex 493 162 47 196617 zl iter 1;#P newex 542 117 65 196617 route symbol;#N coll jmod.namespace 1;#P newobj 493 277 111 196617 coll jmod.namespace 1;#N coll jmod.modules_parameters 1;#P newobj 493 93 157 196617 coll jmod.modules_parameters 1;#P newex 734 446 37 196617 zl rev;#P newex 734 469 72 196617 prepend store;#P newex 807 186 37 196617 t l l;#N coll jmod.cont_mapper_ins 1;#P newobj 734 493 151 196617 coll jmod.cont_mapper_ins 1;#P newex 733 117 111 196617 t b l;#P newex 883 184 109 196617 t s s;#P newex 734 424 258 196617 zl join;#P newex 734 398 67 196617 zl group 255;#P newex 766 374 51 196617 gate;#P newex 960 344 21 196617 t 0;#P newex 834 344 24 196617 t 1;#P newex 834 322 136 196617 sel msg_float msg_int menu;#P newex 834 299 53 196617 zl nth 7;#P newex 834 71 171 196617 t dump clear;#P newex 834 254 72 196617 sprintf %s%s;#P newex 834 231 59 196617 zl rev;#P newex 834 208 59 196617 pack s s;#P newex 834 162 47 196617 zl iter 1;#P newex 883 162 80 196617 route symbol;#N coll jmod.namespace 1;#P newobj 834 277 111 196617 coll jmod.namespace 1;#N coll jmod.modules_returns 1;#P newobj 834 93 157 196617 coll jmod.modules_returns 1;#P inlet 493 25 15 0;#P connect 57 0 64 0;#P connect 64 0 62 0;#P fasten 44 0 57 0 218 116 117 116;#P connect 55 0 56 0;#P connect 64 1 56 0;#P connect 56 0 62 1;#P fasten 62 0 63 0 45 445 117 445;#P connect 63 0 43 0;#P connect 43 0 70 0;#P connect 70 0 36 0;#P connect 36 0 42 0;#P connect 42 0 41 0;#P fasten 29 1 39 0 664 590 117 590;#P connect 41 0 39 0;#P fasten 53 0 55 0 218 371 150 371;#P fasten 54 0 55 0 344 371 150 371;#P fasten 47 0 58 0 218 186 191 186;#P connect 58 0 55 1;#P fasten 38 0 61 0 397 140 383 140 383 47 218 47;#P connect 61 0 44 0;#P connect 57 1 66 0;#P connect 66 0 47 0;#P connect 58 1 48 0;#P connect 48 0 49 0;#P connect 49 0 50 0;#P connect 50 0 45 0;#P connect 45 0 51 0;#P connect 51 0 52 0;#P fasten 52 2 53 0 302 345 218 345;#P connect 52 0 53 0;#P fasten 52 1 53 0 260 345 218 345;#P connect 60 0 61 1;#P connect 44 1 46 0;#P connect 46 0 48 1;#P fasten 38 0 69 0 397 402 338 402;#P connect 69 0 70 1;#P connect 52 3 54 0;#P connect 34 0 69 1;#P fasten 22 0 38 0 498 112 397 112;#P connect 38 0 35 0;#P connect 34 0 35 0;#P connect 69 0 43 1;#P connect 35 0 43 1;#P fasten 33 0 34 0 624 367 430 367;#P fasten 32 0 34 0 498 367 430 367;#P fasten 25 0 40 0 498 182 471 182;#P connect 40 0 34 1;#P connect 0 0 65 0;#P connect 71 0 65 0;#P connect 65 0 29 0;#P connect 29 0 22 0;#P connect 38 1 67 0;#P connect 67 0 25 0;#P connect 40 1 26 0;#P connect 26 0 27 0;#P connect 27 0 28 0;#P connect 28 0 23 0;#P connect 23 0 30 0;#P connect 30 0 31 0;#P fasten 31 1 32 0 540 341 498 341;#P connect 31 0 32 0;#P fasten 31 2 32 0 582 341 498 341;#P connect 22 1 24 0;#P connect 24 0 37 0;#P connect 37 0 26 1;#P connect 24 0 59 0;#P connect 31 3 33 0;#P connect 37 1 36 1;#P fasten 1 0 17 0 839 112 738 112;#P connect 17 0 14 0;#P connect 13 0 14 0;#P connect 14 0 15 0;#P connect 15 0 21 0;#P connect 21 0 20 0;#P connect 20 0 18 0;#P fasten 8 1 18 0 1000 488 739 488;#P fasten 12 0 13 0 965 367 771 367;#P fasten 11 0 13 0 839 367 771 367;#P fasten 4 0 19 0 839 182 812 182;#P connect 19 0 13 1;#P connect 65 1 8 0;#P connect 8 0 1 0;#P connect 17 1 68 0;#P connect 68 0 4 0;#P connect 19 1 5 0;#P connect 5 0 6 0;#P connect 6 0 7 0;#P connect 7 0 2 0;#P connect 2 0 9 0;#P connect 9 0 10 0;#P connect 10 0 11 0;#P fasten 10 2 11 0 923 341 839 341;#P fasten 10 1 11 0 881 341 839 341;#P connect 1 1 3 0;#P connect 3 0 16 0;#P connect 16 0 5 1;#P connect 10 3 12 0;#P connect 16 1 15 1;#P pop;#P newobj 96 98 79 196617 p cont_mapping;#P outlet 26 158 15 0;#P newex 16 136 50 196617 deferlow;#P newex 16 74 170 196617 t b b dump;#P window linecount 1;#N vpatcher 295 75 802 563;#P window setfont "Sans Serif" 9.;#P newex 358 192 69 196617 t s 1;#P button 341 295 15 0;#P window linecount 1;#P newex 358 294 27 196617 + 1;#P newex 186 363 72 196617 prepend store;#P newex 186 341 50 196617 zl join;#P newex 186 315 86 196617 t s s;#P newex 318 317 50 196617 maximum;#N coll jmod.modules_instances 1;#P newobj 80 398 147 196617 coll jmod.modules_instances 1;#P newex 80 370 72 196617 prepend store;#P newex 80 349 50 196617 append 0;#P newex 80 71 69 196617 route symbol;#N coll jmod.modules_attributes 1;#P newobj 34 48 150 196617 coll jmod.modules_attributes 1;#P window linecount 0;#N vpatcher 151 59 344 335;#P window setfont "Sans Serif" 9.;#P window linecount 1;#P newex 99 105 47 196617 zl sub 47;#P outlet 55 212 15 0;#P newex 15 188 50 196617 gate 2;#P window linecount 0;#P newex 99 157 27 196617 + 1;#P newex 99 133 27 196617 > 1;#P newex 55 59 54 196617 t s s;#P newex 99 83 40 196617 atoi;#P outlet 15 211 15 0;#P inlet 55 37 15 0;#P connect 5 0 6 0;#P connect 6 0 1 0;#P connect 0 0 3 0;#P connect 3 0 6 1;#P connect 6 1 7 0;#P connect 3 1 2 0;#P connect 2 0 8 0;#P fasten 8 1 4 0 141 127 104 127;#P connect 4 0 5 0;#P pop;#P newobj 80 116 94 196617 p 2slashs?;#P newex 358 266 30 196617 - 49;#P newex 358 242 49 196617 route 47;#P newex 358 216 40 196617 atoi;#P newex 80 93 50 196617 tosymbol;#P newex 164 141 98 196617 regexp (.*)(\\\\/.*);#P newex 186 167 182 196617 zl ecils 1;#P inlet 34 29 15 0;#P connect 0 0 8 0;#P connect 8 1 9 0;#P connect 9 0 3 0;#P connect 3 0 7 0;#P connect 7 0 10 0;#P connect 10 0 11 0;#P connect 11 0 12 0;#P fasten 14 1 12 0 267 391 85 391;#P fasten 16 0 12 0 191 391 85 391;#P connect 7 1 2 0;#P connect 2 1 1 0;#P connect 1 0 14 0;#P connect 14 0 15 0;#P connect 15 0 16 0;#P fasten 13 0 15 1 323 337 231 337;#P fasten 19 1 13 0 422 313 323 313;#P connect 18 0 13 0;#P fasten 12 0 13 0 85 419 305 419 305 305 323 305;#P connect 17 0 18 0;#P connect 1 1 19 0;#P connect 19 0 4 0;#P connect 4 0 5 0;#P connect 5 0 6 0;#P connect 6 0 17 0;#P connect 17 0 13 1;#P fasten 19 1 13 1 422 313 363 313;#P pop;#P newobj 96 149 90 196617 p count_instances;#P window linecount 0;#P newex 16 177 103 196617 s jmod.analysis.done;#N vpatcher 60 124 667 585;#P origin -52 27;#P window setfont "Sans Serif" 9.;#P window linecount 0;#N coll jmod.modules_instances 1;#P newobj 16 380 147 196617 coll jmod.modules_instances 1;#N coll jmod.modules_returns 1;#P newobj 16 347 139 196617 coll jmod.modules_returns 1;#N coll jmod.modules_messages 1;#P newobj 18 315 148 196617 coll jmod.modules_messages 1;#N coll jmod.modules_parameters 1;#P newobj 18 285 157 196617 coll jmod.modules_parameters 1;#P newex 18 219 72 196617 prepend store;#P newex 18 80 150 196617 s jmod.remote.modules.browse;#P newex 18 197 154 196617 r jmod.remote.modules.register;#N coll jmod.modules_attributes 1;#P newobj 18 251 150 196617 coll jmod.modules_attributes 1;#P newex 18 55 360 196617 t b b clear;#P inlet 18 30 15 0;#P window linecount 1;#P newex 193 191 72 196617 prepend store;#P newex 193 167 77 196617 zl join;#N coll jmod.namespace 1;#P newobj 193 215 111 196617 coll jmod.namespace 1;#P newex 193 131 51 196617 zl slice 1;#P newex 193 98 166 196617 r jmod.remote.namespace.register;#P newex 193 77 162 196617 s jmod.remote.namespace.browse;#P fasten 7 2 14 0 373 341 21 341;#P lcolor 6;#P fasten 7 2 15 0 373 373 21 373;#P lcolor 6;#P connect 6 0 7 0;#P connect 7 0 10 0;#P connect 9 0 11 0;#P fasten 7 2 8 0 373 242 23 242;#P lcolor 6;#P connect 11 0 8 0;#P fasten 7 2 12 0 373 275 23 275;#P lcolor 6;#P fasten 7 2 13 0 373 309 23 309;#P lcolor 6;#P connect 7 1 0 0;#P connect 1 0 2 0;#P connect 2 0 4 0;#P connect 4 0 5 0;#P fasten 7 2 3 0 373 211 198 211;#P lcolor 6;#P connect 5 0 3 0;#P fasten 1 0 4 1 198 122 265 122;#P pop;#P newobj 820 72 66 196617 p namespace;#P newex 16 48 815 196617 t b dump dump dump b;#N vpatcher 10 59 270 254;#P window setfont "Sans Serif" 9.;#P window linecount 1;#P newex 30 116 29 196617 gate;#P newex 76 80 113 196617 jmod.equals return;#P window linecount 0;#P newex 76 58 50 196617 zl nth 3;#P outlet 30 144 15 0;#P inlet 49 28 15 0;#P connect 3 0 4 0;#P connect 4 0 1 0;#P connect 0 0 4 1;#P connect 0 0 2 0;#P connect 2 0 3 0;#P pop;#P newobj 703 198 81 196617 p filt_returns;#P newex 665 100 69 196617 route symbol;#P newex 665 330 48 196617 zl join;#P newex 665 122 48 196617 t b b s;#P newex 665 304 154 196617 zl reg;#N coll jmod.modules_returns 1;#P newobj 665 376 139 196617 coll jmod.modules_returns 1;#P newex 665 354 72 196617 prepend store;#P newex 703 279 67 196617 zl group 255;#P newex 703 247 50 196617 zl slice 1;#P newex 703 226 98 196617 jmod.oscroute;#P newex 703 143 116 196617 t dump s s;#N coll jmod.modules_attributes 1;#P newobj 619 75 150 196617 coll jmod.modules_attributes 1;#N coll jmod.namespace 1;#P newobj 703 172 107 196617 coll jmod.namespace 1;#N vpatcher 10 59 270 254;#P window setfont "Sans Serif" 9.;#P window linecount 1;#P newex 30 116 29 196617 gate;#P newex 76 80 113 196617 jmod.equals message;#P window linecount 0;#P newex 76 58 50 196617 zl nth 3;#P outlet 30 144 15 0;#P inlet 49 28 15 0;#P connect 3 0 4 0;#P connect 4 0 1 0;#P connect 0 0 4 1;#P connect 0 0 2 0;#P connect 2 0 3 0;#P pop;#P newobj 502 199 81 196617 p filt_messages;#P newex 464 101 69 196617 route symbol;#P newex 464 331 48 196617 zl join;#P newex 464 123 48 196617 t b b s;#P newex 464 305 154 196617 zl reg;#N coll jmod.modules_messages 1;#P newobj 464 377 148 196617 coll jmod.modules_messages 1;#P newex 464 355 72 196617 prepend store;#P newex 502 280 67 196617 zl group 255;#P newex 502 248 50 196617 zl slice 1;#P newex 502 227 98 196617 jmod.oscroute;#P newex 502 144 116 196617 t dump s s;#N coll jmod.modules_attributes 1;#P newobj 418 76 150 196617 coll jmod.modules_attributes 1;#N coll jmod.namespace 1;#P newobj 502 171 107 196617 coll jmod.namespace 1;#N vpatcher 10 59 270 254;#P window setfont "Sans Serif" 9.;#P window linecount 1;#P newex 30 116 29 196617 gate;#P newex 76 80 113 196617 jmod.equals parameter;#P window linecount 0;#P newex 76 58 50 196617 zl nth 3;#P outlet 30 144 15 0;#P inlet 49 28 15 0;#P connect 3 0 4 0;#P connect 4 0 1 0;#P connect 0 0 4 1;#P connect 0 0 2 0;#P connect 2 0 3 0;#P pop;#P newobj 301 203 71 196617 p filt_params;#P newex 263 105 69 196617 route symbol;#P newex 263 335 48 196617 zl join;#P newex 263 127 48 196617 t b b s;#P newex 263 309 154 196617 zl reg;#N coll jmod.modules_parameters 1;#P newobj 263 381 157 196617 coll jmod.modules_parameters 1;#P newex 263 359 72 196617 prepend store;#P newex 301 284 67 196617 zl group 255;#P newex 301 252 50 196617 zl slice 1;#P newex 301 231 98 196617 jmod.oscroute;#P newex 301 148 116 196617 t dump s s;#N coll jmod.modules_attributes 1;#P newobj 217 80 150 196617 coll jmod.modules_attributes 1;#N coll jmod.namespace 1;#P newobj 301 177 107 196617 coll jmod.namespace 1;#P inlet 16 27 15 0;#P connect 0 0 40 0;#P connect 40 0 44 0;#P connect 44 0 45 0;#P connect 45 0 42 0;#P connect 45 0 46 0;#P fasten 44 1 48 0 101 94 89 94;#P connect 44 1 47 0;#P fasten 44 2 43 0 181 142 101 142;#P connect 40 1 2 0;#P connect 2 1 12 0;#P connect 12 0 10 0;#P connect 10 0 9 0;#P connect 9 0 11 0;#P connect 11 0 7 0;#P connect 7 0 8 0;#P connect 10 2 3 0;#P connect 3 0 1 0;#P connect 1 0 13 0;#P connect 13 0 4 0;#P connect 4 0 5 0;#P connect 5 0 6 0;#P fasten 10 1 6 0 287 276 306 276;#P connect 6 0 11 1;#P fasten 3 1 4 1 359 171 394 171;#P connect 3 2 9 1;#P connect 40 2 15 0;#P connect 15 1 25 0;#P connect 25 0 23 0;#P connect 23 0 22 0;#P connect 22 0 24 0;#P connect 24 0 20 0;#P connect 20 0 21 0;#P connect 23 2 16 0;#P connect 16 0 14 0;#P connect 14 0 26 0;#P connect 26 0 17 0;#P connect 17 0 18 0;#P fasten 23 1 19 0 488 272 507 272;#P connect 18 0 19 0;#P connect 19 0 24 1;#P fasten 16 1 17 1 560 166 595 166;#P connect 16 2 22 1;#P connect 40 3 28 0;#P connect 28 1 38 0;#P connect 38 0 36 0;#P connect 36 0 35 0;#P connect 35 0 37 0;#P connect 37 0 33 0;#P connect 33 0 34 0;#P connect 36 2 29 0;#P connect 29 0 27 0;#P connect 27 0 39 0;#P connect 39 0 30 0;#P connect 30 0 31 0;#P connect 31 0 32 0;#P fasten 36 1 32 0 689 271 708 271;#P connect 32 0 37 1;#P fasten 29 1 30 1 761 165 796 165;#P connect 29 2 35 1;#P connect 40 4 41 0;#P pop;#P newobj 33 83 50 196617 p analyse;#P connect 2 0 1 0;#P connect 1 1 0 0;#P connect 1 0 0 0;#P connect 0 0 16 0;#P connect 16 0 17 0;#P connect 1 2 3 0;#P connect 3 0 4 0;#P connect 4 0 5 0;#P connect 4 1 6 0;#P connect 4 2 7 0;#P connect 4 3 8 0;#P connect 4 4 9 0;#P connect 3 1 10 0;#P connect 10 0 11 0;#P fasten 16 0 12 0 38 151 388 151;#P fasten 20 0 12 0 742 175 388 175;#P fasten 13 0 12 0 438 151 388 151;#P fasten 19 0 12 0 638 175 388 175;#P fasten 15 0 12 0 538 151 388 151;#P fasten 14 0 12 0 488 151 388 151;#P connect 11 0 12 0;#P fasten 10 4 13 0 588 123 438 123;#P connect 10 1 13 0;#P fasten 10 4 14 0 588 123 488 123;#P connect 10 2 14 0;#P fasten 10 4 15 0 588 123 538 123;#P connect 10 3 15 0;#P connect 10 5 18 0;#P connect 18 0 19 0;#P connect 18 1 20 0;#P pop;