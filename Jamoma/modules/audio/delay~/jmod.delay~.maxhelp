{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 68.0, 44.0, 374.0, 621.0 ],
		"bglocked" : 0,
		"defrect" : [ 68.0, 44.0, 374.0, 621.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.970939,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 5.0, 5.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "When the same signal is fed to both channels, differences in delay illustrate the proximity effect: The perceived direction of the source gravitates towards the source with the least delay.",
					"linecount" : 4,
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"fontsize" : 10.970939,
					"patching_rect" : [ 30.0, 550.0, 300.0, 60.0 ],
					"numinlets" : 1,
					"id" : "obj-40",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p controlling_the_module",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"fontsize" : 10.970939,
					"patching_rect" : [ 30.0, 105.0, 176.0, 20.0 ],
					"numinlets" : 0,
					"id" : "obj-38",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 25.0, 69.0, 809.0, 625.0 ],
						"bglocked" : 0,
						"defrect" : [ 25.0, 69.0, 809.0, 625.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 5.0, 5.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "in ramp mode (ramptime 2 seconds)",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 9.873845,
									"patching_rect" : [ 572.0, 162.0, 191.0, 18.0 ],
									"numinlets" : 1,
									"id" : "obj-1",
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numoutlets" : 2,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontname" : "Verdana",
									"outlettype" : [ "int", "bang" ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"minimum" : 0,
									"triscale" : 0.9,
									"maximum" : 10000,
									"fontsize" : 9.873845,
									"patching_rect" : [ 421.0, 161.0, 35.0, 18.0 ],
									"numinlets" : 1,
									"id" : "obj-2"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/delay $1 ramp 2000",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 458.0, 161.0, 113.0, 16.0 ],
									"numinlets" : 2,
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s jmod.delay.cmd",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 9.873845,
									"patching_rect" : [ 687.0, 185.0, 99.0, 18.0 ],
									"numinlets" : 1,
									"hidden" : 1,
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"numoutlets" : 1,
									"name" : "jmod.attr_params.maxpat",
									"outlettype" : [ "" ],
									"patching_rect" : [ 415.0, 185.0, 373.0, 143.0 ],
									"args" : [ "/delay" ],
									"numinlets" : 1,
									"id" : "obj-5"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"numoutlets" : 1,
									"name" : "jmod.preset_params.maxpat",
									"outlettype" : [ "" ],
									"patching_rect" : [ 21.0, 253.0, 374.0, 347.0 ],
									"args" : [ "jmod.delay~" ],
									"numinlets" : 0,
									"id" : "obj-6"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "bpatcher",
									"numoutlets" : 1,
									"name" : "jmod.gain_params.maxpat",
									"outlettype" : [ "" ],
									"patching_rect" : [ 20.0, 25.0, 374.0, 221.0 ],
									"args" : [  ],
									"numinlets" : 0,
									"id" : "obj-7"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "delay in samples for both channels",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 9.873845,
									"patching_rect" : [ 517.0, 145.0, 253.0, 18.0 ],
									"numinlets" : 1,
									"id" : "obj-8",
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numoutlets" : 2,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontname" : "Verdana",
									"outlettype" : [ "int", "bang" ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"minimum" : 0,
									"triscale" : 0.9,
									"maximum" : 10000,
									"fontsize" : 9.873845,
									"patching_rect" : [ 421.0, 144.0, 35.0, 18.0 ],
									"numinlets" : 1,
									"id" : "obj-9"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/delay $1",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 458.0, 144.0, 55.0, 16.0 ],
									"numinlets" : 2,
									"id" : "obj-10"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s jmod.delay.cmd",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 9.873845,
									"patching_rect" : [ 678.0, 119.0, 96.0, 18.0 ],
									"numinlets" : 1,
									"hidden" : 1,
									"id" : "obj-11"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Module specific messages",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 17.334082,
									"patching_rect" : [ 420.0, 116.0, 236.0, 28.0 ],
									"numinlets" : 1,
									"id" : "obj-12",
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numoutlets" : 0,
									"patching_rect" : [ 416.0, 114.0, 373.0, 27.0 ],
									"numinlets" : 1,
									"rounded" : 0,
									"id" : "obj-13"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numoutlets" : 0,
									"patching_rect" : [ 416.0, 142.0, 373.0, 37.0 ],
									"numinlets" : 1,
									"rounded" : 0,
									"id" : "obj-14"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "delay in samples for the right channel",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 9.873845,
									"patching_rect" : [ 542.0, 77.0, 238.0, 18.0 ],
									"numinlets" : 1,
									"id" : "obj-15",
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "delay in samples for the left channel",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 9.873845,
									"patching_rect" : [ 540.0, 59.0, 238.0, 18.0 ],
									"numinlets" : 1,
									"id" : "obj-16",
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numoutlets" : 2,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontname" : "Verdana",
									"outlettype" : [ "int", "bang" ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"minimum" : 0,
									"triscale" : 0.9,
									"maximum" : 10000,
									"fontsize" : 9.873845,
									"patching_rect" : [ 421.0, 75.0, 35.0, 18.0 ],
									"numinlets" : 1,
									"id" : "obj-17"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "number",
									"numoutlets" : 2,
									"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
									"fontname" : "Verdana",
									"outlettype" : [ "int", "bang" ],
									"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
									"minimum" : 0,
									"triscale" : 0.9,
									"maximum" : 10000,
									"fontsize" : 9.873845,
									"patching_rect" : [ 421.0, 57.0, 35.0, 18.0 ],
									"numinlets" : 1,
									"id" : "obj-18"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/delay/right $1",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 458.0, 75.0, 83.0, 16.0 ],
									"numinlets" : 2,
									"id" : "obj-19"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "/delay/left $1",
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"fontsize" : 9.873845,
									"patching_rect" : [ 458.0, 57.0, 77.0, 16.0 ],
									"numinlets" : 2,
									"id" : "obj-20"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s jmod.delay.cmd",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 9.873845,
									"patching_rect" : [ 290.0, 39.0, 96.0, 18.0 ],
									"numinlets" : 1,
									"hidden" : 1,
									"id" : "obj-24"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s jmod.delay.cmd",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 9.873845,
									"patching_rect" : [ 295.0, 263.0, 96.0, 18.0 ],
									"numinlets" : 1,
									"hidden" : 1,
									"id" : "obj-25"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "s jmod.delay.cmd",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 9.873845,
									"patching_rect" : [ 678.0, 28.0, 96.0, 18.0 ],
									"numinlets" : 1,
									"hidden" : 1,
									"id" : "obj-26"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Module specific attributes",
									"numoutlets" : 0,
									"fontname" : "Verdana",
									"fontsize" : 17.334082,
									"patching_rect" : [ 420.0, 25.0, 236.0, 28.0 ],
									"numinlets" : 1,
									"id" : "obj-28",
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numoutlets" : 0,
									"patching_rect" : [ 416.0, 23.0, 373.0, 27.0 ],
									"numinlets" : 1,
									"rounded" : 0,
									"id" : "obj-29"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "panel",
									"numoutlets" : 0,
									"patching_rect" : [ 416.0, 51.0, 373.0, 61.0 ],
									"numinlets" : 1,
									"rounded" : 0,
									"id" : "obj-37"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 1,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 10.0,
						"fontname" : "Verdana",
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "jmod.delay~",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"fontsize" : 17.334082,
					"patching_rect" : [ 20.0, 25.0, 189.0, 28.0 ],
					"numinlets" : 1,
					"id" : "obj-21",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "sample-accurate delay module",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"patching_rect" : [ 20.0, 55.0, 242.0, 18.0 ],
					"numinlets" : 1,
					"id" : "obj-22",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"patching_rect" : [ 10.0, 10.0, 320.0, 70.0 ],
					"numinlets" : 1,
					"rounded" : 15,
					"id" : "obj-23"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r jmod.delay.cmd",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 75.0, 400.0, 95.0, 18.0 ],
					"numinlets" : 0,
					"id" : "obj-27"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadmess set",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 85.0, 455.0, 73.0, 18.0 ],
					"numinlets" : 1,
					"hidden" : 1,
					"id" : "obj-30"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "dac~ 1 2",
					"numoutlets" : 0,
					"fontname" : "Verdana",
					"fontsize" : 9.873845,
					"patching_rect" : [ 245.0, 490.0, 85.0, 18.0 ],
					"numinlets" : 2,
					"id" : "obj-31"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/delay/left 512",
					"numoutlets" : 1,
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"fontsize" : 9.873845,
					"patching_rect" : [ 85.0, 490.0, 114.0, 16.0 ],
					"numinlets" : 2,
					"id" : "obj-32"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "jmod.control",
					"numoutlets" : 1,
					"name" : "jmod.control.maxpat",
					"outlettype" : [ "" ],
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"patching_rect" : [ 30.0, 145.0, 150.0, 70.0 ],
					"args" : [ "/control" ],
					"numinlets" : 1,
					"id" : "obj-34"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/input~",
					"numoutlets" : 3,
					"name" : "jmod.input~.maxpat",
					"outlettype" : [ "", "signal", "signal" ],
					"presentation_rect" : [ 0.0, 0.0, 300.0, 140.0 ],
					"patching_rect" : [ 30.0, 235.0, 300.0, 140.0 ],
					"args" : [ "/input~" ],
					"numinlets" : 1,
					"id" : "obj-35"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "bpatcher",
					"varname" : "/delay~",
					"numoutlets" : 3,
					"name" : "jmod.delay~.maxpat",
					"outlettype" : [ "", "signal", "signal" ],
					"presentation_rect" : [ 0.0, 0.0, 150.0, 70.0 ],
					"patching_rect" : [ 180.0, 400.0, 150.0, 70.0 ],
					"args" : [  ],
					"numinlets" : 3,
					"id" : "obj-36"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-35", 1 ],
					"destination" : [ "obj-36", 2 ],
					"hidden" : 0,
					"midpoints" : [ 180.0, 387.0, 320.5, 387.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-32", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 1 ],
					"destination" : [ "obj-36", 1 ],
					"hidden" : 0,
					"midpoints" : [ 180.0, 387.0, 255.0, 387.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [ 84.5, 429.0, 176.0, 429.0, 176.0, 396.0, 189.5, 396.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 1,
					"midpoints" : [ 94.5, 474.0, 94.5, 474.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 1 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 2 ],
					"destination" : [ "obj-31", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
