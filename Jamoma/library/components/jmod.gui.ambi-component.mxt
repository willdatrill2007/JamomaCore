max v2;#N vpatcher 340 44 964 668;#P window setfont "Sans Serif" 9.;#P window linecount 1;#P hidden newex 379 429 90 196617 pvar button_mute;#P hidden message 379 375 45 196617 set \$1 0;#P objectname mess_gain_set;#P hidden newex 379 160 22 196617 b 1;#B color 1;#P objectname jmod.parameter[4];#P hidden newex 379 140 180 196617 jmod.message.mxt $1 /clear_meters;#B color 1;#P objectname jmod.parameter[3];#P hidden message 519 272 53 196617 defeat \$1;#P objectname mess_dm;#P hidden newex 379 316 89 196617 pvar gain_master;#B color 7;#P objectname pvar_gain;#P hidden inlet 176 123 15 0;#P window linecount 6;#P hidden newex 379 450 150 196617 jmod.parameter.mxt $1 /mute @type toggle @description "When active\\\, this attribute turns off the module's processing algorithm to save CPU";#P objectname pattr_mute;#P hidden newex 379 189 150 196617 jmod.parameter.mxt $1 /defeat_meters @type toggle @description "When active\\\, this attribute turns off the signal level meters in the module to conserve CPU.";#P objectname pattr_defeat_meters;#P window linecount 2;#P hidden newex 379 340 150 196617 jmod.parameter.gain.mxt $1 /gain;#P objectname pattr_gain;#P user hint 149 191 162 203 mute 2000 500 0 65535 65535 52428 9 3 0 1 0 0 0;#P user hint 61 196 146 204 "output master gain" 2000 500 0 65535 65535 52428 9 3 0 1 0 0 0;#P user jmod.meter~ 63 193 82 4;#P objectname meter_omni;#P user pictslider 62 197 84 8 0 0 0 0 jmod.slider.knob.gain.pct 1 jmod.slider.bg.gain.pct 1 2113 0 0 157 1. 1.;#P objectname gain_master;#P user pictctrl 148 192 11 11 jmod.button.mute.pct 0 0 1 1 26 0 0 0 11 11 128 0 1 1 1 1 1 270;#P objectname button_mute;#P user pictctrl 59 190 103 15 jmod.bg.ambi-component.pct 0 0 1 0 24 0 0 0 103 15 2 0 1 1 1 1 1 270;#P noclick;#P objectname background;#P hidden connect 11 0 3 0;#P hidden connect 13 0 3 0;#P hidden connect 9 0 3 0;#P hidden connect 12 0 13 0;#P hidden fasten 14 0 10 0 384 395 374 395 374 310 384 310;#P hidden connect 10 0 6 0;#P hidden connect 6 0 14 0;#P hidden fasten 8 0 15 0 384 536 371 536 371 425 384 425;#P hidden connect 15 0 8 0;#P hidden connect 7 1 11 0;#P pop;