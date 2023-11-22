
#include "..\..\macros\utilityMacros.hpp"

/*
 * Author: BAXENATOR
 * 
 * Arguments:
 * 0: _object
 * 1: _text
 * 2: _title
 * 3: _actionName
 * 4: _giveToEveryone
 * 5: _deleteOnGive - 0 = do nothing | 1 = remove intel action | 2 = delete object
 * 6: _actionType
 * 
 * Return Value:
 * -
 *
 * Example:
 * [_this,"The enemy is at logging camp"] call BAX_fnc_createIntel;
 * [_this,"The enemy is at logging camp","Enemy Intel"] call BAX_fnc_createIntel;
 * [_this,"The enemy is at logging camp","Enemy Intel","Search Cabinet",false,1] call BAX_fnc_createIntel;
 *
 * Public: Yes
 */

params ["_object","_text",["_title",""],["_actionName","Pickup Intel"],["_giveToEveryone",true],["_deleteOnGive",2],["_actionType",0]];

if (isNull _object) exitWith { DEBUG_RPT_FULL("Null object passed to variable _object"); };
if (!(_text isEqualType "") or {_text isEqualTo ""}) exitWith { DEBUG_RPT_FULL("Invalid value passed to variable _text"); };
if !(_title isEqualType "") exitWith { DEBUG_RPT_FULL("Invalid value passed to variable _title"); };
if (!(_actionName isEqualType "") or {_actionName isEqualTo ""}) exitWith { DEBUG_RPT_FULL("Invalid value passed to variable _actionName"); };

if (_deleteOnGive < 0 or _deleteOnGive > 2) then {
	DEBUG_RPT_FULL("Invalid value passed to variable _deleteOnGive. Defaulting to 2 (delete objecT).");
	_deleteOnGive = 2;
};
if (_actionType < 0 or _actionType > 1) then {
	DEBUG_RPT_FULL("Invalid value passed to variable _actionType. Defaulting to 0 (ace interact).");
	_actionType = 0;
};

if (_actionType == 0) then {
	// Ace Action
	_varName = ([_actionName] call BIS_fnc_filterString) + (str time);
	_action = [
		_varName,
		_actionName,
		"", //  Icon path
		{
			params ["_target","_player","_params"];
			_params params ["_text","_title","_giveToEveryone","_deleteOnGive","_varName"];
			if (_giveToEveryone) then {
				[_text,_title] remoteExec ["BAX_fnc_giveIntel",-2];
			} else {
				[_text,_title] call BAX_fnc_giveIntel;
			};
			switch (_deleteOnGive) do {
				case 1: { [_target,0,["ACE_MainActions",_varName]] call ace_interact_menu_fnc_removeActionFromObject; };
				case 2: { deleteVehicle _target; };
				default {};
			};
		}, // Action Code
		{ true; }, // Condition code
		{}, // Insert children code
		[_text,_title,_giveToEveryone,_deleteOnGive,_varName] // Action Code parameters
	] call ace_interact_menu_fnc_createAction;

	[
		_object, // Object to add action to
		0, // Type of action. 0 = action, 1 = self-actions
		["ACE_MainActions"],
		_action
	] call ace_interact_menu_fnc_addActionToObject;

} else {
	// Vanilla Action (scroll menu)
	_object addAction
	[
		_actionName,	// title
		{
			params ["_target", "_caller", "_actionId", "_arguments"];
			_arguments params ["_text","_title","_giveToEveryone","_deleteOnGive"];
			if (_giveToEveryone) then {
				[_text,_title] remoteExec ["BAX_fnc_giveIntel",-2];
			} else {
				[_text,_title] call BAX_fnc_giveIntel;
			};
			switch (_deleteOnGive) do {
				case 1: { _target removeAction _actionId; };
				case 2: { deleteVehicle _target; };
				default {};
			};
		},
		[_text,_title,_giveToEveryone,_deleteOnGive],		// arguments
		1.5,		// priority
		true,		// showWindow
		true,		// hideOnUse
		"",			// shortcut
		"true",		// condition
		50,			// radius
		false,		// unconscious
		"",			// selection
		""			// memoryPoint
	];

};
