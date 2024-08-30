
#include "_respawnCustomMacros.hpp"

_isSpawnValid = [] call bax_respawn_fnc_isRespawnPositionValid;
if !(_isSpawnValid) exitWith {
	// Status/Error comes from function
	// return
	false;
};

if !(bax_respawn_respawnEnabled) exitWith {
	bax_respawn_respawnStatusError = "Respawn Disabled";
	
	// return
	false;
};

_side = side group player;
_sideTickets = switch (_side) do {
	case west: { bax_respawn_bluforTickets };
	case east: { bax_respawn_opforTickets };
	case independent: { bax_respawn_indforTickets };
	case civilian: { bax_respawn_civilianTickets };
};
if (!bax_respawn_skipTicketUse and (_sideTickets == 0 && bax_respawn_personalTickets == 0)) exitWith {
	bax_respawn_respawnStatusError = "Out of Tickets";

	// return
	false;
};

if (bax_respawn_respawnTime - serverTime > 0) exitWith {
	bax_respawn_respawnStatusError = "Wait To Respawn";

	// return
	false;
};

// return
true;
