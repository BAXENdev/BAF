
#include "_commonMacros.hpp"

if !(isServer) exitWith {
	_this remoteExec ["bax_common_fnc_addObjectsToCurators"];
};

params ["_objects","_addCrew"];

allCurators apply { _x addCuratorEditableObjects [_objects,_addCrew] };
