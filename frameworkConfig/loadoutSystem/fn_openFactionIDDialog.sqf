

#include "..\..\macros\loadoutAccessMacros.hpp"

params [["_function",{},[{}]],["_arguments",[],[[]]]];

_registryTags = GET_REGISTRY_TAGS();
_displayTags = _registryTags apply { toUpper _x; };

_listBox = [
	"LIST",
	"Faction IDs",
	[
		_registryTags,
		_displayTags,
		0,
		10
	]
];

_onConfirm = {
	params ["_dialogArgs", "_functionArgs"];
	_dialogArgs params ["_factionID"];

	_arguments pushBack _factionID;
	_arguments call _function;
};

[
	format ["Faction IDs", _factionID],
	[_listBox], // Content Forms
	_onConfirm,
	{},
	[_unit, _factionID]
] call zen_dialog_fnc_create;

