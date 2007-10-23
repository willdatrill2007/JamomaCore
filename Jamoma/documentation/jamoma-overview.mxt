max v2;#N vpatcher 5 48 242 291;#P origin 0 -20;#P window setfont "Sans Serif" 9.;#P window linecount 1;#N vpatcher 309 61 765 351;#P origin 0 14;#P window setfont "Sans Serif" 9.;#P window linecount 1;#P message 187 219 73 196617 jcom.slider.js;#P message 187 201 101 196617 jcom.jsui_3dknob.js;#P hidden newex 243 260 64 196617 prepend help;#P hidden newex 243 284 45 196617 pcontrol;#P message 187 184 116 196617 jcom.jsui_texttoggle.js;#P message 187 166 111 196617 jcom.jsui_multigain.js;#P window linecount 2;#P comment 21 89 373 196617 Some of the scripts are used for particular purposes in specific modules or components. Only javascripts that might be of more general use are listed here.;#B frgb 67 65 107;#P window linecount 1;#P message 34 184 112 196617 jcom.js_systeminfo.js;#P window linecount 0;#P message 34 166 78 196617 jcom.js_link.js;#P window setfont "Sans Serif" 18.;#P window linecount 1;#P comment 20 33 189 196626 Jamoma javascripts;#B frgb 255 255 255;#P window setfont "Sans Serif" 9.;#P comment 21 59 277 196617 Overview of javascripts used in Jamoma;#B frgb 255 255 255;#P user panel 14 17 292 63;#X brgb 67 65 107;#X frgb 128 11 10;#X border 0;#X rounded 0;#X shadow 0;#X done;#P window setfont "Sans Serif" 18.;#P window linecount 0;#P comment 172 134 189 196626 JSUI;#B frgb 67 65 107;#P comment 20 134 113 196626 JS;#B frgb 67 65 107;#P hidden connect 5 0 11 0;#P hidden connect 6 0 11 0;#P hidden connect 8 0 11 0;#P hidden connect 9 0 11 0;#P hidden connect 12 0 11 0;#P hidden connect 13 0 11 0;#P hidden connect 11 0 10 0;#P pop;#P newobj 36 171 75 196617 p javascripts;#N vpatcher 128 58 1104 608;#P window setfont "Sans Serif" 9.;#P window linecount 1;#P message 300 436 68 196617 jcom.atomidi;#P message 300 418 68 196617 jcom.miditoa;#P message 612 255 114 196617 jcom.ambimonitor2xyz;#P message 496 255 114 196617 jcom.xyz2ambimonitor;#P window linecount 0;#P message 743 432 104 196617 jcom.sur.ambi2UHJ~;#P message 743 449 104 196617 jcom.sur.UHJ2ambi~;#P window linecount 1;#P comment 739 417 110 196617 Ambisonics Converter:;#B frgb 67 65 107;#P window linecount 0;#P message 47 384 126 196617 jcom.modules_dumper;#P message 47 401 126 196617 jcom.parameters_dumper;#P message 47 418 119 196617 jcom.messages_dumper;#P message 47 436 119 196617 jcom.returns_dumper;#P hidden button 31 470 15 0;#P message 47 453 119 196617 jcom.attributes_dumper;#P message 47 470 85 196617 jcom.all_dumper;#P window setfont "Sans Serif" 18.;#P comment 28 355 210 196626 Namespace analysis;#B frgb 67 65 107;#P window setfont "Sans Serif" 9.;#P message 300 255 81 196617 jcom.cpu_timer;#P message 497 368 94 196617 jcom.numberslider;#P message 740 328 70 196617 jcom.spray%;#P message 833 287 91 196617 jcom.float2char%;#P message 739 287 91 196617 jcom.char2float%;#P comment 732 187 192 196617 Jitter related things:;#B frgb 67 65 107;#P window setfont "Sans Serif" 18.;#P comment 732 157 164 196626 Video;#B frgb 67 65 107;#P window setfont "Sans Serif" 9.;#P message 300 345 103 196617 jcom.list2parameter;#P message 739 267 97 196617 jcom.checkplanes%;#P message 828 308 86 196617 jcom.luma2rgb%;#P message 740 308 86 196617 jcom.rgb2luma%;#P message 497 386 60 196617 jcom.vtext;#P message 743 395 55 196617 jcom.dbap;#P comment 737 379 192 196617 Distance based amplitude panning:;#B frgb 67 65 107;#P window setfont "Sans Serif" 18.;#P comment 738 353 164 196626 Spatialisation;#B frgb 67 65 107;#P window setfont "Sans Serif" 9.;#P message 300 309 50 196617 jcom.init;#P message 497 349 80 196617 jcom.textslider;#P comment 490 327 192 196617 LCD-based widgets:;#B frgb 67 65 107;#P window setfont "Sans Serif" 18.;#P comment 490 297 164 196626 Widgets;#B frgb 67 65 107;#P window setfont "Sans Serif" 9.;#P comment 489 187 192 196617 Geometric convertions:;#B frgb 67 65 107;#P hidden newex 662 363 64 196617 prepend help;#P hidden newex 662 387 45 196617 pcontrol;#P message 570 219 71 196617 jcom.deg2rad;#P message 496 219 71 196617 jcom.rad2deg;#P window setfont "Sans Serif" 18.;#P comment 489 157 164 196626 Geometry;#B frgb 67 65 107;#P window setfont "Sans Serif" 9.;#P message 300 399 60 196617 jcom.thru~;#P message 497 452 81 196617 jcom.multi.out~;#P message 497 434 75 196617 jcom.multi.in~;#P comment 490 418 192 196617 Audio multi cable;#B frgb 67 65 107;#P message 48 334 120 196617 jcom.pluggo.configassist;#P hidden newex 146 516 64 196617 prepend help;#P hidden newex 146 540 45 196617 pcontrol;#P comment 265 187 192 196617 Stuff that might come in handy:;#B frgb 67 65 107;#P window setfont "Sans Serif" 18.;#P comment 265 157 210 196626 Utilities;#B frgb 67 65 107;#P window setfont "Sans Serif" 9.;#P comment 27 294 192 196617 Turning modules into pluggos;#B frgb 67 65 107;#P window setfont "Sans Serif" 18.;#P comment 27 264 210 196626 Pluggo;#B frgb 67 65 107;#P window setfont "Sans Serif" 9.;#P comment 24 187 192 196617 Components required:;#B frgb 67 65 107;#P window setfont "Sans Serif" 18.;#P comment 24 157 210 196626 Building new modules;#B frgb 67 65 107;#P window setfont "Sans Serif" 9.;#P message 300 381 54 196617 jcom.thru;#P message 48 316 45 196617 jcom.pp;#P message 300 363 54 196617 jcom.post;#P message 300 327 51 196617 jcom.line;#P message 45 219 48 196617 jcom.gui;#P message 300 291 87 196617 jcom.filewatcher;#P message 300 273 76 196617 jcom.filesaver;#P message 739 249 81 196617 jcom.autosize%;#P message 300 237 77 196617 jcom.autoscale;#P message 739 230 105 196617 jcom.pwindow.mouse;#P message 496 273 43 196617 jcom.pi;#P message 45 237 103 196617 jcom.parameter.gain;#P message 739 212 83 196617 jcom.autocrop%;#P message 612 237 112 196617 jcom.ambimonitor2aed;#P message 496 237 112 196617 jcom.aed2ambimonitor;#P message 300 219 66 196617 jcom.absdiff;#P window linecount 2;#P comment 15 74 402 196617 "component" is a Jamoma nickname for a functionality used in one or more algorithms or modules \, implemented as a patch abstraction rather than an external or javascript.;#B frgb 67 65 107;#P comment 15 104 373 196617 Some of the components are used for particular purposes in specific modules. Only components that might be of more general use are listed here.;#B frgb 67 65 107;#P window setfont "Sans Serif" 18.;#P window linecount 1;#P comment 14 23 203 196626 Jamoma components;#B frgb 255 255 255;#P window setfont "Sans Serif" 9.;#P comment 15 49 277 196617 Overview of components used in Jamoma;#B frgb 255 255 255;#P user panel 8 7 292 63;#X brgb 67 65 107;#X frgb 128 11 10;#X border 0;#X rounded 0;#X shadow 0;#X done;#P hidden connect 64 0 62 0;#P hidden connect 65 0 62 0;#P hidden connect 66 0 62 0;#P hidden connect 63 0 62 0;#P hidden connect 61 0 62 0;#P hidden connect 62 0 60 0;#P hidden connect 72 0 28 0;#P hidden connect 73 0 28 0;#P hidden connect 60 0 28 0;#P hidden connect 58 0 28 0;#P hidden connect 43 0 28 0;#P hidden connect 16 0 28 0;#P hidden connect 19 0 28 0;#P hidden connect 20 0 28 0;#P hidden connect 18 0 28 0;#P hidden connect 17 0 28 0;#P hidden connect 15 0 28 0;#P hidden connect 14 0 28 0;#P hidden connect 12 0 28 0;#P hidden connect 29 0 28 0;#P hidden connect 32 0 28 0;#P hidden connect 31 0 28 0;#P hidden connect 33 0 28 0;#P hidden connect 51 0 28 0;#P hidden connect 5 0 28 0;#P hidden connect 9 0 28 0;#P hidden connect 28 0 27 0;#P hidden connect 69 0 38 0;#P hidden connect 68 0 38 0;#P hidden connect 57 0 38 0;#P hidden connect 47 0 38 0;#P hidden connect 46 0 38 0;#P hidden connect 35 0 38 0;#P hidden connect 36 0 38 0;#P hidden connect 42 0 38 0;#P hidden connect 10 0 38 0;#P hidden connect 6 0 38 0;#P hidden connect 7 0 38 0;#P hidden connect 11 0 38 0;#P hidden connect 8 0 38 0;#P hidden connect 48 0 38 0;#P hidden connect 49 0 38 0;#P hidden connect 13 0 38 0;#P hidden connect 50 0 38 0;#P hidden connect 54 0 38 0;#P hidden connect 55 0 38 0;#P hidden connect 56 0 38 0;#P hidden connect 71 0 38 0;#P hidden connect 70 0 38 0;#P hidden connect 38 0 37 0;#P pop;#P newobj 36 197 75 196617 p components;#N vpatcher 310 62 938 581;#P window setfont "Sans Serif" 9.;#P window linecount 0;#P message 185 135 73 196617 jcom.aed2xyz;#P message 185 369 73 196617 jcom.xyz2aed;#P message 185 171 83 196617 jcom.colorspace;#P message 185 351 58 196617 jcom.stats;#P message 185 189 113 196617 jcom.cubic_interpolate;#P message 185 387 72 196617 jcom.velocity;#P message 185 225 63 196617 jcom.delta2;#P message 185 207 57 196617 jcom.delta;#P message 185 261 55 196617 jcom.gang;#P hidden newex 69 480 64 196617 prepend help;#P hidden newex 69 500 45 196617 pcontrol;#P window setfont "Sans Serif" 18.;#P comment 25 92 129 196626 Jamoma Core;#B frgb 67 65 107;#P window setfont "Sans Serif" 9.;#P message 186 462 71 196617 jcom.teabox~;#P message 186 445 98 196617 jcom.teabox.count~;#P message 186 428 91 196617 jcom.teabox.bits~;#P message 37 351 55 196617 jcom.send;#P message 37 333 64 196617 jcom.return;#P message 37 315 67 196617 jcom.remote;#P message 37 297 69 196617 jcom.receive;#P message 37 279 58 196617 jcom.ramp;#P message 37 261 82 196617 jcom.parameter;#P message 37 243 55 196617 jcom.out~;#P message 37 225 49 196617 jcom.out;#P message 37 207 73 196617 jcom.message;#P message 37 189 50 196617 jcom.init;#P message 37 153 43 196617 jcom.in;#P message 37 171 49 196617 jcom.in~;#P message 37 135 50 196617 jcom.hub;#P window setfont "Sans Serif" 18.;#P comment 466 92 112 196626 Video;#B frgb 67 65 107;#P window setfont "Sans Serif" 9.;#P message 484 135 62 196617 jcom.sum%;#P window setfont "Sans Serif" 18.;#P comment 25 32 189 196626 Jamoma externals;#B frgb 255 255 255;#P window setfont "Sans Serif" 9.;#P comment 26 58 277 196617 Overview of externals included in the Jamoma distribution.;#B frgb 255 255 255;#P user panel 19 16 292 63;#X brgb 67 65 107;#X frgb 128 11 10;#X border 0;#X rounded 0;#X shadow 0;#X done;#P window setfont "Sans Serif" 18.;#P comment 172 92 112 196626 Control;#B frgb 67 65 107;#P comment 319 92 112 196626 Audio;#B frgb 67 65 107;#P window setfont "Sans Serif" 9.;#P hidden newex 356 305 64 196617 prepend help;#P hidden newex 356 325 45 196617 pcontrol;#P message 185 243 63 196617 jcom.equals;#P message 185 279 74 196617 jcom.oscroute;#P message 185 315 60 196617 jcom.round;#P message 185 333 59 196617 jcom.route;#P message 185 297 55 196617 jcom.pass;#P message 185 153 65 196617 jcom.change;#P window linecount 1;#P message 335 171 68 196617 jcom.meter~;#P message 335 189 87 196617 jcom.saturation~;#P message 335 135 59 196617 jcom.gain~;#P message 335 153 72 196617 jcom.limiter~;#P message 335 207 66 196617 jcom.xfade~;#P hidden connect 32 0 38 0;#P hidden connect 31 0 38 0;#P hidden connect 30 0 38 0;#P hidden connect 29 0 38 0;#P hidden connect 28 0 38 0;#P hidden connect 27 0 38 0;#P hidden connect 26 0 38 0;#P hidden connect 25 0 38 0;#P hidden connect 24 0 38 0;#P hidden connect 23 0 38 0;#P hidden connect 21 0 38 0;#P hidden connect 22 0 38 0;#P hidden connect 20 0 38 0;#P hidden connect 38 0 37 0;#P hidden connect 46 0 12 0;#P hidden connect 47 0 12 0;#P hidden connect 42 0 12 0;#P hidden connect 44 0 12 0;#P hidden connect 41 0 12 0;#P hidden connect 40 0 12 0;#P hidden connect 43 0 12 0;#P hidden connect 45 0 12 0;#P hidden connect 18 0 12 0;#P hidden connect 10 0 12 0;#P hidden connect 9 0 12 0;#P hidden connect 8 0 12 0;#P hidden connect 7 0 12 0;#P hidden connect 6 0 12 0;#P hidden connect 5 0 12 0;#P hidden connect 0 0 12 0;#P hidden connect 1 0 12 0;#P hidden connect 2 0 12 0;#P hidden connect 3 0 12 0;#P hidden connect 4 0 12 0;#P hidden connect 33 0 12 0;#P hidden connect 34 0 12 0;#P hidden connect 35 0 12 0;#P hidden connect 39 0 12 0;#P hidden connect 12 0 11 0;#P pop;#P newobj 37 145 74 196617 p externals;#N vpatcher 339 141 989 466;#P origin 0 15;#P window setfont "Sans Serif" 9.;#P comment 437 118 192 196617 Communication in Jamoma;#B frgb 67 65 107;#P comment 437 249 192 196617 Mapping example;#B frgb 67 65 107;#P comment 28 118 192 196617 Jamoma and Pluggo;#B frgb 67 65 107;#P window setfont "Sans Serif" 18.;#P comment 229 22 189 196626 Video;#B frgb 67 65 107;#P window setfont "Sans Serif" 9.;#P message 437 84 91 196617 WindowShade.mxt;#P message 437 159 99 196617 wildcard_demo.mxt;#P message 229 60 98 196617 Video_Example.mxt;#P message 437 267 63 196617 teatrix.mxt;#P message 28 60 107 196617 simpleRecorder~.mxt;#P message 437 137 116 196617 separate-interface.mxt;#P message 437 60 115 196617 Scripting_Example.mxt;#P message 28 137 96 196617 Pluggo_Simple.mxt;#P message 28 159 104 196617 Pluggo_Complex.mxt;#P message 437 223 116 196617 jmod.qlist.example.mxt;#P message 437 181 119 196617 jmod.pattr.example.mxt;#P hidden newex 283 313 66 196617 prepend load;#P message 437 202 148 196617 jmod.pattr.communication.mxt;#P hidden newex 283 334 45 196617 pcontrol;#P window setfont "Sans Serif" 18.;#P comment 437 22 189 196626 Control;#B frgb 67 65 107;#P comment 28 22 189 196626 Audio;#B frgb 67 65 107;#P hidden connect 3 0 4 0;#P hidden connect 6 0 4 0;#P hidden connect 5 0 4 0;#P hidden connect 7 0 4 0;#P hidden connect 8 0 4 0;#P hidden connect 9 0 4 0;#P hidden connect 10 0 4 0;#P hidden connect 11 0 4 0;#P hidden connect 12 0 4 0;#P hidden connect 13 0 4 0;#P hidden connect 15 0 4 0;#P hidden connect 14 0 4 0;#P hidden connect 4 0 2 0;#P pop;#P newobj 37 119 74 196617 p examples;#N vpatcher 50 44 1092 636;#P origin 30 13;#P window setfont "Sans Serif" 9.;#P window linecount 1;#P message 882 285 128 196617 jmod.phidgets.interfacekit;#P message 881 268 140 196617 jmod.phidgets.accelerometer;#P message 881 536 75 196617 jmod.condition;#P window linecount 0;#P message 881 165 78 196617 jmod.messages;#P window linecount 1;#P message 881 302 62 196617 jmod.uc-33;#P message 664 139 98 196617 jmod.gl.edgeblend%;#P window linecount 0;#P message 664 190 85 196617 jmod.gl.text2d%;#P message 472 158 106 196617 jmod.movie_player%;#P window linecount 1;#P message 664 173 86 196617 jmod.gl.td.rota%;#P message 664 122 105 196617 jmod.gl.alphamixer%;#P window linecount 0;#P message 881 399 88 196617 jmod.cue_trigger;#P window linecount 1;#P message 881 233 77 196617 jmod.multicast;#P message 41 518 56 196617 jmod.vst~;#P window linecount 0;#P message 38 414 56 196617 jmod.vst~;#P message 881 216 83 196617 jmod.mouse.gdif;#P message 881 131 73 196617 jmod.bcf2000;#P window linecount 1;#P message 243 148 88 196617 jmod.sur.rolloff~;#P message 472 216 62 196617 jmod.blur%;#P window linecount 0;#P message 38 363 88 196617 jmod.multidelay~;#P window linecount 1;#P comment 642 217 155 196617 Others;#B frgb 67 65 107;#P message 664 250 94 196617 jmod.background%;#P message 664 233 89 196617 jmod.similarity%;#P message 664 284 97 196617 jmod.motiongram%;#P message 881 517 94 196617 jmod.file_browser;#P message 41 501 64 196617 jmod.noise~;#P message 41 484 59 196617 jmod.sine~;#P message 41 467 86 196617 jmod.fluidsynth~;#P comment 17 446 192 196617 Synths;#B frgb 67 65 107;#P message 664 156 102 196617 jmod.gl.videoplane%;#P comment 642 108 192 196617 OpenGL;#B frgb 67 65 107;#P message 472 519 66 196617 jmod.palette;#P message 472 501 86 196617 jmod.colorpicker;#P comment 450 486 192 196617 Colors;#B frgb 67 65 107;#P message 472 427 69 196617 jmod.yfade%;#P message 472 141 74 196617 jmod.record%;#P window linecount 0;#P message 472 461 90 196617 jmod.keyscreen%;#P message 472 444 93 196617 jmod.chromakey%;#P message 881 319 66 196617 jmod.wacom;#P message 881 450 91 196617 jmod.trig_mapper;#P message 38 329 82 196617 jmod.equalizer~;#P message 881 433 93 196617 jmod.cont_mapper;#P message 38 295 61 196617 jmod.echo~;#P message 243 191 115 196617 jmod.sur.speaker.setup;#P comment 217 172 192 196617 Loudspeaker setup and correction;#B frgb 67 65 107;#P hidden newex 358 438 64 196617 prepend help;#P hidden newex 358 462 45 196617 pcontrol;#P window setfont "Sans Serif" 18.;#P comment 207 78 189 196626 Audio - spatialisation;#B frgb 67 65 107;#P window setfont "Sans Serif" 9.;#P comment 217 108 192 196617 General modules;#B frgb 67 65 107;#P message 243 363 111 196617 jmod.sur.ambi.adjust~;#P message 243 285 87 196617 jmod.sur.output~;#P message 243 268 99 196617 jmod.sur.multi.out~;#P message 243 251 93 196617 jmod.sur.multi.in~;#P comment 217 234 192 196617 Multicable;#B frgb 67 65 107;#P comment 217 312 192 196617 Ambisonics;#B frgb 67 65 107;#P message 243 208 121 196617 jmod.sur.speaker.delay~;#P message 243 131 92 196617 jmod.sur.doppler~;#P message 243 346 113 196617 jmod.sur.ambi.decode~;#P message 243 329 121 196617 jmod.sur.ambi.encodeM~;#P message 38 214 66 196617 jmod.scope~;#P message 472 199 66 196617 jmod.avg4%;#P message 472 284 79 196617 jmod.fluoride%;#P message 472 267 77 196617 jmod.emboss%;#P hidden newex 159 540 64 196617 prepend help;#P hidden newex 159 564 45 196617 pcontrol;#P comment 450 378 192 196617 Compositing;#B frgb 67 65 107;#P comment 450 183 192 196617 Filters;#B frgb 67 65 107;#P comment 450 108 192 196617 Video I/O;#B frgb 67 65 107;#P message 472 410 69 196617 jmod.xfade%;#P message 472 124 66 196617 jmod.input%;#P message 472 250 64 196617 jmod.edge%;#P message 472 335 62 196617 jmod.plur%;#P comment 857 477 155 196617 Others;#B frgb 67 65 107;#P comment 857 344 155 196617 Controlling Jamoma;#B frgb 67 65 107;#P message 881 182 62 196617 jmod.midiin;#P comment 857 108 155 196617 Data I/O;#B frgb 67 65 107;#P message 881 199 63 196617 jmod.mouse;#P message 472 318 72 196617 jmod.orsize%;#P window setfont "Sans Serif" 18.;#P comment 857 78 152 196626 Control;#B frgb 67 65 107;#P comment 450 78 189 196626 Video;#B frgb 67 65 107;#P window setfont "Sans Serif" 9.;#P comment 17 242 192 196617 Audio FX;#B frgb 67 65 107;#P comment 17 172 192 196617 Mixing and Metering;#B frgb 67 65 107;#P comment 17 108 192 196617 Audio I/O;#B frgb 67 65 107;#P window setfont "Sans Serif" 18.;#P comment 17 78 189 196626 Audio;#B frgb 67 65 107;#P window setfont "Sans Serif" 9.;#P message 881 250 64 196617 jmod.oscnet;#P message 472 301 70 196617 jmod.mblur%;#P message 881 416 68 196617 jmod.mapper;#P message 881 148 43 196617 jmod.hi;#P message 38 346 72 196617 jmod.limiter~;#P message 38 131 63 196617 jmod.input~;#P message 472 352 67 196617 jmod.wake%;#P message 38 397 87 196617 jmod.saturation~;#P message 38 261 76 196617 jmod.degrade~;#P message 881 499 67 196617 jmod.qmetro;#P message 38 148 69 196617 jmod.output~;#P message 881 365 67 196617 jmod.control;#P message 38 278 65 196617 jmod.delay~;#P message 38 312 65 196617 jmod.filter~;#P message 881 382 65 196617 jmod.cuelist;#P message 472 393 54 196617 jmod.op%;#P message 38 380 83 196617 jmod.noisegate~;#P message 472 233 74 196617 jmod.brcosa%;#P message 664 267 74 196617 jmod.motion%;#P message 38 197 85 196617 jmod.crossfade~;#P hidden newex 715 484 64 196617 prepend help;#P hidden newex 715 506 45 196617 pcontrol;#P window setfont "Sans Serif" 18.;#P comment 15 16 189 196626 Jamoma modules;#B frgb 255 255 255;#P window setfont "Sans Serif" 9.;#P comment 16 42 277 196617 Overview of modules;#B frgb 255 255 255;#P user panel 9 0 292 63;#X brgb 67 65 107;#X frgb 128 11 10;#X border 0;#X rounded 0;#X shadow 0;#X done;#P hidden connect 89 0 45 0;#P hidden connect 81 0 45 0;#P hidden connect 82 0 45 0;#P hidden connect 83 0 45 0;#P hidden connect 19 0 45 0;#P hidden connect 14 0 45 0;#P hidden connect 5 0 45 0;#P hidden connect 16 0 45 0;#P hidden connect 12 0 45 0;#P hidden connect 11 0 45 0;#P hidden connect 20 0 45 0;#P hidden connect 8 0 45 0;#P hidden connect 17 0 45 0;#P hidden connect 49 0 45 0;#P hidden connect 66 0 45 0;#P hidden connect 68 0 45 0;#P hidden connect 94 0 45 0;#P hidden connect 95 0 45 0;#P hidden connect 45 0 44 0;#P hidden connect 65 0 63 0;#P hidden connect 59 0 63 0;#P hidden connect 51 0 63 0;#P hidden connect 50 0 63 0;#P hidden connect 58 0 63 0;#P hidden connect 57 0 63 0;#P hidden connect 56 0 63 0;#P hidden connect 53 0 63 0;#P hidden connect 52 0 63 0;#P hidden connect 91 0 63 0;#P hidden connect 63 0 62 0;#P hidden connect 105 0 4 0;#P hidden connect 102 0 4 0;#P hidden connect 100 0 4 0;#P hidden connect 99 0 4 0;#P hidden connect 97 0 4 0;#P hidden connect 96 0 4 0;#P hidden connect 93 0 4 0;#P hidden connect 92 0 4 0;#P hidden connect 86 0 4 0;#P hidden connect 87 0 4 0;#P hidden connect 85 0 4 0;#P hidden connect 84 0 4 0;#P hidden connect 73 0 4 0;#P hidden connect 71 0 4 0;#P hidden connect 72 0 4 0;#P hidden connect 69 0 4 0;#P hidden connect 70 0 4 0;#P hidden connect 40 0 4 0;#P hidden connect 38 0 4 0;#P hidden connect 39 0 4 0;#P hidden connect 37 0 4 0;#P hidden connect 34 0 4 0;#P hidden connect 32 0 4 0;#P hidden connect 31 0 4 0;#P hidden connect 15 0 4 0;#P hidden connect 24 0 4 0;#P hidden connect 22 0 4 0;#P hidden connect 21 0 4 0;#P hidden connect 10 0 4 0;#P hidden connect 13 0 4 0;#P hidden connect 18 0 4 0;#P hidden connect 23 0 4 0;#P hidden connect 9 0 4 0;#P hidden connect 7 0 4 0;#P hidden connect 6 0 4 0;#P hidden connect 47 0 4 0;#P hidden fasten 46 0 4 0 473 263;#P hidden connect 48 0 4 0;#P hidden connect 67 0 4 0;#P hidden connect 74 0 4 0;#P hidden connect 76 0 4 0;#P hidden connect 77 0 4 0;#P hidden connect 79 0 4 0;#P hidden connect 90 0 4 0;#P hidden connect 98 0 4 0;#P hidden connect 101 0 4 0;#P hidden connect 103 0 4 0;#P hidden connect 104 0 4 0;#P hidden connect 106 0 4 0;#P hidden connect 107 0 4 0;#P hidden connect 4 0 3 0;#P pop;#P newobj 37 93 74 196617 p modules;#P window setfont "Sans Serif" 18.;#P comment 10 26 189 196626 Jamoma;#B frgb 255 255 255;#P window setfont "Sans Serif" 9.;#P window linecount 2;#P comment 11 52 188 196617 Overview of modules \, examples \, externals \, javascripts and components;#B frgb 255 255 255;#P user panel 4 10 205 72;#X brgb 67 65 107;#X frgb 128 11 10;#X border 0;#X rounded 0;#X shadow 0;#X done;#P pop;