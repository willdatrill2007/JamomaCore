{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 14.0, 68.0, 1375.0, 760.0 ],
		"bglocked" : 0,
		"defrect" : [ 14.0, 68.0, 1375.0, 760.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
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
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate 0",
					"linecount" : 2,
					"id" : "obj-93",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 50.0, 475.0, 117.0, 29.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "z[8]",
					"text" : "jcom.parameter source.8/blur @repetitions/allow 1 @type msg_float @ramp/drive scheduler @ramp/function linear @range/bounds 0. 1. @range/clipmode low @description \"Spatial bluriness of nth source.\"",
					"linecount" : 2,
					"id" : "obj-91",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 1130.0, 550.0, 572.0, 31.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Z[15]",
					"id" : "obj-92",
					"fontname" : "Verdana",
					"presentation_rect" : [ 230.0, 180.0, 45.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 1130.0, 585.0, 45.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "z[7]",
					"text" : "jcom.parameter source.7/blur @repetitions/allow 1 @type msg_float @ramp/drive scheduler @ramp/function linear @range/bounds 0. 1. @range/clipmode low @description \"Spatial bluriness of nth source.\"",
					"linecount" : 2,
					"id" : "obj-89",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 1130.0, 475.0, 572.0, 31.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Z[14]",
					"id" : "obj-90",
					"fontname" : "Verdana",
					"presentation_rect" : [ 230.0, 160.0, 45.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 1130.0, 510.0, 45.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "z[6]",
					"text" : "jcom.parameter source.6/blur @repetitions/allow 1 @type msg_float @ramp/drive scheduler @ramp/function linear @range/bounds 0. 1. @range/clipmode low @description \"Spatial bluriness of nth source.\"",
					"linecount" : 2,
					"id" : "obj-87",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 1130.0, 400.0, 572.0, 31.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Z[13]",
					"id" : "obj-88",
					"fontname" : "Verdana",
					"presentation_rect" : [ 230.0, 140.0, 45.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 1130.0, 435.0, 45.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "z[5]",
					"text" : "jcom.parameter source.5/blur @repetitions/allow 1 @type msg_float @ramp/drive scheduler @ramp/function linear @range/bounds 0. 1. @range/clipmode low @description \"Spatial bluriness of nth source.\"",
					"linecount" : 2,
					"id" : "obj-85",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 1130.0, 325.0, 572.0, 31.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Z[12]",
					"id" : "obj-86",
					"fontname" : "Verdana",
					"presentation_rect" : [ 230.0, 120.0, 45.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 1130.0, 360.0, 45.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "z[4]",
					"text" : "jcom.parameter source.4/blur @repetitions/allow 1 @type msg_float @ramp/drive scheduler @ramp/function linear @range/bounds 0. 1. @range/clipmode low @description \"Spatial bluriness of nth source.\"",
					"linecount" : 2,
					"id" : "obj-83",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 1130.0, 250.0, 572.0, 31.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Z[11]",
					"id" : "obj-84",
					"fontname" : "Verdana",
					"presentation_rect" : [ 230.0, 100.0, 45.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 1130.0, 285.0, 45.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "z[3]",
					"text" : "jcom.parameter source.3/blur @repetitions/allow 1 @type msg_float @ramp/drive scheduler @ramp/function linear @range/bounds 0. 1. @range/clipmode low @description \"Spatial bluriness of nth source.\"",
					"linecount" : 2,
					"id" : "obj-81",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 1130.0, 175.0, 572.0, 31.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Z[10]",
					"id" : "obj-82",
					"fontname" : "Verdana",
					"presentation_rect" : [ 230.0, 80.0, 45.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 1130.0, 210.0, 45.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "z[2]",
					"text" : "jcom.parameter source.2/blur @repetitions/allow 1 @type msg_float @ramp/drive scheduler @ramp/function linear @range/bounds 0. 1. @range/clipmode low @description \"Spatial bluriness of nth source.\"",
					"linecount" : 2,
					"id" : "obj-79",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 1130.0, 100.0, 572.0, 31.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Z[9]",
					"id" : "obj-80",
					"fontname" : "Verdana",
					"presentation_rect" : [ 230.0, 60.0, 45.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 1130.0, 135.0, 45.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "blur",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-78",
					"fontname" : "Verdana",
					"presentation_rect" : [ 235.0, 20.0, 30.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 235.0, 20.0, 30.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "8",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-77",
					"fontname" : "Verdana",
					"presentation_rect" : [ 15.0, 180.0, 17.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 180.0, 17.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "7",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-76",
					"fontname" : "Verdana",
					"presentation_rect" : [ 15.0, 160.0, 17.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 160.0, 17.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "6",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-75",
					"fontname" : "Verdana",
					"presentation_rect" : [ 15.0, 140.0, 17.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 140.0, 17.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "5",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-74",
					"fontname" : "Verdana",
					"presentation_rect" : [ 15.0, 120.0, 17.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 120.0, 17.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "4",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-73",
					"fontname" : "Verdana",
					"presentation_rect" : [ 15.0, 100.0, 17.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 100.0, 17.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "3",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-72",
					"fontname" : "Verdana",
					"presentation_rect" : [ 15.0, 80.0, 17.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 80.0, 17.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "2",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-71",
					"fontname" : "Verdana",
					"presentation_rect" : [ 15.0, 60.0, 17.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 60.0, 17.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "1",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-70",
					"fontname" : "Verdana",
					"presentation_rect" : [ 15.0, 40.0, 17.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 15.0, 40.0, 17.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.list2parameter 3",
					"id" : "obj-65",
					"fontname" : "Verdana",
					"numinlets" : 11,
					"numoutlets" : 11,
					"patching_rect" : [ 350.0, 550.0, 154.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "x[7]",
					"text" : "jcom.parameter source.8/position @dataspace position @dataspace/unit/active xyz @dataspace/unit/native xyz @dataspace/unit/internal xyz @type msg_list @ramp/drive scheduler @ramp/function linear @range/bounds -10 10 @range/clipmode none @description \"Position of nth source.\"",
					"linecount" : 3,
					"id" : "obj-66",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 510.0, 550.0, 600.0, 43.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Z[8]",
					"id" : "obj-67",
					"fontname" : "Verdana",
					"presentation_rect" : [ 155.0, 180.0, 45.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 450.0, 575.0, 45.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Y[7]",
					"id" : "obj-68",
					"fontname" : "Verdana",
					"presentation_rect" : [ 105.0, 180.0, 45.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 400.0, 575.0, 45.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "X[7]",
					"id" : "obj-69",
					"fontname" : "Verdana",
					"presentation_rect" : [ 55.0, 180.0, 45.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 350.0, 575.0, 45.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.list2parameter 3",
					"id" : "obj-60",
					"fontname" : "Verdana",
					"numinlets" : 11,
					"numoutlets" : 11,
					"patching_rect" : [ 350.0, 475.0, 154.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "x[6]",
					"text" : "jcom.parameter source.7/position @dataspace position @dataspace/unit/active xyz @dataspace/unit/native xyz @dataspace/unit/internal xyz @type msg_list @ramp/drive scheduler @ramp/function linear @range/bounds -10 10 @range/clipmode none @description \"Position of nth source.\"",
					"linecount" : 3,
					"id" : "obj-61",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 510.0, 475.0, 600.0, 43.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Z[7]",
					"id" : "obj-62",
					"fontname" : "Verdana",
					"presentation_rect" : [ 155.0, 160.0, 45.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 450.0, 500.0, 45.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Y[6]",
					"id" : "obj-63",
					"fontname" : "Verdana",
					"presentation_rect" : [ 105.0, 160.0, 45.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 400.0, 500.0, 45.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "X[6]",
					"id" : "obj-64",
					"fontname" : "Verdana",
					"presentation_rect" : [ 55.0, 160.0, 45.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 350.0, 500.0, 45.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.list2parameter 3",
					"id" : "obj-55",
					"fontname" : "Verdana",
					"numinlets" : 11,
					"numoutlets" : 11,
					"patching_rect" : [ 350.0, 400.0, 154.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "x[5]",
					"text" : "jcom.parameter source.6/position @dataspace position @dataspace/unit/active xyz @dataspace/unit/native xyz @dataspace/unit/internal xyz @type msg_list @ramp/drive scheduler @ramp/function linear @range/bounds -10 10 @range/clipmode none @description \"Position of nth source.\"",
					"linecount" : 3,
					"id" : "obj-56",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 510.0, 400.0, 600.0, 43.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Z[6]",
					"id" : "obj-57",
					"fontname" : "Verdana",
					"presentation_rect" : [ 155.0, 140.0, 45.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 450.0, 425.0, 45.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Y[5]",
					"id" : "obj-58",
					"fontname" : "Verdana",
					"presentation_rect" : [ 105.0, 140.0, 45.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 400.0, 425.0, 45.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "X[5]",
					"id" : "obj-59",
					"fontname" : "Verdana",
					"presentation_rect" : [ 55.0, 140.0, 45.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 350.0, 425.0, 45.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.list2parameter 3",
					"id" : "obj-50",
					"fontname" : "Verdana",
					"numinlets" : 11,
					"numoutlets" : 11,
					"patching_rect" : [ 350.0, 325.0, 154.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "x[4]",
					"text" : "jcom.parameter source.5/position @dataspace position @dataspace/unit/active xyz @dataspace/unit/native xyz @dataspace/unit/internal xyz @type msg_list @ramp/drive scheduler @ramp/function linear @range/bounds -10 10 @range/clipmode none @description \"Position of nth source.\"",
					"linecount" : 3,
					"id" : "obj-51",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 510.0, 325.0, 600.0, 43.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Z[5]",
					"id" : "obj-52",
					"fontname" : "Verdana",
					"presentation_rect" : [ 155.0, 120.0, 45.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 450.0, 350.0, 45.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Y[4]",
					"id" : "obj-53",
					"fontname" : "Verdana",
					"presentation_rect" : [ 105.0, 120.0, 45.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 400.0, 350.0, 45.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "X[4]",
					"id" : "obj-54",
					"fontname" : "Verdana",
					"presentation_rect" : [ 55.0, 120.0, 45.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 350.0, 350.0, 45.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.list2parameter 3",
					"id" : "obj-45",
					"fontname" : "Verdana",
					"numinlets" : 11,
					"numoutlets" : 11,
					"patching_rect" : [ 350.0, 250.0, 154.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "x[3]",
					"text" : "jcom.parameter source.4/position @dataspace position @dataspace/unit/active xyz @dataspace/unit/native xyz @dataspace/unit/internal xyz @type msg_list @ramp/drive scheduler @ramp/function linear @range/bounds -10 10 @range/clipmode none @description \"Position of nth source.\"",
					"linecount" : 3,
					"id" : "obj-46",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 510.0, 250.0, 600.0, 43.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Z[4]",
					"id" : "obj-47",
					"fontname" : "Verdana",
					"presentation_rect" : [ 155.0, 100.0, 45.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 450.0, 275.0, 45.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Y[3]",
					"id" : "obj-48",
					"fontname" : "Verdana",
					"presentation_rect" : [ 105.0, 100.0, 45.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 400.0, 275.0, 45.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "X[3]",
					"id" : "obj-49",
					"fontname" : "Verdana",
					"presentation_rect" : [ 55.0, 100.0, 45.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 350.0, 275.0, 45.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.list2parameter 3",
					"id" : "obj-40",
					"fontname" : "Verdana",
					"numinlets" : 11,
					"numoutlets" : 11,
					"patching_rect" : [ 350.0, 175.0, 154.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "x[2]",
					"text" : "jcom.parameter source.3/position @dataspace position @dataspace/unit/active xyz @dataspace/unit/native xyz @dataspace/unit/internal xyz @type msg_list @ramp/drive scheduler @ramp/function linear @range/bounds -10 10 @range/clipmode none @description \"Position of nth source.\"",
					"linecount" : 3,
					"id" : "obj-41",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 510.0, 175.0, 600.0, 43.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Z[3]",
					"id" : "obj-42",
					"fontname" : "Verdana",
					"presentation_rect" : [ 155.0, 80.0, 45.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 450.0, 200.0, 45.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Y[2]",
					"id" : "obj-43",
					"fontname" : "Verdana",
					"presentation_rect" : [ 105.0, 80.0, 45.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 400.0, 200.0, 45.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "X[2]",
					"id" : "obj-44",
					"fontname" : "Verdana",
					"presentation_rect" : [ 55.0, 80.0, 45.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 350.0, 200.0, 45.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.list2parameter 3",
					"id" : "obj-35",
					"fontname" : "Verdana",
					"numinlets" : 11,
					"numoutlets" : 11,
					"patching_rect" : [ 350.0, 100.0, 154.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "x[1]",
					"text" : "jcom.parameter source.2/position @dataspace position @dataspace/unit/active xyz @dataspace/unit/native xyz @dataspace/unit/internal xyz @type msg_list @ramp/drive scheduler @ramp/function linear @range/bounds -10 10 @range/clipmode none @description \"Position of nth source.\"",
					"linecount" : 3,
					"id" : "obj-36",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 510.0, 100.0, 600.0, 43.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Z[2]",
					"id" : "obj-37",
					"fontname" : "Verdana",
					"presentation_rect" : [ 155.0, 60.0, 45.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 450.0, 125.0, 45.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Y[1]",
					"id" : "obj-38",
					"fontname" : "Verdana",
					"presentation_rect" : [ 105.0, 60.0, 45.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 400.0, 125.0, 45.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "X[1]",
					"id" : "obj-39",
					"fontname" : "Verdana",
					"presentation_rect" : [ 55.0, 60.0, 45.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 350.0, 125.0, 45.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.list2parameter 3",
					"id" : "obj-34",
					"fontname" : "Verdana",
					"numinlets" : 11,
					"numoutlets" : 11,
					"patching_rect" : [ 350.0, 25.0, 154.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "z[1]",
					"text" : "jcom.parameter source.1/blur @repetitions/allow 1 @type msg_float @ramp/drive scheduler @ramp/function linear @range/bounds 0. 1. @range/clipmode low @description \"Spatial bluriness of nth source.\"",
					"linecount" : 2,
					"id" : "obj-32",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 1130.0, 25.0, 572.0, 31.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Z[1]",
					"id" : "obj-33",
					"fontname" : "Verdana",
					"presentation_rect" : [ 230.0, 40.0, 45.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 1130.0, 60.0, 45.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "x",
					"text" : "jcom.parameter source.1/position @dataspace position @dataspace/unit/active xyz @dataspace/unit/native xyz @dataspace/unit/internal xyz @type msg_list @ramp/drive scheduler @ramp/function linear @range/bounds -10 10 @range/clipmode none @description \"Position of nth source.\"",
					"linecount" : 3,
					"id" : "obj-6",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 3,
					"patching_rect" : [ 510.0, 25.0, 600.0, 43.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "z",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-7",
					"fontname" : "Verdana",
					"presentation_rect" : [ 165.0, 20.0, 18.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 165.0, 20.0, 18.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "y",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-8",
					"fontname" : "Verdana",
					"presentation_rect" : [ 120.0, 20.0, 17.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 120.0, 20.0, 17.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "x",
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"id" : "obj-9",
					"fontname" : "Verdana",
					"presentation_rect" : [ 70.0, 20.0, 17.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 70.0, 20.0, 17.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Z",
					"id" : "obj-10",
					"fontname" : "Verdana",
					"presentation_rect" : [ 155.0, 40.0, 45.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 450.0, 50.0, 45.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "Y",
					"id" : "obj-11",
					"fontname" : "Verdana",
					"presentation_rect" : [ 105.0, 40.0, 45.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 400.0, 50.0, 45.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "X",
					"id" : "obj-12",
					"fontname" : "Verdana",
					"presentation_rect" : [ 55.0, 40.0, 45.0, 19.0 ],
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 350.0, 50.0, 45.0, 19.0 ],
					"fontsize" : 10.0,
					"presentation" : 1,
					"outlettype" : [ "float", "bang" ],
					"triscale" : 0.9
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"id" : "obj-13",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 50.0, 230.0, 212.0, 17.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"id" : "obj-15",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 55.0, 335.0, 48.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"id" : "obj-16",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 55.0, 383.0, 49.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"id" : "obj-17",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 55.0, 359.0, 87.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"id" : "obj-19",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 210.0, 250.0, 34.0, 17.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p jalg.sur.position",
					"id" : "obj-20",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 55.0, 440.0, 100.0, 19.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 585.0, 154.0, 549.0, 562.0 ],
						"bglocked" : 0,
						"defrect" : [ 585.0, 154.0, 549.0, 562.0 ],
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
									"text" : "Everything is taken care of by the RampLib and DataspaceLib",
									"linecount" : 2,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-3",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 65.0, 165.0, 230.0, 31.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "This module is really just a wrapper for a bunch of jcom.parameters.",
									"linecount" : 2,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"id" : "obj-2",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 65.0, 110.0, 230.0, 31.0 ],
									"fontsize" : 10.0
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"id" : "obj-8",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 70.0, 244.0, 25.0, 25.0 ],
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"id" : "obj-9",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 70.0, 45.0, 25.0, 25.0 ],
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
 ],
						"lines" : [  ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.sur.position @description \"Control position of 8 sources.\"",
					"linecount" : 2,
					"id" : "obj-24",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"numoutlets" : 2,
					"patching_rect" : [ 15.0, 285.0, 227.0, 31.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"id" : "obj-25",
					"numinlets" : 0,
					"numoutlets" : 1,
					"patching_rect" : [ 16.0, 240.0, 24.0, 24.0 ],
					"outlettype" : [ "" ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"id" : "obj-26",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 16.0, 466.0, 24.0, 24.0 ],
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"id" : "obj-30",
					"fontname" : "Verdana",
					"numinlets" : 2,
					"numoutlets" : 1,
					"patching_rect" : [ 65.0, 250.0, 139.0, 17.0 ],
					"fontsize" : 10.0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"id" : "obj-31",
					"presentation_rect" : [ 0.0, 0.0, 300.0, 210.0 ],
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 0.0, 0.0, 300.0, 210.0 ],
					"presentation" : 1,
					"outlettype" : [ "" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-66", 0 ],
					"destination" : [ "obj-65", 10 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 10 ],
					"destination" : [ "obj-66", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 0 ],
					"destination" : [ "obj-69", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 1 ],
					"destination" : [ "obj-68", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-65", 2 ],
					"destination" : [ "obj-67", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-69", 0 ],
					"destination" : [ "obj-65", 0 ],
					"hidden" : 0,
					"midpoints" : [ 359.5, 598.0, 336.0, 598.0, 336.0, 546.0, 359.5, 546.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-68", 0 ],
					"destination" : [ "obj-65", 1 ],
					"hidden" : 0,
					"midpoints" : [ 409.5, 603.0, 331.0, 603.0, 331.0, 543.0, 373.0, 543.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 0 ],
					"destination" : [ "obj-65", 2 ],
					"hidden" : 0,
					"midpoints" : [ 459.5, 608.0, 325.0, 608.0, 325.0, 539.0, 386.5, 539.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-60", 10 ],
					"destination" : [ "obj-61", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-61", 0 ],
					"destination" : [ "obj-60", 10 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-62", 0 ],
					"destination" : [ "obj-60", 2 ],
					"hidden" : 0,
					"midpoints" : [ 459.5, 533.0, 325.0, 533.0, 325.0, 464.0, 386.5, 464.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-63", 0 ],
					"destination" : [ "obj-60", 1 ],
					"hidden" : 0,
					"midpoints" : [ 409.5, 528.0, 331.0, 528.0, 331.0, 468.0, 373.0, 468.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 0 ],
					"destination" : [ "obj-60", 0 ],
					"hidden" : 0,
					"midpoints" : [ 359.5, 523.0, 336.0, 523.0, 336.0, 471.0, 359.5, 471.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-60", 2 ],
					"destination" : [ "obj-62", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-60", 1 ],
					"destination" : [ "obj-63", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-60", 0 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-56", 0 ],
					"destination" : [ "obj-55", 10 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 10 ],
					"destination" : [ "obj-56", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 0 ],
					"destination" : [ "obj-59", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 1 ],
					"destination" : [ "obj-58", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-55", 2 ],
					"destination" : [ "obj-57", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-59", 0 ],
					"destination" : [ "obj-55", 0 ],
					"hidden" : 0,
					"midpoints" : [ 359.5, 448.0, 336.0, 448.0, 336.0, 396.0, 359.5, 396.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 0 ],
					"destination" : [ "obj-55", 1 ],
					"hidden" : 0,
					"midpoints" : [ 409.5, 453.0, 331.0, 453.0, 331.0, 393.0, 373.0, 393.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-57", 0 ],
					"destination" : [ "obj-55", 2 ],
					"hidden" : 0,
					"midpoints" : [ 459.5, 458.0, 325.0, 458.0, 325.0, 389.0, 386.5, 389.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 10 ],
					"destination" : [ "obj-51", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-51", 0 ],
					"destination" : [ "obj-50", 10 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 0 ],
					"destination" : [ "obj-50", 2 ],
					"hidden" : 0,
					"midpoints" : [ 459.5, 383.0, 325.0, 383.0, 325.0, 314.0, 386.5, 314.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-53", 0 ],
					"destination" : [ "obj-50", 1 ],
					"hidden" : 0,
					"midpoints" : [ 409.5, 378.0, 331.0, 378.0, 331.0, 318.0, 373.0, 318.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-54", 0 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 0,
					"midpoints" : [ 359.5, 353.0, 336.0, 353.0, 336.0, 321.0, 359.5, 321.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 2 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 1 ],
					"destination" : [ "obj-53", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-54", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 0 ],
					"destination" : [ "obj-45", 10 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 10 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 0 ],
					"destination" : [ "obj-49", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 1 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-45", 2 ],
					"destination" : [ "obj-47", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-49", 0 ],
					"destination" : [ "obj-45", 0 ],
					"hidden" : 0,
					"midpoints" : [ 359.5, 298.0, 336.0, 298.0, 336.0, 246.0, 359.5, 246.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-48", 0 ],
					"destination" : [ "obj-45", 1 ],
					"hidden" : 0,
					"midpoints" : [ 409.5, 303.0, 331.0, 303.0, 331.0, 243.0, 373.0, 243.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-47", 0 ],
					"destination" : [ "obj-45", 2 ],
					"hidden" : 0,
					"midpoints" : [ 459.5, 308.0, 325.0, 308.0, 325.0, 239.0, 386.5, 239.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 10 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-40", 10 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-42", 0 ],
					"destination" : [ "obj-40", 2 ],
					"hidden" : 0,
					"midpoints" : [ 459.5, 233.0, 325.0, 233.0, 325.0, 164.0, 386.5, 164.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-40", 1 ],
					"hidden" : 0,
					"midpoints" : [ 409.5, 228.0, 331.0, 228.0, 331.0, 168.0, 373.0, 168.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"midpoints" : [ 359.5, 223.0, 336.0, 223.0, 336.0, 171.0, 359.5, 171.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 2 ],
					"destination" : [ "obj-42", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 1 ],
					"destination" : [ "obj-43", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-36", 0 ],
					"destination" : [ "obj-35", 10 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 10 ],
					"destination" : [ "obj-36", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-39", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 1 ],
					"destination" : [ "obj-38", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 2 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-39", 0 ],
					"destination" : [ "obj-35", 0 ],
					"hidden" : 0,
					"midpoints" : [ 359.5, 148.0, 336.0, 148.0, 336.0, 96.0, 359.5, 96.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-38", 0 ],
					"destination" : [ "obj-35", 1 ],
					"hidden" : 0,
					"midpoints" : [ 409.5, 153.0, 331.0, 153.0, 331.0, 93.0, 373.0, 93.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-35", 2 ],
					"hidden" : 0,
					"midpoints" : [ 459.5, 158.0, 325.0, 158.0, 325.0, 89.0, 386.5, 89.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-6", 0 ],
					"destination" : [ "obj-34", 10 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 10 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-34", 2 ],
					"hidden" : 0,
					"midpoints" : [ 459.5, 83.0, 325.0, 83.0, 325.0, 14.0, 386.5, 14.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-34", 1 ],
					"hidden" : 0,
					"midpoints" : [ 409.5, 78.0, 331.0, 78.0, 331.0, 18.0, 373.0, 18.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-12", 0 ],
					"destination" : [ "obj-34", 0 ],
					"hidden" : 0,
					"midpoints" : [ 359.5, 73.0, 336.0, 73.0, 336.0, 21.0, 359.5, 21.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 2 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 1 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-34", 0 ],
					"destination" : [ "obj-12", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-16", 0 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 1 ],
					"destination" : [ "obj-20", 0 ],
					"hidden" : 0,
					"midpoints" : [ 132.5, 419.0, 64.5, 419.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-17", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-17", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [ 59.5, 279.0, 24.5, 279.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [ 74.5, 279.0, 24.5, 279.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"midpoints" : [ 219.5, 279.0, 24.5, 279.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-26", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-32", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-32", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1139.5, 79.0, 1117.0, 79.0, 1117.0, 22.0, 1139.5, 22.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-79", 0 ],
					"destination" : [ "obj-80", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-80", 0 ],
					"destination" : [ "obj-79", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1139.5, 154.0, 1117.0, 154.0, 1117.0, 97.0, 1139.5, 97.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-82", 0 ],
					"destination" : [ "obj-81", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1139.5, 229.0, 1117.0, 229.0, 1117.0, 172.0, 1139.5, 172.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-81", 0 ],
					"destination" : [ "obj-82", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-83", 0 ],
					"destination" : [ "obj-84", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-84", 0 ],
					"destination" : [ "obj-83", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1139.5, 304.0, 1117.0, 304.0, 1117.0, 247.0, 1139.5, 247.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-86", 0 ],
					"destination" : [ "obj-85", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1139.5, 379.0, 1117.0, 379.0, 1117.0, 322.0, 1139.5, 322.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-85", 0 ],
					"destination" : [ "obj-86", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-87", 0 ],
					"destination" : [ "obj-88", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-88", 0 ],
					"destination" : [ "obj-87", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1139.5, 454.0, 1117.0, 454.0, 1117.0, 397.0, 1139.5, 397.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-90", 0 ],
					"destination" : [ "obj-89", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1139.5, 529.0, 1117.0, 529.0, 1117.0, 472.0, 1139.5, 472.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-89", 0 ],
					"destination" : [ "obj-90", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-91", 0 ],
					"destination" : [ "obj-92", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-92", 0 ],
					"destination" : [ "obj-91", 0 ],
					"hidden" : 0,
					"midpoints" : [ 1139.5, 604.0, 1117.0, 604.0, 1117.0, 547.0, 1139.5, 547.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-24", 0 ],
					"destination" : [ "obj-93", 1 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
