
params [["_unit", nil], ["_loadout", ""]];

// Runtime Conditions
// TODO: Is a false positive on mission load possible?
if (isNil _unit) exitWith { /* TODO: Debug RPT */ }; if (!isServer) exitWith {};
if (!canSuspend) exitWith { _this spawn BAF_fnc_assignLoadout; };
waitUntil { sleep 2; BAF_init_done isEqualTo 1; };
// TODO: Does the player exist yet prior to this call?
// TODO: Does it execute JIP?
_this remoteExecCall ["BAF_fnc_assignLoaodout", _unit];
