
params ["_object","_position",["_height",150],["_addMarkerGrenade",0]];

if !(isServer) exitWith { _this remoteExec ["BAF_fnc_paradrop",2]; };
if !(canSuspend) exitWith { _this spawn BAF_fnc_paradrop; };

if (isNull _object) exitWith {};
if (!(_position isEqualType []) or { !((count _position) == 3); } ) exitWith {};

if (isObjectHidden _object) then { _object hideObjectGlobal false; };
_position set [2,_height];
_chute = createVehicle ["B_Parachute_02_F",_position,[],0,'NONE'];
_object attachTo [_chute,[0,0,0]];

private ["_grenade"];
if (_addMarkerGrenade > 0) then {
	_grenadeName = "SmokeShell";
	switch (_addMarkerGrenade) do {
		case 1: { _grenadeName = "SmokeShell"; };
		case 2: { _grenadeName = "SmokeShellRed"; };
		case 3: { _grenadeName = "SmokeShellBlue"; };
		case 4: { _grenadeName = "SmokeShellYellow"; };
		case 5: { _grenadeName = "SmokeShellGreen"; };
		case 6: { _grenadeName = "SmokeShellPurple"; };
		case 7: { _grenadeName = "SmokeShellOrange"; };
		case 8: { _grenadeName = "ACE_HandFlare_Yellow"; };
		case 9: { _grenadeName = "ACE_HandFlare_White"; };
		case 10: { _grenadeName = "ACE_HandFlare_Green"; };
		case 11: { _grenadeName = "ACE_HandFlare_Red"; };
	};
	_grenade = _grenadeName createVehicle _position;
	_grenade attachTo [_chute,[0,0,0]];
};

waitUntil {position _object select 2 < 0.5 || isNull _chute};
detach _object;
_object setPos [position _object select 0, position _object select 1, 0];
// deleteVehicle _chute;
_chute setDamage 1;