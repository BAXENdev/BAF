
#include "_toolsMacros.hpp"

params ["_array"];

// return (one liner*)
"{" + ((_array apply {
	if (_x isEqualType []) then {
		[_x] call bax_tools_fnc_arrayToConfig;
	} else {
		str _x
	};
}) joinString ",") + "}";
