max v2;
#N vpatcher 495 44 1444 672;
#P window setfont "Sans Serif" 9.;
#N vpatcher 133 155 1317 885;
#P origin 30 -44;
#P window setfont "Sans Serif" 9.;
#P window linecount 4;
#P newex 944 149 176 196617 jcom.return audio/amplitude/2 @type msg_float @range 0. 1. @description "Instant amplitude of the signal of track 2 (range 0. 1.)";
#P objectname audio/enveloppe/1[1];
#P window linecount 1;
#P newex 944 120 50 196617 gate 1 0;
#P window linecount 3;
#P newex 825 30 248 196617 jcom.parameter audio/enveloppe_follower/2 @type msg_toggle @range 0 1 @description "Turn on/off the enveloppe follower for track 2 of this module";
#P objectname audio/enveloppe_follower/2;
#P window linecount 5;
#P newex 0 137 155 196617 jcom.return audio/amplitude/1 @type msg_float @range 0. 1. @description "Instant amplitude of the signal of track 1 (range 0. 1.)";
#P objectname audio/enveloppe/1;
#P window linecount 2;
#P newex 127 110 39 196617 gate 1 0;
#P window linecount 3;
#P newex 8 21 248 196617 jcom.parameter audio/enveloppe_follower/1 @type msg_toggle @range 0 1 @description "Turn on/off the enveloppe follower for track 1 of this module";
#P objectname audio/enveloppe_follower/1;
#P window linecount 1;
#P message 924 477 40 196617 local 0;
#P comment 604 100 90 196617 defeat the meters;
#P toggle 586 120 15 0;
#P inlet 586 100 15 0;
#P comment 315 72 252 196617 these receive amplitude envelope info from jcom.out~;
#P newex 334 248 22 196617 b 1;
#P window linecount 2;
#P message 334 269 223 196617 recordsprite \, paintrect 66 1 70 4 250 0 0 \, closesprite myPeak1 \, drawsprite myPeak1 0 0;
#P window linecount 1;
#P newex 173 365 36 196617 zl reg;
#P message 69 311 108 196617 deletesprite myPeak1;
#P newex 212 270 93 196617 scale 1 70 35 255;
#P newex 192 291 30 196617 pack;
#P newex 104 252 32 196617 sel 0;
#P newex 104 230 54 196617 split 0 70;
#P newex 104 208 40 196617 peak;
#P window linecount 2;
#P message 192 315 230 196617 recordsprite \, linesegment \$1 1 \$1 3 \$2 255 16 \, closesprite myPeak1 \, drawsprite myPeak1 0 0;
#P window linecount 1;
#P newex 820 245 22 196617 b 1;
#P window linecount 2;
#P message 820 266 223 196617 recordsprite \, paintrect 66 6 70 9 250 0 0 \, closesprite myPeak2 \, drawsprite myPeak2 0 0;
#P window linecount 1;
#P newex 678 353 36 196617 zl reg;
#P message 562 309 108 196617 deletesprite myPeak2;
#P newex 698 267 93 196617 scale 1 70 35 255;
#P newex 678 288 30 196617 pack;
#P newex 656 239 32 196617 sel 0;
#P newex 656 217 54 196617 split 0 70;
#P button 489 119 15 0;
#P window linecount 0;
#P message 489 139 14 196617 0;
#P newex 656 195 40 196617 peak;
#P inlet 489 100 15 0;
#P window linecount 1;
#P message 186 177 130 196617 drawsprite myMask1 \$1 0;
#P number 186 153 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;
#P newex 186 132 116 196617 scale -96 0 0 70 1.035;
#P newex 186 111 34 196617 atodb;
#P flonum 186 92 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;
#P newex 763 393 50 196617 jcom.init;
#P window linecount 0;
#P message 790 181 130 196617 drawsprite myMask2 \$1 0;
#P window linecount 2;
#P message 211 473 224 196617 recordsprite \, paintrect 0 6 70 9 50 50 50 \, closesprite myMask2 \, drawsprite myMask2 0 0;
#P message 438 473 224 196617 recordsprite \, paintrect 0 1 70 4 50 50 50 \, closesprite myMask1 \, drawsprite myMask1 0 0;
#P number 790 157 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;
#P window linecount 1;
#P newex 790 136 116 196617 scale -96 0 0 70 1.035;
#P window linecount 0;
#P newex 790 115 34 196617 atodb;
#P flonum 790 96 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;
#P window linecount 1;
#P newex 790 75 127 196617 jcom.remote __meter__2;
#P newex 186 71 127 196617 jcom.remote __meter__1;
#P window linecount 0;
#P newex 764 432 144 196617 b 11;
#P window linecount 1;
#P newex 555 596 30 196617 pack;
#P newex 585 574 93 196617 scale 1 70 35 255;
#P message 555 618 162 196617 linesegment \$1 6 \$1 8 \$2 255 16;
#P message 610 547 150 196617 linesegment \$1 6 \$1 8 250 0 0;
#P newex 566 524 54 196617 split 1 65;
#P newex 763 597 30 196617 pack;
#P newex 793 575 93 196617 scale 1 70 35 255;
#P message 763 619 162 196617 linesegment \$1 1 \$1 3 \$2 255 16;
#P message 818 548 150 196617 linesegment \$1 1 \$1 3 250 0 0;
#P newex 774 525 54 196617 split 1 65;
#P comment 534 480 79 196617 meter 2 (right);
#P comment 779 483 73 196617 meter 1 (left);
#P newex 567 501 75 196617 jcom.thru.mxt;
#P newex 774 502 75 196617 jcom.thru.mxt;
#P button 763 415 15 0;
#P newex 649 446 40 196617 uzi 70;
#P message 969 439 33 196617 clear;
#P window linecount 0;
#P message 1004 439 93 196617 brgb 170 170 170;
#P outlet 613 699 15 0;
#P window linecount 2;
#P comment 654 41 162 196617 For now we assume two meters - we can make this dynamic later...;
#P window linecount 0;
#P comment 507 100 59 196617 in from lcd;
#P window linecount 2;
#P message 678 312 230 196617 recordsprite \, linesegment \$1 6 \$1 8 \$2 255 16 \, closesprite myPeak2 \, drawsprite myPeak2 0 0;
#P fasten 66 0 67 0 132 132 5 132;
#P connect 53 0 56 0;
#P connect 36 0 51 0;
#P connect 51 0 52 0;
#P connect 52 0 53 0;
#P connect 65 1 66 0;
#P connect 40 0 51 1;
#P fasten 33 0 66 1 191 108 172 108;
#P connect 37 0 57 0;
#P connect 56 0 57 0;
#P connect 50 0 57 0;
#P connect 58 0 57 0;
#P connect 23 0 33 0;
#P connect 33 0 34 0;
#P connect 34 0 35 0;
#P connect 35 0 36 0;
#P connect 36 0 37 0;
#P connect 53 1 54 0;
#P connect 54 0 50 0;
#P connect 22 6 30 0;
#P connect 53 1 55 0;
#P connect 55 0 54 1;
#P connect 52 1 59 0;
#P connect 59 0 58 0;
#P connect 22 7 29 0;
#P connect 38 0 41 0;
#P connect 41 0 40 0;
#P connect 17 0 21 0;
#P connect 21 0 19 0;
#P connect 43 0 46 0;
#P connect 9 0 17 0;
#P connect 6 2 9 0;
#P connect 20 0 21 1;
#P connect 17 0 20 0;
#P connect 61 0 62 0;
#P connect 17 1 18 0;
#P fasten 57 0 3 0 178 688 618 688;
#P fasten 47 0 3 0 683 391 202 391 202 681 618 681;
#P fasten 4 0 3 0 1009 667 618 667;
#P fasten 5 0 3 0 974 665 618 665;
#P fasten 13 0 3 0 823 663 618 663;
#P fasten 14 0 3 0 768 661 618 661;
#P connect 19 0 3 0;
#P connect 18 0 3 0;
#P fasten 29 0 3 0 443 664 618 664;
#P fasten 30 0 3 0 216 672 618 672;
#P fasten 64 0 3 0 929 684 618 684;
#P fasten 22 8 6 0 766 453 654 431;
#P connect 28 0 39 0;
#P connect 39 0 42 0;
#P connect 42 0 43 0;
#P connect 43 1 44 0;
#P connect 44 0 0 0;
#P connect 31 0 47 0;
#P connect 48 0 47 0;
#P connect 0 0 47 0;
#P connect 46 0 47 0;
#P connect 40 0 39 1;
#P connect 43 1 45 0;
#P connect 45 0 44 1;
#P connect 32 0 7 0;
#P connect 12 0 16 0;
#P connect 16 0 14 0;
#P connect 7 0 22 0;
#P connect 6 2 8 0;
#P connect 8 0 12 0;
#P connect 15 0 16 1;
#P connect 24 0 25 0;
#P connect 25 0 26 0;
#P connect 26 0 27 0;
#P connect 27 0 28 0;
#P connect 28 0 31 0;
#P connect 12 0 15 0;
#P connect 12 1 13 0;
#P connect 42 1 49 0;
#P connect 49 0 48 0;
#P connect 22 3 64 0;
#P connect 68 1 69 0;
#P fasten 69 0 70 0 949 142 949 142;
#P connect 22 9 5 0;
#P fasten 25 0 69 1 795 113 989 113;
#P connect 22 10 4 0;
#P pop;
#P hidden newobj 4 147 77 196617 p metercontrol;
#P objectname metercontrol;
#P hidden newex 20 404 51 196617 route set;
#P objectname mult_mix_out[4];
#P hidden newex 327 478 51 196617 route set;
#P objectname mult_mix_out[3];
#P user hint 74 191 87 204 "output master gain" 2000 500 0 65535 65535 52428 9 3 0 1 0 0 0;
#P hidden newex 20 450 62 196617 prepend set;
#P objectname mult_mix_out[2];
#P hidden newex 20 347 93 196617 scale 0. 1. 0. 157.;
#P hidden newex 20 429 93 196617 scale 0. 157. 0. 1.;
#P user lcd 4 192 70 10 0 0 0 0 1;
#P user jsui 73 192 13 11 0 0 0 jcom.jsui_3dknob.js 100 200 100 170 170 170;
#P hidden newex 327 502 40 196617 * 0.01;
#P objectname mult_mix_out[1];
#P hidden newex 234 139 193 196617 send $1_FROM_GUI_AUDIO_COMPONENT;
#P hidden newex 234 117 144 196617 prepend audio_meters_freeze;
#P objectname audio_meter_freeze_prepend;
#P user hint 110 191 123 203 mute 2000 500 0 65535 65535 52428 9 3 0 1 0 0 0;
#P user hint 98 191 111 203 bypass 2000 500 0 65535 65535 52428 9 3 0 1 0 0 0;
#P user hint 87 192 100 204 "wet/dry mix" 2000 500 0 65535 65535 52428 9 3 0 1 0 0 0;
#P hidden newex 300 388 40 196617 * 100.;
#P objectname mult_mix_in;
#P hidden newex 327 526 62 196617 prepend set;
#P objectname mult_mix_out;
#P user jsui 86 192 13 11 0 0 0 jcom.jsui_3dknob.js 100 100 200 170 170 170;
#P hidden newex 4 64 22 196617 b 1;
#B color 1;
#P objectname jcom.parameter[4];
#P hidden newex 4 44 166 196617 jcom.message audio/meters/clear;
#B color 1;
#P objectname jcom.parameter[3];
#P user pictctrl 99 192 11 11 jcom.button.bypass.pct 0 0 1 1 26 0 0 0 11 11 128 0 1 1 1 1 1 270;
#P objectname button_bypass;
#P user pictctrl 109 192 11 11 jcom.button.mute.pct 0 0 1 1 26 0 0 0 11 11 128 0 1 1 1 1 1 270;
#P objectname button_mute;
#P user pictctrl 0 190 123 15 jcom.bg.audio-component.pct 0 0 1 0 24 0 0 0 123 15 2 0 1 1 1 1 1 270;
#P noclick;
#P objectname background;
#P window linecount 2;
#P hidden newex 300 272 377 196617 jcom.parameter audio/mute @type msg_toggle @range 0 1 @description "When active\\\, this attribute turns off the module's processing algorithm to save CPU";
#P objectname audio/mute;
#P hidden newex 300 317 439 196617 jcom.parameter audio/bypass @type msg_toggle @range 0 1 @description "When active\\\, this attribute bypasses the module's processing algtorithm\\\, letting audio pass through unaffected.";
#P objectname audio/bypass;
#P hidden newex 300 411 432 196617 jcom.parameter audio/mix @repetitions 0 @ramp linear.sched @type msg_float @range 0 100 @description "Controls the wet/dry mix of the module's processing routine in percent.";
#P objectname audio/mix;
#P hidden newex 53 75 433 196617 jcom.parameter audio/meters/freeze @type msg_toggle @range 0 1 @description "When active\\\, this attribute turns off the signal level meters in the module to conserve CPU.";
#P objectname audio/meters/freeze;
#P window linecount 1;
#P hidden newex 20 367 174 196617 jcom.parameter.gain.mxt audio/gain;
#P objectname pattr_gain;
#P hidden comment 235 159 342 196617 this is sent to the js in the gui so that it can flag the menu item correctly.;
#P hidden connect 9 0 10 0;
#P hidden connect 10 0 28 0;
#P hidden connect 21 2 28 0;
#P hidden connect 28 0 21 0;
#P hidden connect 20 0 23 0;
#P hidden connect 23 0 1 0;
#P hidden connect 1 0 27 0;
#P hidden connect 27 0 22 0;
#P hidden connect 22 0 24 0;
#P hidden connect 2 1 28 1;
#P hidden connect 24 0 20 0;
#P hidden connect 12 0 11 0;
#P hidden connect 4 0 8 0;
#P hidden connect 5 0 7 0;
#P hidden connect 2 1 17 0;
#P hidden connect 17 0 18 0;
#P hidden connect 7 0 5 0;
#P hidden connect 8 0 4 0;
#P hidden connect 11 0 13 0;
#P hidden connect 13 0 3 0;
#P hidden connect 3 0 26 0;
#P hidden connect 26 0 19 0;
#P hidden connect 19 0 12 0;
#P pop;
