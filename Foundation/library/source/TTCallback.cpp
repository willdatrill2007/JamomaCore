/** @file
 *
 * @ingroup foundationLibrary
 *
 * @brief This class is used to create a backward communication to notify a client that something changed in the #TTnode
 *
 * @details
 *
 * @todo Use the TTObjectBase class fonctionnality besause TTNode is also a TTObjectBase
 *
 * @authors Théo de la Hogue, Tim Place, Nathan Wolek, Trond Lossius
 *
 * @copyright Copyright © 2009, Théo de la Hogue and Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTCallback.h"

#define thisTTClass			TTCallback
#define thisTTClassName		"callback"
#define thisTTClassTags		"system"

TT_BASE_OBJECT_CONSTRUCTOR,
	mFunction(NULL),
	mBaton(NULL)
{
	addAttribute(Function, kTypePointer);
	addAttribute(Baton, kTypePointer);
	
	// Théo says this is only used for debugging purposes [tap]
	addAttributeWithSetter(Owner, kTypeSymbol);
	
	addMessageWithArguments(notify);
}


TTCallback::~TTCallback()
{
	mFunction = NULL;
	mBaton = NULL;
	if (mOwner) {
		mOwner = kTTSymEmpty;
	}
}


TTErr TTCallback::notify(const TTValue& anInputValue, TTValue &anUnusedOutputValue)
{
	if (mFunction)
		mFunction(mBaton, anInputValue);
	
	return kTTErrNone;
}


TTErr TTCallback::setOwner(const TTValue& input)
{
	mOwner = input[0];
	std::cout << "TTCallback::setOwner() -- " << (const char*)mOwner << std::endl;
	return kTTErrNone;
}