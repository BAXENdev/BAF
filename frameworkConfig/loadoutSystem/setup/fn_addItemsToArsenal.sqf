
#include "..\..\..\macros\loadoutAccessMacros.hpp"

params ["_classArray", "_itemArray"];

_arsenalArray = GET_CLASS_ARSENAL(_classArray);
_items = flatten _itemArray;
_items = _items arrayIntersect _items;
_arsenalArray = _arsenalArray arrayIntersect _items;
SET_CLASS_ARSENAL(_classArray,_arsenalArray);
