
#include "_respawnCustomMacros.hpp"

// params [];

if (bax_respawn_skipTicketUse) exitWith {
	bax_respawn_skipTicketUse = false;
	[] spawn {
		setPlayerRespawnTime 0;
		sleep 1;
		setPlayerRespawnTime 1000000;
	};
};

if (bax_respawn_personalTickets > 0 or bax_respawn_personalTickets == -1) exitWith {
	if (bax_respawn_personalTickets > 0) then {
		bax_respawn_personalTickets = bax_respawn_personalTickets - 1;
	};
	[] spawn {
		setPlayerRespawnTime 0;
		sleep 1;
		setPlayerRespawnTime 1000000;
	};
};

_side = side group player;

_sideTicketsVars = switch (_side) do {
	case west: { "bax_respawn_bluforTickets" };
	case east: { "bax_respawn_opforTickets" };
	case independent: { "bax_respawn_indforTickets" };
	case civilian: { "bax_respawn_civilianTickets" };
};
_sideTickets = missionNamespace getVariable [_sideTicketsVars, 0];

if (_sideTickets > 0 or _sideTickets == -1) exitWith {
	if (_sideTickets > 0) then {
		_sideTickets = _sideTickets - 1;
		missionNamespace setVariable [_sideTicketsVars, _sideTickets, true];
	};
	
	[] spawn {
		setPlayerRespawnTime 0;
		sleep 1;
		setPlayerRespawnTime 1000000;
	};
};

["TaskFailed", ["","Unable To Spawn. Notify Zeus."]] call BIS_fnc_showNotification;
