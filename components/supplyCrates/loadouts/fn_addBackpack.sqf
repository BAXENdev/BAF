
#include "..\_supplyCratesMacros.hpp"

/*
    _weapon:
        Which weapon to get a mag from
        0: primary
        1: Seconday
        2: Launcher
*/

params ["_side","_crateName","_loadoutName","_amount"];

if !(_crateName in (bax_supplyCrates_crates get _side)) exitWith {
    _msg = format ["Crate %1:%2 does not exist.", west, _crateName];
    DEBUG_ERR(_msg);
};

if !(_loadoutName in (bax_loadouts_loadouts get _side)) exitWith {
    _msg = format ["Loadout %1:%2 does not exist.", west, _loadoutName];
    DEBUG_ERR(_msg);
};

_crateItems = bax_supplyCrates_crates get _side get _crateName;
_loadout = bax_loadouts_loadouts get _side get _loadoutName select 0 select 0; // Get loadoutArray's loadout's first loadout
_backpackArray = _loadout select 5;
if (_backpackArray isEqualTo []) exitWith {
    _msg = format ["Loadout %1:%2 does not have a backpack.", west, _loadoutName];
    DEBUG_ERR(_msg);
};

_backpackClassName = _backpackArray select 0;
_crateItems pushback [_backpackClassName,_amount];
