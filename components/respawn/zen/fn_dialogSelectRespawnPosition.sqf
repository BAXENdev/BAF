
#include "..\_respawnMacros.hpp"

_side = side group player;

_allRespawnPositions = [] call bax_respawn_fnc_respawnGetPlayerSpawns;
_allRespawnPositions params ["_otherGroupSpawns", "_groupUnitSpawns", "_respawnPositions"];

_addSquadSpawns = switch (_side) do {
	case west: { BLUFOR_ONSQUAD };
	case east: { OPFOR_ONSQUAD };
	case independent: { INDFOR_ONSQUAD };
	case civilian: { CIVILIAN_ONSQUAD };
};
if (_addSquadSpawns == 1) then {
	_respawnPositions append _groupUnitSpawns;
};

_addGroupSpawns = switch (_side) do {
	case west: { BLUFOR_OTHERSQUAD };
	case east: { OPFOR_OTHERSQUAD };
	case independent: { INDFOR_OTHERSQUAD };
	case civilian: { CIVILIAN_OTHERSQUAD };
};
if (_addGroupSpawns == 1) then {
	_respawnPositions append _otherGroupSpawns;
};

_respawnPositionNames = _respawnPositions apply { _x select 1 };
_defaultIndex = (_respawnPositionObjects find bax_respawn_respawnPosition) min 0;
_listboxRespawnPositions = [
	"LIST",
	"Select Respawn Position",
	[
		_respawnPositions,
		_respawnPositionNames,
		_defaultIndex,
		7
	],
	false
];

_checkBoxMoveCamera = [
	"CHECKBOX",
	"Move Camera to Respawn",
	false,
	false
];

[
	"Select Respawn Position",
	[_listboxRespawnPositions, _checkBoxMoveCamera],
	{
		params ["_dialogValues","_args"];
		_dialogValues params ["_respawnPosition", "_moveCamera"];

		bax_respawn_respawnPosition = _respawnPosition;

		if (_moveCamera) then {
			_target = _respawnPosition select 0;
			_focus = objNull;
			_offset = [0,0,0];
			
			if (_target isEqualType "") then {
				_focus = objNull;
				_offset = (getMarkerPos _target) vectorAdd [10, 10, 10];
			};

			if (_target isEqualType []) then {
				_offset = _target vectorAdd [10, 10, 10];
			};

			if (_target isEqualType objNull) then {
				_objectType = ([_target] call BIS_fnc_objectType) select 0;
				if (_objectType isEqualTo "Logic") then {
					_offset = (getPosATL _target) vectorAdd [10, 10, 10];
				};
				if (_objectType isEqualTo "Vehicle") then {
					_focus = _target;
					_offset = (getPosATL _target) vectorAdd [20,20,20];
				};
				if (_objectType isEqualTo "Solder") then {
					_focus = _target;
					_offset = (getPosATL _target) vectorAdd [8,8,8];
				};
			};

			_cameraAttributes = [] call ace_spectator_fnc_getCameraAttributes;
			_cameraAttributes params ["_caMode", "_caFocus", "_caVision", "_caPosition", "_caDirection"];
			[0, _focus, _caVision, _offset, 225] call ace_spectator_fnc_setCameraAttributes;
		};
	},
	{},
	[]
] call zen_dialog_fnc_create;
