
#include "..\..\macros\"

params ["_object","_position",["_height",150],["_addSmokeGrenade",true]];

if !(isServer) exitWith { _this remoteExec ["BAF_fnc_paradrop",2]; };
if !(canSuspend) exitWith { _this spawn BAF_fnc_paradrop; };

if (isNull _object) exitWith { DEBUG_RPT_FULL("Null object passed to _object"); };
if (!(_position isEqualType []) or { (count _position) == 3; }; ) exitWith { DEBUG_RPT_FULL("Invalid parameter passed to _position."); };

_position set [2,_height];
_chute = createVehicle ["B_Parachute_02_F",_position,[],0,'NONE'];
_object attachTo [_chute,[0,0,0]];
if (_addSmokeGrenade) then {
	_smoke = "SmokeShellRed" createVehicle [0,0,0];
	_smoke attachTo [_chute,[0,0,0]];
};
waitUntil {position _object select 2 < 0.5 || isNull _chute};
detach _object;
_object setPos [position _object select 0, position _object select 1, 0];
deleteVehicle _chute;
