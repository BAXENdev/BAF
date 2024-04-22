
#include "_supplyCrateMacros.hpp"

if !(isServer) exitWith {};

params ["_object","_side","_crateName"];

_className = typeOf _object;
_tb = getNumber (configFile >> "CfgVehicles" >> _className >> "transportmaxbackpacks");
_tm = getNumber (configFile >> "CfgVehicles" >> _className >> "transportmaxmagazines");
_tw = getNumber (configFile >> "CfgVehicles" >> _className >> "transportmaxweapons");
_hasInventory = _tb > 0 || _tm > 0 || _tw > 0;

if !(_hasInventory) exitWith {
	_msg = format ["Object (%1) has no inventory space.",_object];
	DEBUG_LOG(_msg);
};

[_object,_side,_crateName] call bax_supplyCrates_fnc_assignCrate;
