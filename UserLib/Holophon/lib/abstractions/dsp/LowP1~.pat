max v2;
#N vpatcher 604 146 930 406;
#P outlet 54 198 15 0;
#P window setfont "Sans Serif" 9.;
#P newex 54 174 165 9109513 biquad~ 0.00452 0. 0. -0.99548 0.;
#P newex 178 150 81 9109513 expr -(1. - $f1);
#P newex 85 126 48 9109513 clip 0. 1.;
#P newex 85 102 55 9109513 / 3.14159;
#N comlet signal;
#P inlet 54 54 15 0;
#N comlet cutoff freq;
#P inlet 126 54 15 0;
#N vpatcher 154 103 554 403;
#P window setfont "Sans Serif" 9.;
#P newex 121 120 122 9109513 expr 3.15159/($i1 * .5);
#P button 105 121 15 0;
#P newex 105 82 58 9109513 dspstate~;
#P newex 105 51 45 9109513 loadbang;
#P inlet 32 38 15 0;
#P inlet 69 37 15 0;
#P newex 69 127 19 9109513 t f;
#P newex 69 160 62 9109513 * 0.000142;
#P outlet 69 194 15 0;
#P connect 3 0 2 0;
#P fasten 7 0 1 0 110 148 74 148;
#P connect 2 0 1 0;
#P connect 1 0 0 0;
#P connect 5 0 6 0;
#P connect 4 0 6 0;
#P connect 6 0 7 0;
#P connect 6 1 8 0;
#P connect 8 0 1 1;
#P pop;
#P newobj 85 78 51 9109513 p hz->rad;
#P connect 2 0 6 0;
#P connect 6 0 7 0;
#P fasten 2 0 0 0 59 73 90 73;
#P connect 0 0 3 0;
#P connect 3 0 4 0;
#P connect 4 0 6 1;
#P connect 1 0 0 1;
#P fasten 4 0 5 0 90 146 183 146;
#P connect 5 0 6 4;
#P pop;
