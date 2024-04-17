
#include "_arsenalMacros.hpp"

if !(hasInterface) exitWith {};

// Create Box and Add Arsenal Actions *****************************

// compatibility for re-init of arsenal boxes
if !(isNull bax_arsenals_arsenalBox) then {
	deleteVehicle bax_arsenals_arsenalBox;
};

// TODO: Change to invisible helipad
bax_arsenals_arsenalBox = "C_IDAP_supplyCrate_F" createVehicleLocal [0,0,0];
bax_arsenals_arsenalBox enableSimulation false;
bax_arsenals_arsenalBox allowDamage false;
bax_arsenals_arsenalBox hideObject true;

_side = side group player;
_arsenalProxies = bax_arsenals_arsenalProxies get _side;
{
	_arsenalProxy = _x;
	[_arsenalProxy] call bax_arsenals_fnc_addActionOpenArsenal;
} forEach _arsenalProxies;

// Init Arsenal if arsenal list is available

private ["_arsenalList"];
_arsenalRegistry = bax_arsenals_arsenals get _side;
if (isMultiplayer) then {
	_role = [player] call bax_misc_fnc_getUnitRole;
	_arsenalList = _arsenalRegistry get _role;
	if (isNil "_arsenalList") then {
		_arsenalList = _arsenalRegistry get "default";
	};
} else {
	_arsenalList = _arsenalRegistry get "default";
};

if (isNil "_arsenalList") then {
	_arsenalList = [];
};

// TODO: Test that this next line doesn't cause an error on first run
[bax_arsenals_arsenalBox,true] call ace_arsenal_fnc_initBox;
[bax_arsenals_arsenalBox,_arsenalList] call ace_arsenal_fnc_initBox;