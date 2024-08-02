
#include "_respawnMacros.hpp"

bax_respawn_respawnPosition params ["_respawnObject", "_respawnObjectName"];

if (isNull _respawnObject) exitWith {
	bax_respawn_respawnStatusError = "Respawn Does Not Exist";
	
	// return
	false;
};

if (_respawnObject isEqualType []) exitWith {
	bax_respawn_respawnStatusError = "Respawn";
	// Positions are okay
	// return
	true;
};

if (_respawnObject isEqualType "") then {
	// If object is string and is a mapmarker, return true
	if (_respawnObject in allMapMarkers) exitWith {
		bax_respawn_respawnStatusError = "Respawn";

		// return
		true;
	};
	// Else, return false
	if (true) exitWith {
		bax_respawn_respawnStatusError = "Marker is Deleted";

		// return
		false;
	};
};

if (_respawnObject isEqualType objNull) exitWith {
	if !(alive _respawnObject) exitWith {
		bax_respawn_respawnStatusError = "Respawn Is Dead";

		// return
		false;
	};

	_objectType = ([_respawnObject] call BIS_fnc_objectType) select 0;
	
	// If object is vehicle, is moving to fast, and doesn't have an open, do not allow player to spawn around the vehicle
	if (_objectType isEqualTo "Vehicle") then {
		if (speed _objectType > 4) then {
			if ((_objectType emptyPositions "") == 0) exitWith {
				bax_respawn_respawnStatusError = "Vehicle is Moving Too Fast";

				// return
				false;
			};
		};
	};

	bax_respawn_respawnStatusError = "Respawn";
	// return
	true;
};

// return

bax_respawn_respawnStatusError = "!Marker, Position, or Object";
false;
