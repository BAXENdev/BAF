
params ["_unit",["_loadoutSuffix","",[""]],["_factionID", "",[""]]];

// Runtime Conditions
// TODO: Does the player exist yet prior to this call?
// TODO: Does it execute JIP?

if !(isServer) exitWith {};
if !(canSuspend) exitWith { _this spawn BAF_INIT_fnc_setupLoadout; };
waitUntil { baf_init_done >= 1; };

[_unit,_loadoutSuffix,_factionID] call BAF_fnc_assignLoadout;
