
params ["_crateObject",["_crateSuffix","",[""]],["_factionId", "",[""]]];

// Runtime Conditions
// TODO: Does the player exist yet prior to this call?
// TODO: Does it execute JIP?

if !(isServer) exitWith {};
// if !(canSuspend) exitWith { _this spawn BAF_fnc_setupCrate; };
// waitUntil { baf_init_done >= 1; }; // TODO: Is this needed?

[_crateObject,_crateSuffix,_factionId] call BAF_fnc_assignCrate;
