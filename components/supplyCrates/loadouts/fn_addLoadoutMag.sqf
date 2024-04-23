
#include "..\_supplyCrateMacros.hpp"

/*
    _weapon:
        Which weapon to get a mag from
        0: primary
        1: Seconday
        2: Launcher
*/

params ["_side","_crateName","_loadoutName","_weapon","_amount"];

_crateArray = bax_supplyCrates_crates get _side get _crateName;
_crateArray params ["_objectClass","_itemsArray"];
_loadoutsArray = bax_loadouts_loadouts get _side get _loadoutName;
_loadoutArray = _loadoutsArray select 0;

if (isNil "_crateArray") exitWith {
    _msg = format ["Crate %1:%2 does not exist.", west, _crateArray];
    DEBUG_ARR(_msg);
};
if (isNil "_loadoutArray") exitWith {
    _msg = format ["Loadout %1:%2 does not exist.", west, _loudoutArray];
    DEBUG_ARR(_msg);
};
if (_weapon > 2 or _weapon < 0) then {
    _weapon = 0;
};

_weaponArray = _loadoutArray select _weapon;
if (_weaponArray isEqualTo []) exitWith {
    _weaponName = switch (_weapon) do {
        case 0: { "primary" };
        case 1: { "secondary" };
        case 2: { "launcher" };
    };
    _msg = format ["Loadout %1:%2 does not have a %3", _side, _loadoutName, _weaponName];
};

_magArray = _weaponArray select 4;
if (_magArray isEqualTo []) exitWith {
    _weaponName = switch (_weapon) do {
        case 0: { "primary" };
        case 1: { "secondary" };
        case 2: { "launcher" };
    };
    _msg = format ["Loadout %1:%2 does not have a mag in it's %3 weapon", _side, _loadoutName, _weaponName];
};

_magClassName = _magArray select 0;
_itemsArray pushback [_magClassName,_amount];
