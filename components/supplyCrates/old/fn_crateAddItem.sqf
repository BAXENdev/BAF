
params ["_factionID","_crateSuffix","_item","_amount"];

_crateArray = GETVARM(VARS_CRATE(_factionID,_crateSuffix),nil);
_crateItems = _crateArray select 1;
_crateItems pushBack [_item,_amount];
