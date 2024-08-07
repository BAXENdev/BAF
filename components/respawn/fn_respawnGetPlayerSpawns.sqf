
#include "_respawnMacros.hpp"

_side = side group player;

_sideGroupSpawns = [];
_playerGroupSpawns = [];
_respawnPositions = [];

// Get other friendly player group spawns.
// - Get player groups
// - find an alive unit for each group
// - if an alive unit is found, add unit to side group spawns.
_sideGroups = [];
_sidePlayers = (allPlayers - [player]) select { side group _x isEqualTo _side };
{
	_sideGroups pushBackUnique (group _x);
} forEach _sidePlayers;
_sideGroups = _sideGroups - [group player];
{
	_group = _x;
	_units = units _group;
	_aliveUnit = objNull;
	{
		_unit = _x;
		if (alive _unit) then {
			_aliveUnit = _unit;
			break;
		}
	} forEach _units;
	// Still need to check if alive in case a living unit wasnt found
	if (alive _aliveUnit) then {
		_sideGroupSpawns pushBack [_aliveUnit, groupId _group];
	};
} forEach _sideGroups;

// Get player's group spawns
_playerGroupUnits = units group player;
{
	_unit = _x;
	if (alive _unit) then {
		_playerGroupSpawns pushBack [_unit, name _unit];
	};
} forEach _playerGroupUnits;

// Respawn Positions
_respawnPositionMetadata = switch (_side) do {
	case west: { missionNamespace getVariable ["BIS_fnc_getRespawnPositions_listWest", nil]; };
	case east: { missionNamespace getVariable ["BIS_fnc_getRespawnPositions_listEast", nil]; };
	case independent: { missionNamespace getVariable ["BIS_fnc_getRespawnPositions_listGuer", nil]; };
	case civilian: { missionNamespace getVariable ["BIS_fnc_getRespawnPositions_listCiv", nil]; };
};
if !(isNil "_respawnPositionMetadata") then {
	_respawnObjectVars = _respawnPositionMetadata select 2;
	_respawnObjectNames = _respawnPositionMetadata select 3;
	_respawnCount = count _respawnObjectVars;

	for "_i" from 0 to (_respawnCount - 1) do {
		_respawnObjectVar = _respawnObjectVars select _i;
		_respawnObjectName = _respawnObjectNames select _i;
		_respawnObject = missionNamespace getVariable [_respawnObjectVar, nil];
		if (isNil "_respawnObject") then {
			continue;
		};
		if ( // IF the respawn object
			!(_respawnObject isEqualType []) and // IS NOT a position AND
			{ !(_respawnObject isEqualType "" and { _respawnObject in allMapMarkers }) } and // IS NOT a mapmarker AND 
			{ !(_respawnObject isEqualType objNull and { alive _respawnObject }) } // IS NOT a living object
		) then {
			continue;
		};
		_respawnPositions pushBack [
			_respawnObject,
			_respawnObjectName
		];
	};
};

// return
[_sideGroupSpawns, _playerGroupSpawns, _respawnPositions];
