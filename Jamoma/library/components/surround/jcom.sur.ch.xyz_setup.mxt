max v2;#N vpatcher 15 81 829 689;#P window setfont "Sans Serif" 9.;#P window linecount 1;#P hidden newex 193 251 189 196617 jcom.list2parameter.mxt;#P objectname list2parameter;#P hidden newex 63 386 48 196617 t b b i;#P hidden newex 63 341 67 196617 loadmess $1;#P hidden newex 63 363 96 196617 if $i1 != 0 then $i1;#P hidden outlet 521 328 15 0;#P window linecount 2;#P hidden newex 120 408 371 196617 sprintf script new parameter newex 391 245 270 196617 jcom.parameter xyz/%ld @type msg_list @description "Position of Nth voice as xyz coodinate.";#P window linecount 1;#P hidden message 63 507 180 196617 script connect parameter 1 prepend 0;#P window linecount 2;#P hidden message 82 451 217 196617 script connect list2parameter 9 parameter 0 \, script connect parameter 0 list2parameter 9;#P window linecount 1;#N thispatcher;#Q end;#P hidden newobj 63 534 61 196617 thispatcher;#P hidden newex 521 301 61 196617 prepend $1;#P objectname prepend;#P hidden newex 291 286 39 196617 pvar Z;#P hidden newex 242 286 40 196617 pvar Y;#P hidden newex 193 286 40 196617 pvar X;#P flonum 221 3 53 9 0 0 8224 3 198 198 198 221 221 221 222 222 222 0 0 0;#P objectname Z;#P flonum 166 3 53 9 0 0 8224 3 198 198 198 221 221 221 222 222 222 0 0 0;#P objectname Y;#P flonum 111 3 53 9 0 0 8224 3 198 198 198 221 221 221 222 222 222 0 0 0;#P objectname X;#P comment 7 5 96 196617 Voice $1:;#B frgb 172 172 172;#P user panel 2 2 275 18;#X brgb 80 80 80;#X frgb 255 255 255;#X border 1;#X rounded 0;#X shadow 0;#X done;#P hidden connect 15 0 14 0;#P hidden connect 14 0 16 0;#P hidden connect 16 0 11 0;#P hidden fasten 10 0 9 0 87 494 68 494;#P hidden connect 11 0 9 0;#P hidden fasten 12 0 9 0 125 494 68 494;#P hidden connect 16 1 10 0;#P hidden connect 16 2 12 0;#P hidden fasten 5 0 17 0 198 311 184 311 184 239 198 239;#P hidden connect 17 0 5 0;#P hidden fasten 6 0 17 1 247 314 178 314 178 235 215 235;#P hidden fasten 7 0 17 2 296 317 173 317 173 231 232 231;#P hidden connect 17 1 6 0;#P hidden connect 17 2 7 0;#P hidden connect 8 0 13 0;#P pop;