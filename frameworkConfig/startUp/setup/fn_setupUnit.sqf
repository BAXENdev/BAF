
#include "..\..\..\macros\utilityMacros.hpp"

params ["_unit","_loadoutSuffix","_classSuffix","_factionID"];

if !(isServer) exitWith {};
if !(_unit isKindOf "CAManBase") exitWith { DEBUG_RPT("(setup) Failed to set up unit because an non-unit was passed.") };

if (_loadoutSuffix isEqualType "") exitWith {
	[_unit,_loadoutSuffix,_factionID] call BAF_fnc_assignLoadout;
	// [] call BAF_fnc_assignRadios; // TODO: Add radion setup
};

// TODO: Class Case
if (_classSuffix isEqualType "") exitWith {
	// [_unit,_classSuffix,_factionID] call BAF_fnc_assignClass;
	// [] call BAF_fnc_assignRadios; // TODO: Add radio setup
};

DEBUG_RPT("(setup) Failed to perform setup because no suffixes was passed.");
