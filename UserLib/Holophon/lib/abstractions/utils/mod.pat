max v2;
#N vpatcher 154 242 264 433;
#P newex 19 124 43 196617 % $1;
#P newex 19 103 43 196617 + $1;
#P newex 19 81 43 196617 % $1;
#P outlet 19 151 15 0;
#P inlet 52 56 15 0;
#P inlet 19 56 15 0;
#P connect 5 0 2 0;
#P connect 4 0 5 0;
#P connect 3 0 4 0;
#P connect 1 0 3 1;
#P connect 1 0 4 1;
#P connect 1 0 5 1;
#P connect 0 0 3 0;
#P pop;
