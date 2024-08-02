
#include "_respawnMacros.hpp"

if (alive player or isNull player) exitWith {};

private ["_respawnPositionText", "_timeText", "_ticketText", "_autospawnText"];

_side = side group player;

_respawnPositionText = bax_respawn_respawnPosition select 1;
_respawnPositionText = _respawnPositionText + " | (Ctrl+T)";

_remainingTime = bax_respawn_respawnTime - serverTime;
if (_remainingTime > 0) then {
	_timeText = [_remainingTime, "M:SS"] call CBA_fnc_formatElapsedTime;
} else {
	_timeText = "00:00"
};

_sideTickets = switch (_side) do {
	case west: { bax_respawn_bluforTickets };
	case east: { bax_respawn_opforTickets };
	case independent: { bax_respawn_indforTickets };
	case civilian: { bax_respawn_civilianTickets };
};
if (_sideTickets >= 0 and bax_respawn_personalTickets >= 0) then {
	_ticketText = format ["Tickets: %1 + %2", _sideTickets, bax_respawn_personalTickets];
} else {
	_ticketText = "Tickets: ∞";
};
if (bax_respawn_respawnAutospawn) then {
	_autospawnText = "Autospawn: On (Ctrl+R)";
} else {
	_autospawnText = "Autospawn: Off (Ctrl+R)";
};

uiNamespace getVariable [VARS_UI_RESPAWN_POSITION, displayNull] ctrlSetText _respawnPositionText;
uiNamespace getVariable [VARS_UI_RESPAWN_COUNTDOWN, displayNull] ctrlSetText _timeText;
uiNamespace getVariable [VARS_UI_RESPAWN_TICKETS, displayNull] ctrlSetText _ticketText;
uiNamespace getVariable [VARS_UI_RESPAWN_AUTOSPAWN, displayNull] ctrlSetText _autospawnText;

_canRespawn = [] call bax_respawn_fnc_canRespawn;
if (_canRespawn and bax_respawn_respawnAutospawn) then {
	[] call bax_respawn_fnc_respawnPlayer;
};
uiNamespace getVariable [VARS_UI_RESPAWN_STATUS, displayNull] ctrlSetText bax_respawn_respawnStatusError;

// systemChat format ["Test: %1", time];
// systemChat format ["1: %1", _respawnPositionText];
// systemChat format ["2: %1", _timeText];
// systemChat format ["3: %1", _ticketText];
// systemChat format ["4: %1", _autospawnText];
// systemChat format ["5: %1", bax_respawn_respawnStatusError];
// diag_log format ["Test: %1", time];
// diag_log format ["1: %1", _respawnPositionText];
// diag_log format ["2: %1", _timeText];
// diag_log format ["3: %1", _ticketText];
// diag_log format ["4: %1", _autospawnText];
// diag_log format ["5: %1", bax_respawn_respawnStatusError];

// CBA next frame (not)recursive call
[bax_respawn_fnc_respawnLoop] call CBA_fnc_execNextFrame;
