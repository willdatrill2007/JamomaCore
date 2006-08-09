max v2;#N vpatcher 28 62 305 338;#P window setfont "Sans Serif" 9.;#P window linecount 1;#N vpatcher 75 111 531 401;#P window setfont "Sans Serif" 9.;#P window linecount 1;#P hidden newex 270 248 64 196617 prepend help;#P hidden newex 270 272 45 196617 pcontrol;#P message 211 203 120 196617 jmod.jsui_texttoggle.js;#P message 211 185 116 196617 jmod.jsui_multigain.js;#P window linecount 2;#P comment 45 108 373 196617 Some of the scripts are used for particular purposes in specific modules or components. Only javascripts that might be of more general use are listed here.;#B frgb 67 65 107;#P window linecount 1;#P message 58 203 120 196617 jmod.js_systeminfo.js;#P window linecount 0;#P message 58 185 78 196617 jmod.js_link.js;#P window setfont "Sans Serif" 18.;#P window linecount 1;#P comment 44 52 189 196626 Jamoma javascripts;#B frgb 255 255 255;#P window setfont "Sans Serif" 9.;#P comment 45 78 277 196617 Overview of javascripts used in Jamoma;#B frgb 255 255 255;#P user panel 38 36 292 63;#X brgb 67 65 107;#X frgb 128 11 10;#X border 0;#X rounded 0;#X shadow 0;#X done;#P window setfont "Sans Serif" 18.;#P window linecount 0;#P comment 196 153 189 196626 JSUI;#B frgb 67 65 107;#P comment 44 153 113 196626 JS;#B frgb 67 65 107;#P hidden connect 9 0 11 0;#P hidden connect 8 0 11 0;#P hidden connect 6 0 11 0;#P hidden connect 5 0 11 0;#P hidden connect 11 0 10 0;#P pop;#P newobj 34 192 75 196617 p javascripts;#N vpatcher 304 62 1000 578;#P window setfont "Sans Serif" 9.;#P message 489 376 80 196617 jmod.vtext;#P window linecount 0;#P message 490 470 55 196617 jmod.dbap;#P window linecount 1;#P comment 483 446 192 196617 Distance based amplitude panning:;#B frgb 67 65 107;#P window setfont "Sans Serif" 18.;#P comment 483 414 164 196626 Spatialisation;#B frgb 67 65 107;#P window setfont "Sans Serif" 9.;#P message 293 339 128 196617 jmod.namespace_analyzer;#P message 293 285 50 196617 jmod.init;#P window linecount 0;#P message 293 321 122 196617 jmod.namespace_browse;#P message 489 356 80 196617 jmod.textslider;#P comment 482 334 192 196617 LCD-based widgets:;#B frgb 67 65 107;#P window setfont "Sans Serif" 18.;#P comment 482 304 164 196626 Widgets;#B frgb 67 65 107;#P window setfont "Sans Serif" 9.;#P comment 482 185 192 196617 Geometric convertions:;#B frgb 67 65 107;#P hidden newex 658 314 64 196617 prepend help;#P hidden newex 658 338 45 196617 pcontrol;#P message 489 267 73 196617 jmod.aed2xyz;#P message 489 249 73 196617 jmod.xyz2aed;#P message 489 231 71 196617 jmod.deg2rad;#P message 489 213 71 196617 jmod.rad2deg;#P window setfont "Sans Serif" 18.;#P window linecount 1;#P comment 482 153 164 196626 Geometry;#B frgb 67 65 107;#P window setfont "Sans Serif" 9.;#P message 293 393 60 196617 jmod.thru~;#P window linecount 0;#P message 293 459 81 196617 jmod.multi.out~;#P message 293 441 75 196617 jmod.multi.in~;#P comment 258 412 192 196617 Audio multi cable;#B frgb 67 65 107;#P message 38 403 120 196617 jmod.pluggo.configassist;#P hidden newex 207 449 64 196617 prepend help;#P hidden newex 207 473 45 196617 pcontrol;#P comment 258 183 192 196617 Stuff that might come in handy:;#B frgb 67 65 107;#P window setfont "Sans Serif" 18.;#P comment 258 153 210 196626 Utilities;#B frgb 67 65 107;#P window setfont "Sans Serif" 9.;#P comment 17 363 192 196617 Turning modules into pluggos;#B frgb 67 65 107;#P window setfont "Sans Serif" 18.;#P comment 17 333 210 196626 Pluggo;#B frgb 67 65 107;#P window setfont "Sans Serif" 9.;#P comment 17 183 192 196617 Components required:;#B frgb 67 65 107;#P window setfont "Sans Serif" 18.;#P comment 17 153 210 196626 Building new modules;#B frgb 67 65 107;#P window setfont "Sans Serif" 9.;#P message 293 375 54 196617 jmod.thru;#P message 38 305 69 196617 jmod.return;#P message 38 385 41 196617 jmod.pp;#P message 293 357 49 196617 jmod.post;#P message 38 287 87 196617 jmod.parameter;#P message 38 269 107 196617 jmod.parameter.gain;#P message 38 251 69 196617 jmod.message;#P message 293 303 59 196617 jmod.line;#P message 38 233 46 196617 jmod.hub;#P message 38 215 43 196617 jmod.gui;#P message 293 267 95 196617 jmod.filewatcher;#P message 293 249 82 196617 jmod.filesaver;#P message 293 231 87 196617 jmod.autosize%;#P message 293 213 77 196617 jmod.autoscale;#P window linecount 2;#P comment 15 77 402 196617 "component" is a Jamoma nickname for a functionality used in one or more algorithms or modules \, implemented as a patch abstraction rather than an external or javascript.;#B frgb 67 65 107;#P comment 15 107 373 196617 Some of the components are used for particular purposes in specific modules. Only components that might be of more general use are listed here.;#B frgb 67 65 107;#P window setfont "Sans Serif" 18.;#P window linecount 1;#P comment 14 26 203 196626 Jamoma components;#B frgb 255 255 255;#P window setfont "Sans Serif" 9.;#P comment 15 52 277 196617 Overview of components used in Jamoma;#B frgb 255 255 255;#P user panel 8 10 292 63;#X brgb 67 65 107;#X frgb 128 11 10;#X border 0;#X rounded 0;#X shadow 0;#X done;#P hidden connect 45 0 26 0;#P hidden connect 31 0 26 0;#P hidden connect 29 0 26 0;#P hidden connect 30 0 26 0;#P hidden connect 27 0 26 0;#P hidden connect 5 0 26 0;#P hidden connect 6 0 26 0;#P hidden connect 7 0 26 0;#P hidden connect 8 0 26 0;#P hidden connect 11 0 26 0;#P hidden connect 15 0 26 0;#P hidden connect 18 0 26 0;#P hidden connect 16 0 26 0;#P hidden connect 17 0 26 0;#P hidden connect 14 0 26 0;#P hidden connect 9 0 26 0;#P hidden connect 10 0 26 0;#P hidden connect 12 0 26 0;#P hidden connect 13 0 26 0;#P hidden connect 43 0 26 0;#P hidden connect 44 0 26 0;#P hidden connect 26 0 25 0;#P hidden connect 42 0 38 0;#P hidden connect 36 0 38 0;#P hidden connect 35 0 38 0;#P hidden connect 34 0 38 0;#P hidden connect 33 0 38 0;#P hidden connect 48 0 38 0;#P hidden connect 49 0 38 0;#P hidden connect 38 0 37 0;#P pop;#P newobj 34 218 75 196617 p components;#N vpatcher 62 97 710 549;#P window setfont "Sans Serif" 18.;#P window linecount 0;#P comment 437 113 112 196626 Video;#B frgb 67 65 107;#P window setfont "Sans Serif" 9.;#P message 450 173 62 196617 jmod.sum%;#P window setfont "Sans Serif" 18.;#P comment 44 52 189 196626 Jamoma externals;#B frgb 255 255 255;#P window setfont "Sans Serif" 9.;#P comment 45 78 277 196617 Overview of externals included in the Jamoma distribution.;#B frgb 255 255 255;#P user panel 38 36 292 63;#X brgb 67 65 107;#X frgb 128 11 10;#X border 0;#X rounded 0;#X shadow 0;#X done;#P window setfont "Sans Serif" 18.;#P comment 44 113 112 196626 Control;#B frgb 67 65 107;#P comment 258 113 112 196626 Audio;#B frgb 67 65 107;#P window setfont "Sans Serif" 9.;#P hidden newex 339 325 64 196617 prepend help;#P hidden newex 339 345 45 196617 pcontrol;#P message 54 191 63 196617 jmod.equals;#P message 54 209 74 196617 jmod.oscroute;#P message 54 245 60 196617 jmod.round;#P message 54 263 59 196617 jmod.route;#P message 54 227 55 196617 jmod.pass;#P message 54 173 65 196617 jmod.change;#P window linecount 1;#P message 281 209 68 196617 jmod.meter~;#P message 281 227 87 196617 jmod.saturation~;#P message 281 173 59 196617 jmod.gain~;#P message 281 191 72 196617 jmod.limiter~;#P message 281 245 66 196617 jmod.xfade~;#P hidden connect 4 0 12 0;#P hidden connect 3 0 12 0;#P hidden connect 2 0 12 0;#P hidden connect 1 0 12 0;#P hidden connect 0 0 12 0;#P hidden connect 5 0 12 0;#P hidden connect 6 0 12 0;#P hidden connect 7 0 12 0;#P hidden connect 8 0 12 0;#P hidden connect 9 0 12 0;#P hidden connect 10 0 12 0;#P hidden connect 18 0 12 0;#P hidden connect 12 0 11 0;#P pop;#P newobj 35 166 74 196617 p externals;#N vpatcher 48 97 871 510;#P window setfont "Sans Serif" 18.;#P comment 570 114 189 196626 Control;#B frgb 67 65 107;#P window setfont "Sans Serif" 9.;#P comment 45 144 192 196617 Audio I/O;#B frgb 67 65 107;#P window setfont "Sans Serif" 18.;#P comment 44 114 189 196626 Audio;#B frgb 67 65 107;#P pop;#P newobj 35 140 74 196617 p examples;#N vpatcher 308 61 1229 622;#P origin 30 0;#P window setfont "Sans Serif" 9.;#P window linecount 0;#P message 38 419 123 196617 jmod.multi_filterM~.mod;#P message 38 400 115 196617 jmod.multi_filter~.mod;#P message 707 310 114 196617 jmod.cont_mapper.mod;#P message 38 347 82 196617 jmod.echo~.mod;#P message 262 188 136 196617 jmod.sur.speaker.setup.mod;#P comment 236 169 192 196617 Loudspeaker setup and correction;#B frgb 67 65 107;#P hidden newex 401 460 64 196617 prepend help;#P hidden newex 401 484 45 196617 pcontrol;#P window setfont "Sans Serif" 18.;#P comment 226 91 189 196626 Audio - spatialisation;#B frgb 67 65 107;#P window setfont "Sans Serif" 9.;#P comment 236 121 192 196617 General modules;#B frgb 67 65 107;#P message 262 380 132 196617 jmod.sur.ambi.adjust~.mod;#P message 262 293 108 196617 jmod.sur.output~.mod;#P message 262 275 120 196617 jmod.sur.multi.out~.mod;#P message 262 257 114 196617 jmod.sur.multi.in~.mod;#P comment 236 240 192 196617 Multicable;#B frgb 67 65 107;#P comment 236 327 192 196617 Ambisonics;#B frgb 67 65 107;#P message 262 206 142 196617 jmod.sur.speaker.delay~.mod;#P message 262 144 113 196617 jmod.sur.doppler~.mod;#P message 262 362 134 196617 jmod.sur.ambi.decode~.mod;#P message 262 344 134 196617 jmod.sur.ambi.encode~.mod;#P message 38 239 82 196617 jmod.scope~.mod;#P message 491 205 95 196617 jmod.avg4%.mod;#P message 491 277 105 196617 jmod.fluoride%.mod;#P message 491 259 93 196617 jmod.emboss%.mod;#P hidden newex 178 533 64 196617 prepend help;#P hidden newex 178 557 45 196617 pcontrol;#P window linecount 1;#P comment 466 397 192 196617 Compositing;#B frgb 67 65 107;#P comment 460 184 192 196617 Filters;#B frgb 67 65 107;#P comment 460 121 192 196617 Video I/O;#B frgb 67 65 107;#P message 491 431 90 196617 jmod.xfade%.mod;#P message 491 144 87 196617 jmod.input%.mod;#P message 491 241 85 196617 jmod.edge%.mod;#P message 491 349 83 196617 jmod.plur%.mod;#P window linecount 0;#P comment 683 340 192 196617 Others;#B frgb 67 65 107;#P comment 683 235 192 196617 Controlling Jamoma;#B frgb 67 65 107;#P message 707 144 75 196617 jmod.midi.mod;#P comment 683 121 192 196617 Data I/O;#B frgb 67 65 107;#P message 707 162 80 196617 jmod.mouse.mod;#P message 491 331 93 196617 jmod.orsize%.mod;#P window setfont "Sans Serif" 18.;#P comment 683 91 189 196626 Control;#B frgb 67 65 107;#P comment 460 91 189 196626 Video;#B frgb 67 65 107;#P window setfont "Sans Serif" 9.;#P comment 16 275 192 196617 Audio FX;#B frgb 67 65 107;#P comment 16 196 192 196617 Mixing and Metering;#B frgb 67 65 107;#P comment 16 121 192 196617 Audio I/O;#B frgb 67 65 107;#P window setfont "Sans Serif" 18.;#P comment 15 91 189 196626 Audio;#B frgb 67 65 107;#P window setfont "Sans Serif" 9.;#P message 707 198 85 196617 jmod.oscnet.mod;#P message 491 295 91 196617 jmod.mblur%.mod;#P message 707 292 89 196617 jmod.mapper.mod;#P message 707 180 64 196617 jmod.hi.mod;#P message 38 438 93 196617 jmod.limiter~.mod;#P message 38 144 84 196617 jmod.input~.mod;#P message 491 367 88 196617 jmod.wake%.mod;#P message 38 492 108 196617 jmod.saturation~.mod;#P message 38 294 97 196617 jmod.degrade~.mod;#P message 707 362 88 196617 jmod.qmetro.mod;#P message 38 162 90 196617 jmod.output~.mod;#P window linecount 1;#P message 707 256 88 196617 jmod.control.mod;#P message 38 330 86 196617 jmod.delay~.mod;#P message 38 364 86 196617 jmod.filter~.mod;#P message 38 382 94 196617 jmod.filterM~.mod;#P message 38 312 105 196617 jmod.degradeM~.mod;#P message 707 274 86 196617 jmod.cuelist.mod;#P message 492 412 75 196617 jmod.op%.mod;#P message 38 456 104 196617 jmod.noisegate~.mod;#P message 491 223 95 196617 jmod.brcosa%.mod;#P window linecount 0;#P message 38 474 112 196617 jmod.noisegateM~.mod;#P window linecount 1;#P message 491 313 95 196617 jmod.motion%.mod;#P window linecount 0;#P message 38 221 106 196617 jmod.crossfade~.mod;#P window linecount 1;#P hidden newex 659 460 64 196617 prepend help;#P hidden newex 659 484 45 196617 pcontrol;#P window setfont "Sans Serif" 18.;#P comment 15 29 189 196626 Jamoma modules;#B frgb 255 255 255;#P window setfont "Sans Serif" 9.;#P comment 16 55 277 196617 Overview of modules;#B frgb 255 255 255;#P user panel 9 13 292 63;#X brgb 67 65 107;#X frgb 128 11 10;#X border 0;#X rounded 0;#X shadow 0;#X done;#P hidden connect 72 0 48 0;#P hidden connect 71 0 48 0;#P hidden connect 69 0 48 0;#P hidden connect 52 0 48 0;#P hidden connect 20 0 48 0;#P hidden connect 7 0 48 0;#P hidden connect 9 0 48 0;#P hidden connect 23 0 48 0;#P hidden connect 13 0 48 0;#P hidden connect 14 0 48 0;#P hidden connect 15 0 48 0;#P hidden connect 12 0 48 0;#P hidden connect 19 0 48 0;#P hidden connect 5 0 48 0;#P hidden connect 17 0 48 0;#P hidden connect 22 0 48 0;#P hidden connect 48 0 47 0;#P hidden connect 55 0 66 0;#P hidden connect 56 0 66 0;#P hidden connect 59 0 66 0;#P hidden connect 60 0 66 0;#P hidden connect 61 0 66 0;#P hidden connect 53 0 66 0;#P hidden connect 54 0 66 0;#P hidden connect 62 0 66 0;#P hidden connect 68 0 66 0;#P hidden connect 66 0 65 0;#P hidden connect 70 0 4 0;#P hidden connect 51 0 4 0;#P hidden fasten 49 0 4 0 492 276;#P hidden connect 50 0 4 0;#P hidden connect 6 0 4 0;#P hidden connect 8 0 4 0;#P hidden connect 10 0 4 0;#P hidden connect 26 0 4 0;#P hidden connect 21 0 4 0;#P hidden connect 16 0 4 0;#P hidden connect 11 0 4 0;#P hidden connect 24 0 4 0;#P hidden connect 25 0 4 0;#P hidden connect 27 0 4 0;#P hidden connect 18 0 4 0;#P hidden connect 34 0 4 0;#P hidden connect 35 0 4 0;#P hidden connect 37 0 4 0;#P hidden connect 40 0 4 0;#P hidden connect 42 0 4 0;#P hidden connect 41 0 4 0;#P hidden connect 43 0 4 0;#P hidden connect 4 0 3 0;#P pop;#P newobj 35 114 74 196617 p modules;#P window setfont "Sans Serif" 18.;#P comment 30 38 189 196626 Jamoma;#B frgb 255 255 255;#P window setfont "Sans Serif" 9.;#P window linecount 2;#P comment 31 64 180 196617 Overview of modules \, examples \, externals \, javascripts and components;#B frgb 255 255 255;#P user panel 24 22 205 72;#X brgb 67 65 107;#X frgb 128 11 10;#X border 0;#X rounded 0;#X shadow 0;#X done;#P pop;