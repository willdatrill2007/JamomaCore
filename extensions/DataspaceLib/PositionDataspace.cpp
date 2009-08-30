/* 
 * Jamoma DataspaceLib: DistanceDataspace
 * Copyright � 2007, Nils Peters
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 
 * Based on code by Trond Lossius, � 2007 and
 *					Jan Schacher / ICST Zurich � 2006 
 *
 * 
 */

#include "PositionDataspace.h"


#define thisTTClass			Cartesian3DUnit
#define thisTTClassName		"unit.cart3d"
#define thisTTClassTags		"dataspace, position"

TT_DATASPACEUNIT_CONSTRUCTOR{;}
Cartesian3DUnit::~Cartesian3DUnit(){;}

void Cartesian3DUnit::convertToNeutral(const TTValue& input, TTValue& output)
{
	output.setSize(3);
	*(output+0) = atom_getfloat(inputAtoms+0); //x 
	*(output+1) = atom_getfloat(inputAtoms+1); //y
	*(output+2) = atom_getfloat(inputAtoms+2); //z
}


void Cartesian3DUnit::convertFromNeutral(const TTValue& input, TTValue& output)
{
	output.setSize(3);
	atom_setfloat(*outputAtoms+0, *(input+0));
	atom_setfloat(*outputAtoms+1, *(input+1));
	atom_setfloat(*outputAtoms+2, *(input+2));
}


#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags

/***********************************************************************************************/

#define thisTTClass			Cartesian2DUnit
#define thisTTClassName		"unit.cart2d"
#define thisTTClassTags		"dataspace, position"

TT_DATASPACEUNIT_CONSTRUCTOR{;}
Cartesian2DUnit::~Cartesian2DUnit(){;}

void Cartesian2DUnit::convertToNeutral(const TTValue& input, TTValue& output)
{
	*outputNumArgs = 2;
	*(output+0) = atom_getfloat(inputAtoms+0); //x 
	*(output+1) = atom_getfloat(inputAtoms+1); //y
}

void Cartesian2DUnit::convertFromNeutral(const TTValue& input, TTValue& output)
{
	*outputNumArgs = 2;
	atom_setfloat(*outputAtoms+0, *(input+0));
	atom_setfloat(*outputAtoms+1, *(input+1));
}


#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags

/***********************************************************************************************/

#define thisTTClass			SphericalUnit
#define thisTTClassName		"unit.spherical"
#define thisTTClassTags		"dataspace, position"

TT_DATASPACEUNIT_CONSTRUCTOR{;}
SphericalUnit::~SphericalUnit(){;}

void SphericalUnit::convertToNeutral(const TTValue& input, TTValue& output)
{   //double kDegreesToRadians = kDegreesToRadians;
	double aa = (atom_getfloat(inputAtoms+0)) *  kDegreesToRadians; //a  
	double ee = atom_getfloat(inputAtoms+1) *  kDegreesToRadians; //e
	double dd = atom_getfloat(inputAtoms+2); //d
	
	output.setSize(3);
	double temp = cos(ee) * dd;		
	*(output+0) = sin(aa) * temp; 
	*(output+1) = cos(aa) * temp; 
	*(output+2) = sin(ee) * dd;
}


void SphericalUnit::convertFromNeutral(const TTValue& input, TTValue& output)
{   
    double xx = *(input+0);
	double yy = *(input+1);
	double zz = *(input+2);
	double temp = (xx * xx) + (yy * yy);

	output.setSize(3);	
	atom_setfloat(*outputAtoms+0, atan2(xx, yy) * kRadiansToDegrees); 
	atom_setfloat(*outputAtoms+1, atan2(zz, (pow((temp), 0.5))) * kRadiansToDegrees);
	atom_setfloat(*outputAtoms+2, pow((temp + (zz * zz)), 0.5));
}


#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags

/***********************************************************************************************/

#define thisTTClass			PolarUnit
#define thisTTClassName		"unit.polar"
#define thisTTClassTags		"dataspace, position"

TT_DATASPACEUNIT_CONSTRUCTOR{;}
PolarUnit::~PolarUnit(){;}

void PolarUnit::convertToNeutral(const TTValue& input, TTValue& output)
{
    *outputNumArgs = 2;
	
	double aa = (atom_getfloat(inputAtoms+0)) * kDegreesToRadians; //a
	double dd = atom_getfloat(inputAtoms+1); //d
				
	*(output+0) = sin(aa)  * dd; //x
	*(output+1) = cos(aa) * dd; //y
	
		
}


