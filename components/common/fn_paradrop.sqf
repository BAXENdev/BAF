
#include "_commonMacros.hpp"


params ["_object","_position",["_height",150],["_addMarkerGrenade",true]];

if !(isServer) exitWith {
	_this remoteExec ["bax_common_fnc_paradrop",2];
};
if !(canSuspend) exitWith {
	_this spawn bax_common_fnc_paradrop;
};

if (isNull _object) exitWith {};
if (!(_position isEqualType []) or { !((count _position) == 3); } ) exitWith {};

if (isObjectHidden _object) then {
	_object hideObjectGlobal false;
};
_position set [2,_height];
_chute = createVehicle ["B_Parachute_02_F",_position,[],0,'NONE'];
_object attachTo [_chute,[0,0,0]];

private ["_grenade"];
if (_addMarkerGrenade) then {
	_grenade = "SmokeShellRed_Infinite" createVehicle _position;
	_grenade attachTo [_chute,[0,0,0]];
};

waitUntil {position _object select 2 < 0.5 || !alive _chute};

detach _object;
_object setPos [position _object select 0, position _object select 1, 0];
_chute setDamage 1;
if !(isNull _grenade) then {
	waitUntil { sleep 3; deleteVehicle _grenade; true; };
};
