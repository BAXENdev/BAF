
#include "_supplyCratesMacros.hpp"

params ["_side","_crateName","_objectClass"];

if ((configFile >> "CfgVehicles" >> _objectClass) isEqualTo configNull) exitWith {
    _msg = format ["Object class %1 does not exist.",_objectClass];
    DEBUG_ERR(_msg);
};

_crateSideRegistry = bax_supplyCrates_crates get _side;
_crateSideRegistry set [_side,[_objectClass,[]]];
