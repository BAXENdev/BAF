
#include "..\_supplyCratesMacros.hpp"

/*
    _weapon:
        Which weapon to get a mag from
        0: primary
        1: Seconday
        2: Launcher
*/

params ["_side","_crateName","_loadoutName","_weapon","_amount"];

if !(_crateName in (bax_supplyCrates_crates get _side)) exitWith {
    _msg = format ["Crate %1:%2 does not exist.", west, _crateName];
    DEBUG_ERR(_msg);
};

if !(_loadoutName in (bax_loadouts_loadouts get _side)) exitWith {
    _msg = format ["Loadout %1:%2 does not exist.", west, _loadoutName];
    DEBUG_ERR(_msg);
};

if (_weapon < 0 or _weapon > 2) then {
    _weapon = 0;
};

_crateItems = bax_supplyCrates_crates get _side get _crateName;
_loadout = bax_loadouts_loadouts get _side get _loadoutName select 0 select 0; // Get loadoutArray's loadout's first loadout
_weaponArray = _loadout select _weapon;
if (_weaponArray isEqualTo []) exitWith {
    _weaponName = switch (_weapon) do {
        case 0: { "primary" };
        case 1: { "secondary" };
        case 2: { "launcher" };
    };
    _msg = format ["Loadout %1:%2 does not have a %3", _side, _loadoutName, _weaponName];
    DEBUG_ERR(_msg);
};

_weaponClassname = _weaponArray select 0;
_crateItems pushback [_weaponClassname,_amount];
