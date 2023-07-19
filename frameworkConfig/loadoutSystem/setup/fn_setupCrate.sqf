
params ["_crateObject",["_crateSuffix","",[""]],["_factionID", "",[""]]];

// Runtime Conditions
// TODO: Does the player exist yet prior to this call?
// TODO: Does it execute JIP?

if !(isServer) exitWith {};
if !(canSuspend) exitWith { _this spawn BAF_INIT_fnc_setupCrate; };
waitUntil { baf_init_done >= 1; };

[_crateObject,_crateSuffix,_factionID] call BAF_fnc_assignCrate;
