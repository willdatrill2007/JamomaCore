max v2;
#N vpatcher 123 129 975 632;
#P window setfont "Sans Serif" 9.;
#P window linecount 1;
#P newex 38 233 22 196617 b 1;
#P newex 109 461 31 196617 print;
#N thispatcher;
#Q end;
#P newobj 34 461 60 196617 thispatcher;
#P newex 34 399 203 196617 unpack s 0 0 0 0;
#P newex 34 434 254 196617 sprintf script new %s bpatcher %i %i %i %i 0 0 %s 0;
#P newex 34 378 35 196617 r load;
#P window linecount 2;
#P message 115 241 114 196617 \; max refresh;
#P window linecount 1;
#P newex 134 211 74 196617 prepend set \\\;;
#P newex 38 311 44 196617 jit.qball;
#P newex 38 291 45 196617 delay;
#P newex 38 187 164 196617 t l b l;
#P message 38 74 14 196617 0;
#P button 38 40 22 0;
#P number 38 129 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;
#P newex 38 108 27 196617 + 0;
#P newex 38 332 21 196617 t 1;
#P newex 38 208 40 196617 sel end;
#N coll script 1;
#T flags 1 0;
#T 0 load jmod.input~.mod 300 100 255 120;
#T 1 load jmod.output~.mod 300 220 510 120;
#T 2 load jmod.degrade~.mod 300 340 255 60;
#T 3 load jmod.limi~.mod 300 400 255 60;
#T 4 max refresh;
#P newobj 38 161 64 196617 coll script 1;
#P comment 62 43 121 196617 <- CLICK THIS TO START;
#P connect 13 0 15 0;
#P connect 15 0 14 0;
#P connect 14 0 16 0;
#P connect 6 0 7 0;
#P connect 7 0 4 0;
#P fasten 3 0 4 0 43 354 32 354 32 98 43 98;
#P connect 4 0 5 0;
#P connect 5 0 1 0;
#P connect 1 0 8 0;
#P connect 8 0 2 0;
#P connect 2 1 18 0;
#P connect 18 0 9 0;
#P connect 9 0 10 0;
#P connect 10 0 3 0;
#P connect 7 0 4 1;
#P fasten 5 0 4 1 43 154 78 154 78 102 60 102;
#P connect 15 1 14 1;
#P connect 14 0 17 0;
#P connect 11 0 12 0;
#P connect 8 1 12 0;
#P connect 15 2 14 2;
#P connect 8 2 11 0;
#P connect 15 3 14 3;
#P connect 15 4 14 4;
#P fasten 15 0 14 5 39 421 279 430;
#P pop;
