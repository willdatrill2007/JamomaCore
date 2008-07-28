max v2;
#N vpatcher 270 64 867 605;
#P origin -22 0;
#P window setfont "Sans Serif" 9.;
#P window linecount 1;
#P newex 191 488 348 9109513 jcom.return z * @description "Acceleration z value from Phidgets device";
#P message 57 214 52 9109513 getStatus;
#P message 67 233 50 9109513 getSerial;
#P message 45 195 55 9109513 getVersion;
#P newex 191 462 348 9109513 jcom.return y * @description "Acceleration y value from Phidgets device";
#P button 45 108 15 0;
#P number 191 107 35 9 0 0 0 139 0 0 0 221 221 221 222 222 222 0 0 0;
#P message 191 153 91 9109513 setSampleRate \$1;
#P newex 191 325 45 9109513 route ax;
#P newex 272 357 100 9109513 print accelerometer;
#P newex 191 357 71 9109513 unpack 0. 0. 0.;
#P newex 191 301 111 9109513 PhidgetAccelerometer;
#P comment 232 108 36 9109513 in ms;
#P comment 203 128 153 9109513 -1 gives the device sample rate;
#P newex 191 434 348 9109513 jcom.return x * @description "Acceleration x value from Phidgets device";
#P newex 118 105 41 9109513 sel 1 0;
#P message 154 153 29 9109513 stop;
#P message 118 153 33 9109513 start;
#P newex 45 57 229 9109513 jcom.oscroute /init /status /sample_rate;
#P inlet 45 33 15 0;
#P connect 0 0 1 0;
#P connect 1 0 14 0;
#P connect 14 0 16 0;
#P connect 14 0 18 0;
#P connect 14 0 17 0;
#P connect 1 1 4 0;
#P connect 4 0 2 0;
#P connect 4 1 3 0;
#P connect 1 2 13 0;
#P connect 13 0 12 0;
#P fasten 17 0 8 0 72 274 196 274;
#P fasten 18 0 8 0 62 265 196 265;
#P fasten 16 0 8 0 50 255 196 255;
#P fasten 3 0 8 0 159 234 196 234;
#P fasten 2 0 8 0 123 234 196 234;
#P fasten 12 0 8 0 196 234 196 234;
#P connect 8 0 11 0;
#P connect 11 0 9 0;
#P connect 9 0 5 0;
#P connect 9 1 15 0;
#P connect 9 2 19 0;
#P fasten 11 1 10 0 231 349 277 349;
#P pop;
