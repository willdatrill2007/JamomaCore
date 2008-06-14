{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 111.0, 155.0, 784.0, 509.0 ],
		"bglocked" : 0,
		"defrect" : [ 111.0, 155.0, 784.0, 509.0 ],
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
					"maxclass" : "message",
					"text" : "200 420 ramp 500",
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 18.0, 238.0, 102.0, 17.0 ],
					"id" : "obj-1",
					"fontname" : "Verdana",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ".",
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 43.0, 318.0, 17.0, 17.0 ],
					"id" : "obj-2",
					"fontname" : "Verdana",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print",
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"patching_rect" : [ 129.0, 346.0, 32.0, 19.0 ],
					"id" : "obj-3",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "linear.queue",
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 297.0, 56.0, 70.0, 17.0 ],
					"id" : "obj-4",
					"fontname" : "Verdana",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "print",
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"patching_rect" : [ 25.0, 282.0, 32.0, 19.0 ],
					"id" : "obj-5",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set 92 107",
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 51.0, 220.0, 62.0, 17.0 ],
					"id" : "obj-6",
					"fontname" : "Verdana",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "list support",
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 26.0, 182.0, 104.0, 19.0 ],
					"id" : "obj-7",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "13 27",
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 102.0, 197.0, 37.0, 17.0 ],
					"id" : "obj-8",
					"fontname" : "Verdana",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "20 40 ramp 500",
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 17.0, 197.0, 90.0, 17.0 ],
					"id" : "obj-9",
					"fontname" : "Verdana",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ".",
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 90.0, 296.0, 119.0, 17.0 ],
					"id" : "obj-10",
					"fontname" : "Verdana",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "route list",
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 90.0, 256.0, 144.0, 19.0 ],
					"id" : "obj-11",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend set",
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 90.0, 276.0, 68.0, 19.0 ],
					"id" : "obj-12",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<- set the value of an attribute (all rampunits may have different attributes)",
					"linecount" : 2,
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 530.0, 310.0, 214.0, 31.0 ],
					"id" : "obj-13",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "<- get the value of an attribute (all rampunits may have different attributes)",
					"linecount" : 2,
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 530.0, 230.0, 214.0, 31.0 ],
					"id" : "obj-14",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "0",
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 266.0, 340.0, 17.0, 17.0 ],
					"id" : "obj-15",
					"fontname" : "Verdana",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "int", "bang" ],
					"triscale" : 0.9,
					"patching_rect" : [ 224.0, 385.0, 35.0, 19.0 ],
					"id" : "obj-16",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "b 1",
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 224.0, 333.0, 25.0, 19.0 ],
					"id" : "obj-17",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "counter",
					"numoutlets" : 4,
					"fontsize" : 10.0,
					"outlettype" : [ "int", "", "", "int" ],
					"patching_rect" : [ 224.0, 360.0, 66.0, 19.0 ],
					"id" : "obj-18",
					"fontname" : "Verdana",
					"numinlets" : 5
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend rampunit",
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 378.0, 115.0, 99.0, 19.0 ],
					"id" : "obj-19",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p setup_menu",
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 378.0, 62.0, 81.0, 19.0 ],
					"id" : "obj-20",
					"fontname" : "Verdana",
					"numinlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 44.0, 59.0, 345.0, 447.0 ],
						"bglocked" : 0,
						"defrect" : [ 44.0, 59.0, 345.0, 447.0 ],
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
									"maxclass" : "message",
									"text" : "set linear.sched",
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 12.0, 309.0, 86.0, 17.0 ],
									"id" : "obj-1",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "b 1",
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 12.0, 267.0, 25.0, 19.0 ],
									"id" : "obj-2",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "qlim",
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 12.0, 287.0, 30.0, 19.0 ],
									"id" : "obj-3",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "clear",
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 150.0, 362.0, 33.0, 17.0 ],
									"id" : "obj-4",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "sel 0 1",
									"numoutlets" : 3,
									"fontsize" : 10.0,
									"outlettype" : [ "bang", "bang", "" ],
									"patching_rect" : [ 108.0, 131.0, 42.0, 19.0 ],
									"id" : "obj-5",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "< 2048",
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "int" ],
									"patching_rect" : [ 108.0, 110.0, 46.0, 19.0 ],
									"id" : "obj-6",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "sysv",
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 108.0, 68.0, 32.0, 17.0 ],
									"id" : "obj-7",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gestalt",
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 108.0, 87.0, 43.0, 19.0 ],
									"id" : "obj-8",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t l types",
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"outlettype" : [ "", "types" ],
									"patching_rect" : [ 108.0, 207.0, 49.0, 19.0 ],
									"id" : "obj-9",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "regexp (.*).rampdll",
									"numoutlets" : 5,
									"fontsize" : 10.0,
									"outlettype" : [ "", "", "", "", "" ],
									"patching_rect" : [ 177.0, 308.0, 107.0, 19.0 ],
									"id" : "obj-10",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "qlim",
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 108.0, 47.0, 30.0, 19.0 ],
									"id" : "obj-11",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "loadbang",
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 108.0, 27.0, 54.0, 19.0 ],
									"id" : "obj-12",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend append",
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 131.0, 335.0, 90.0, 19.0 ],
									"id" : "obj-13",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "regexp (.*).rampunit",
									"numoutlets" : 5,
									"fontsize" : 10.0,
									"outlettype" : [ "", "", "", "", "" ],
									"patching_rect" : [ 108.0, 286.0, 115.0, 19.0 ],
									"id" : "obj-14",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "route append",
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 108.0, 257.0, 202.0, 19.0 ],
									"id" : "obj-15",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "folder",
									"numoutlets" : 2,
									"fontsize" : 10.0,
									"outlettype" : [ "", "int" ],
									"patching_rect" : [ 108.0, 233.0, 37.0, 19.0 ],
									"id" : "obj-16",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "ramplib_windows",
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 179.0, 155.0, 96.0, 17.0 ],
									"id" : "obj-17",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "absolutepath",
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 108.0, 184.0, 73.0, 19.0 ],
									"id" : "obj-18",
									"fontname" : "Verdana",
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "ramplib_mac",
									"numoutlets" : 1,
									"fontsize" : 10.0,
									"outlettype" : [ "" ],
									"patching_rect" : [ 108.0, 155.0, 74.0, 17.0 ],
									"id" : "obj-19",
									"fontname" : "Verdana",
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"numoutlets" : 0,
									"patching_rect" : [ 131.0, 362.0, 15.0, 15.0 ],
									"id" : "obj-20",
									"numinlets" : 1,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 1 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-10", 1 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 1 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 1 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [ 300.5, 356.0, 140.0, 356.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 3 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"fontname" : "Verdana",
						"default_fontname" : "Verdana",
						"globalpatchername" : "",
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"types" : [  ],
					"numoutlets" : 3,
					"fontsize" : 10.0,
					"labelclick" : 1,
					"items" : "none",
					"outlettype" : [ "int", "", "" ],
					"patching_rect" : [ 378.0, 85.0, 100.0, 19.0 ],
					"id" : "obj-21",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "attrset granularity 200",
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 380.0, 328.0, 122.0, 17.0 ],
					"id" : "obj-22",
					"fontname" : "Verdana",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "attrset granularity 20",
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 365.0, 308.0, 116.0, 17.0 ],
					"id" : "obj-23",
					"fontname" : "Verdana",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "set this with the granularity message...",
					"linecount" : 2,
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 362.0, 279.0, 136.0, 31.0 ],
					"id" : "obj-24",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "float", "bang" ],
					"triscale" : 0.9,
					"patching_rect" : [ 360.0, 247.0, 46.0, 19.0 ],
					"id" : "obj-25",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "attrget granularity",
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 359.0, 229.0, 101.0, 17.0 ],
					"id" : "obj-26",
					"fontname" : "Verdana",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "set 4000",
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 404.0, 176.0, 53.0, 17.0 ],
					"id" : "obj-27",
					"fontname" : "Verdana",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "29",
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 281.0, 177.0, 21.0, 17.0 ],
					"id" : "obj-28",
					"fontname" : "Verdana",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "set the current value",
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 320.0, 159.0, 120.0, 19.0 ],
					"id" : "obj-29",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "15000 ramp 10000",
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 188.0, 120.0, 105.0, 17.0 ],
					"id" : "obj-30",
					"fontname" : "Verdana",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "5208.779785",
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 312.0, 176.0, 78.0, 17.0 ],
					"id" : "obj-31",
					"fontname" : "Verdana",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "float", "bang" ],
					"triscale" : 0.9,
					"patching_rect" : [ 224.0, 282.0, 51.0, 19.0 ],
					"id" : "obj-32",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "2000 ramp 500",
					"numoutlets" : 1,
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patching_rect" : [ 98.0, 120.0, 86.0, 17.0 ],
					"id" : "obj-33",
					"fontname" : "Verdana",
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.ramp",
					"numoutlets" : 2,
					"fontsize" : 10.0,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 224.0, 232.0, 63.0, 19.0 ],
					"id" : "obj-34",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "ramp to a new value",
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 144.0, 106.0, 112.0, 19.0 ],
					"id" : "obj-35",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "the granularity of the ramp in ms",
					"linecount" : 2,
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 410.0, 245.0, 100.0, 31.0 ],
					"id" : "obj-36",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "panel",
					"numoutlets" : 0,
					"rounded" : 15,
					"patching_rect" : [ 353.0, 218.0, 159.0, 137.0 ],
					"id" : "obj-37",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "choose from among the available ramp units",
					"linecount" : 2,
					"numoutlets" : 0,
					"fontsize" : 10.0,
					"frgb" : [ 0.337255, 0.356863, 0.690196, 1.0 ],
					"patching_rect" : [ 480.0, 81.0, 128.0, 31.0 ],
					"id" : "obj-38",
					"fontname" : "Verdana",
					"numinlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [ 389.5, 362.0, 515.0, 362.0, 515.0, 206.0, 233.5, 206.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-23", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [ 374.5, 364.0, 519.0, 364.0, 519.0, 204.0, 233.5, 204.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [ 387.5, 149.0, 233.5, 149.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 1 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-18", 3 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 1 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 1 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 428.0, 110.0, 387.5, 110.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
