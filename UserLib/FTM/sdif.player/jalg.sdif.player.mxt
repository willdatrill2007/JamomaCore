max v2;#N vpatcher 880 434 1592 877;#P origin -28 -10;#P window setfont "Sans Serif" 9.;#P newex 300 299 285 196617 jcom.return data @description "data output in FTM format";#N vpatcher 176 688 776 1088;#P window setfont "Sans Serif" 9.;#P window linecount 1;#P message 411 173 26 196617 loop;#P window linecount 2;#P comment 60 230 138 196617 the play/stop/pause mapping should be improved.;#N comlet Segment beginning;#P outlet 211 259 15 0;#N comlet Segment end;#P outlet 268 259 15 0;#P objectname Segment;#N comlet Speed;#P outlet 325 259 15 0;#P window linecount 1;#P message 411 156 33 196617 locate;#P message 411 138 29 196617 next;#P newex 40 81 354 196617 jcom.oscroute /play /time /pause /beginning /end /speed;#P inlet 40 47 15 0;#P newex 154 146 54 196617 sel 1 0;#P message 187 169 26 196617 play;#P message 40 169 26 196617 play;#P newex 40 146 52 196617 sel 1 0;#P message 154 169 33 196617 pause;#P message 97 169 55 196617 jump \$1;#P message 66 169 26 196617 stop;#P outlet 40 259 15 0;#P window linecount 0;#P comment 408 109 138 196617 control messages still to be implemented:;#P connect 9 0 10 0;#P connect 10 0 5 0;#P connect 5 0 6 0;#P fasten 3 0 1 0 102 222 45 222;#P fasten 4 0 1 0 159 222 45 222;#P fasten 2 0 1 0 71 222 45 222;#P fasten 6 0 1 0 45 222 45 222;#P fasten 7 0 1 0 192 222 45 222;#P fasten 5 1 2 0 66 167 71 167;#P connect 10 1 3 0;#P connect 10 2 8 0;#P connect 8 0 4 0;#P fasten 8 1 7 0 181 167 192 167;#P connect 10 3 15 0;#P connect 10 4 14 0;#P connect 10 5 13 0;#P pop;#P newobj 300 127 95 196617 p player_controls;#N vpatcher 188 104 788 504;#P window setfont "Sans Serif" 9.;#P window linecount 1;#P comment 137 86 67 196617 Stream index;#P outlet 207 305 15 0;#N comlet SDIF stream index;#P inlet 207 83 15 0;#N comlet SDIF file name;#P inlet 264 83 15 0;#P user ftm.mess 264 161 66 15 3 9 255 255 255 0 0 0 1 2 0 0 --> 1;#T _#ftm version 2 2;#T _#scope begin;#T _#absargs $0_ $1_ $2_ $3_ $4_ $5_ $6_ $7_ $8_ $9_;#T _#line "_set $1\, bang";#P user ftm.mess 207 236 54 15 139 9 255 255 255 0 0 0 1 2 0 0 --> 1;#T _#line "_$2 [$1 0]";#P window linecount 0;#N ftm.sdif.info --> 1;#P newobj 264 187 66 196617 ftm.sdif.info;#P comment 284 85 100 196617 SDIF file name;#P connect 5 0 2 0;#P connect 2 0 6 0;#P connect 1 1 2 1;#P connect 4 0 3 0;#P connect 3 0 1 0;#P pop;#P newobj 79 142 140 196617 p get_chosen_stream_name;#P window linecount 3;#P newex 343 236 190 196617 jcom.return time @range 0. 1000000. @clipmode low @description "Current playing position (in milliseconds)";#P window linecount 1;#N vpatcher 189 436 788 956;#P origin 0 37;#P window setfont "Sans Serif" 9.;#P window linecount 1;#P comment 24 451 375 196617 this populates the ubumenu in the GUI;#P comment 24 438 375 196617 /toubu append [stream name] (with [number] rows and [number] columns);#P window linecount 3;#P comment 24 425 251 196617 succeeding output messages of the format;#P window linecount 2;#P comment 143 23 144 196617 inlet: SDIF file name;#P outlet 183 409 15 0;#P window linecount 1;#P newex 128 312 43 196617 pipe 50;#N comlet SDIF file name;#P inlet 123 20 15 0;#P newex 183 383 78 196617 prepend /toubu;#P window linecount 4;#P comment 227 221 137 196617 column number 7 is the number of matrix rows \, and column number 8 is the number of matrix columns.;#P window linecount 3;#P comment 295 381 93 196617 The ftm.sdif.info object causes crash on Windows!!;#P window linecount 2;#P comment 4 128 144 196617 number of rows equals number of streams in the SDIF file;#P comment 194 103 195 196617 ftm.sdif.info outputs a matrix with info on the data in the different streams;#P window linecount 1;#P newex 123 37 30 196617 t s b;#P message 119 269 13 196617 0;#P newex 151 189 43 196617 t 1 l -1;#P newex 129 232 52 196617 metro 50;#P newex 183 260 31 196617 bline;#P window linecount 2;#P newex 183 311 146 196617 sprintf append %s (with %i rows and %i columns);#P window linecount 1;#P message 346 322 33 196617 clear;#P user ftm.mess 183 292 148 15 3 9 255 255 255 0 0 0 1 2 0 0 --> 1;#T _#line "_$2 [$1 0] $2 [$1 7] $2 [$1 8]";#P user ftm.mess 151 135 56 15 3 9 255 255 255 0 0 0 1 2 0 0 --> 1;#T _#line "_($1 rows)";#P message 151 167 37 196617 \$1 \$1;#P user ftm.mess 123 81 95 15 3 9 255 255 255 0 0 0 1 2 0 0 --> 1;#T _#line "_set $1\, bang\, print";#N ftm.sdif.info --> 1;#P newobj 123 103 66 196617 ftm.sdif.info;#P window linecount 5;#P comment 12 270 100 196617 Populate the ubumenu according to the frame definitions in the SDIF file.;#P window linecount 7;#P comment 227 134 147 196617 The first column (0) of the matrix given by ftm.sdif.info holds the frame definitions. The contents of these cells are output one after another \, and sent to a sprintf-object which populates the ubumenu;#P fasten 9 1 12 0 209 285 139 285 139 263 124 263;#P lcolor 1;#P connect 19 0 13 0;#P connect 13 0 3 0;#P connect 3 0 2 0;#P fasten 12 0 20 0 124 290 133 290;#P fasten 12 0 10 0 124 295 113 295 113 215 134 215;#P fasten 11 0 10 0 156 221 134 221;#P connect 2 1 5 0;#P connect 5 0 4 0;#P connect 4 0 11 0;#P fasten 11 1 9 0 172 216 188 216;#P connect 11 2 9 0;#P fasten 10 0 9 0 134 256 188 256;#P connect 9 0 6 0;#P connect 6 0 8 0;#P fasten 20 0 18 0 133 365 188 365;#P connect 8 0 18 0;#P fasten 7 0 18 0 351 369 188 369;#P connect 18 0 21 0;#P fasten 2 1 6 1 156 128 384 128 384 286 326 286;#P fasten 13 1 7 0 148 57 410 57 410 317 351 317;#P pop;#P newobj 11 332 110 196617 p get_stream_names;#P outlet 11 386 15 0;#P user ftm.mess 79 216 70 15 3 9 255 255 255 0 0 0 1 2 0 0 --> 0;#T _#line "_($1 duration)";#P window linecount 3;#P newex 79 234 204 196617 jcom.return duration @range 0. 1000000. @clipmode low @description "Size of the chosen SDIF stream (in milliseconds)";#P user ftm.mess 79 177 127 15 3 9 255 255 255 0 0 0 1 2 0 0 --> 0;#T _#line "_clear\, import $2 $1\, bang";#P user ftm.object 79 195 63 18 3 9 --> 0;#T _#obj 1 track fmat;#T _#obj 2 sequence fmat;#T _#mess 1 events _#2;#T _#obj 3 sequence marker;#T _#mess 1 markers _#3;#T _#obj 4 sequence metric;#T _#mess 1 metric _#4;#T _#obj 5 sequence number;#T _#mess 1 tempo _#5;#T _#def 1 "_track fmat" track1 local;#P window linecount 1;#N ftm.play $track1 --> 0;#T _#scope end;#P newobj 300 157 96 196617 ftm.play $track1;#P newex 11 81 147 196617 jcom.oscroute /file /stream;#P inlet 11 42 15 0;#P objectname inlet;#P message 386 179 14 196617 0;#P newex 386 203 86 196617 prepend /playoff;#P connect 2 0 3 0;#P connect 3 0 10 0;#P fasten 0 0 9 0 391 223 593 223 593 357 16 357;#P connect 10 0 9 0;#P connect 3 1 12 0;#P connect 12 0 6 0;#P connect 6 0 5 0;#P connect 5 0 8 0;#P connect 8 0 7 0;#P fasten 3 0 6 1 16 293 286 293 286 170 201 170;#P fasten 3 0 12 1 16 293 286 293 286 135 214 135;#P fasten 3 2 13 0 152 103 305 103;#P connect 13 0 4 0;#P connect 4 0 14 0;#P connect 13 1 4 1;#P connect 4 1 11 0;#P connect 13 2 4 2;#P connect 13 3 4 3;#P connect 4 2 1 0;#P connect 1 0 0 0;#P pop;