void PolarUnit::convertFromNeutral(const TTValue& input, TTValue& output)
{   
    double xx = *(input+0);
	double yy = *(input+1);

	*outputNumArgs = 2;
	
	atom_setfloat(*outputAtoms+0, atan2(xx, yy) * kRadiansToDegrees); //a
	atom_setfloat(*outputAtoms+1, pow(((xx * xx) + (yy * yy)), 0.5)); //distance	
}


#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags

/***********************************************************************************************/

#define thisTTClass			OpenGlUnit
#define thisTTClassName		"unit.openGL"
#define thisTTClassTags		"dataspace, position"

TT_DATASPACEUNIT_CONSTRUCTOR{;}
OpenGlUnit::~OpenGlUnit(){;}

void OpenGlUnit::convertToNeutral(const TTValue& input, TTValue& output)
{
	output.setSize(3);
	*(output+0) = atom_getfloat(inputAtoms+0); //x 
	*(output+1) = -1.0 * atom_getfloat(inputAtoms+2); //y
	*(output+2) = atom_getfloat(inputAtoms+1); //z
}


void OpenGlUnit::convertFromNeutral(const TTValue& input, TTValue& output)
{
	output.setSize(3);
	atom_setfloat(*outputAtoms+0, *(input+0));//x
	atom_setfloat(*outputAtoms+1, *(input+2));//y
	atom_setfloat(*outputAtoms+2, *(input+1) * -1.0);//z
}


#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags

/***********************************************************************************************/

#define thisTTClass			CylindricalUnit
#define thisTTClassName		"unit.cylindrical"
#define thisTTClassTags		"dataspace, position"

TT_DATASPACEUNIT_CONSTRUCTOR{;}
CylindricalUnit::~CylindricalUnit(){;}

void CylindricalUnit::convertToNeutral(const TTValue& input, TTValue& output)
{
	// Cylindrical coordinate System (according to ISO 31-11 http://en.wikipedia.org/wiki/ISO_31-11#Coordinate_systems )  = radius azimut hight
	
	output.setSize(3);
	double dd = atom_getfloat(inputAtoms+0); //d
	double aa = (atom_getfloat(inputAtoms+1)) * kDegreesToRadians; //a
	
				
	*(output+0) = sin(aa)  * dd; //x
	*(output+1) = cos(aa) * dd; //y
	*(output+2) = atom_getfloat(inputAtoms+2); //z
}


void CylindricalUnit::convertFromNeutral(const TTValue& input, TTValue& output)
{
	 output.setSize(3);
	 
	 double xx = *(input+0);
     double yy = *(input+1);	
	
	// d a z
	atom_setfloat(*outputAtoms+0, pow(((xx * xx) + (yy * yy)), 0.5)); //distance
	atom_setfloat(*outputAtoms+1, atan2(xx, yy) * kRadiansToDegrees); //a
	atom_setfloat(*outputAtoms+2, *(input+2));//z
}


#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags

/***********************************************************************************************/

#define thisTTClass			PositionDataspace
#define thisTTClassName		"dataspace.position"
#define thisTTClassTags		"dataspace, position"

TT_DATASPACELIB_CONSTRUCTOR
//PositionDataspace::PositionDataspace()
//	: DataspaceLib("position", "xyz")
{
	// Create one of each kind of unit, and cache them in a hash
//	registerUnit(new Cartesian3DUnit,	SymbolGen("cart3D"));
//	registerUnit(new Cartesian3DUnit,	SymbolGen("xyz"));
//	registerUnit(new Cartesian2DUnit,	SymbolGen("cart2D"));
//	registerUnit(new Cartesian2DUnit,	SymbolGen("xy"));
//	registerUnit(new SphericalUnit,		SymbolGen("spherical"));
//	registerUnit(new SphericalUnit,		SymbolGen("aed"));
//	registerUnit(new PolarUnit,			SymbolGen("polar"));
//	registerUnit(new PolarUnit,			SymbolGen("ad"));
//	registerUnit(new OpenGlUnit,		SymbolGen("openGL"));
//	registerUnit(new CylindricalUnit,	SymbolGen("cylindrical"));
//	registerUnit(new CylindricalUnit,	SymbolGen("daz"));
	
	// Now that the cache is created, we can create a set of default units
	setInputUnit(neutralUnit);
	setOutputUnit(neutralUnit);
}


PositionDataspace::~PositionDataspace()
{
	;
}

#undef thisTTClass
#undef thisTTClassName
#undef thisTTClassTags
