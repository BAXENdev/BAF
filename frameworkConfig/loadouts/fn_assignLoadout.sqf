
/*
 * Author: BAXENATOR
 * Assigns a loadout to the unit. 
 * Exits if _unit is not a unit.
* Exits if _loadout is nil. (this is done to allow for a parent init method to init radios without a loadout.)
 * 
 * Arguments:
 * 0: _unit
 * 1: _loadout <ace loadout array>
 *
 * Return Value:
 * -
 *
 * Example:
 * [_this, "rif"] call baf_fnc_assignLoadout;
 *
 * Public: Yes
 */

#include "macros.hpp"

params["_unit","_loadout"];

if (!IS_MAN(_unit)) exitWith {};
if (isNil _loadout) exitWith {};
LOCAL_ONLY(_unit); // TODO: Test if AI are given loadouts
WAIT_UNTIL_INIT_DONE();

_sideName = _unit call BAF_fnc_factionToSideName;
if (_sideName isEqualTo "") exitWith {};

// Loadout: 0) loadout, 1) Ace traits
// Traits: 0) ace medical, 1) Engineer
_loadout = GET_LOADOUT_VARIABLE(_loadout, _sideName);

if (isNil _loadout) then {
    _loadout = GET_LOADOUT_VARIABLE(DEFAULT_LOADOUT_NAME, _sideName);
    if (isNil _loadout) exitWith {};
};

_unit setUnitLoadout (_loadout select 0);
_traits = _loadout select 1;
_medicalTrait = _traits select 0;
_unit setVariable ["ace_medical_medicclass", _medicalTrait, true];
_unit setUnitTrait ["Medic", _medicalTrait > 0];
_engineerTrait = _traits select 1;
_unit setVariable ["ACE_isEngineer", _engineerTrait, true];
_unit setUnitTrait ["Engineer", _engineerTrait > 0];
// TODO: EOD
// TODO: Uav Hacker?



// TODO: Radio Setup?
// - Is there a super class that handles calling a radio and loadout setup?
// - Seperate initialization?
// - Based on side and loadout name?
// - Based on loadout name alone?
// - Radio key given to loadout, where there are key-value pairs in the radio setup?










