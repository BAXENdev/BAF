
// _weapon: 0: primary | 1: launcher | 2: secondary
params ["_factionID","_crateSuffix","_loadoutSuffix","_weaponType","_amount"];

_loadoutArray = GETVARM(VARS_LOADOUT(_factionID,_loadoutSuffix),nil);

_loadouts = _loadoutArray select 1;
_loadout = _loadouts select 0;
_weaponArray = _loadout select _weaponType;
if (_weaponArray isEqualTo []) exitWith {};
_magArray = _weaponArray select 4;
if (_magArray isEqualTo []) exitWith {};
_magClassName = _magArray select 0;

_crateArray = GETVARM(VARS_CRATE(_factionID,_crateSuffix),nil);
_crateItems = _crateArray select 1;
_crateItems pushBack [_magClassName,_amount];
