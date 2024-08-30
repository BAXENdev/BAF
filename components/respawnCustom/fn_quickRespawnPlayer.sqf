
#include "_respawnCustomMacros.hpp"

params ["_doNotUseTickets"];

if (_doNotUseTickets) then {
	bax_respawn_skipTicketUse = true;
};

bax_respawn_respawnTime = 0;

if !(bax_respawn_respawnEnabled) then {
	["TaskSucceeded", ["", "Respawn Available from Zeus :)"]] call BIS_fnc_showNotification;
};
