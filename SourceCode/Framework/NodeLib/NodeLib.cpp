/* 
 * Jamoma NodeLib
 * Copyright © 2008, Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "NodeLib.h"






JamomaNode::JamomaNode(SymbolPtr newAddress, SymbolPtr newType, ObjectPtr newObject)
{
	newAddress
	
	// do a lookup to see if this node already exists in the tree,
	// if it does not then we will give it an instance number of 0
	// otherwise, we will give it an instance number based on 
	// how many items already exist at this OSC address
	
	type = newType;
	nodeObject = newObject;
}





#if 0
#pragma mark -
#pragma mark Static Methods
#endif


TTErr JamomaNode::getNodeForOSC(static char* oscAddress, JamomaNodePtr* returnedNode)
{
	getNodeForOSC(gensym(oscAddress), returnedNode);
}
