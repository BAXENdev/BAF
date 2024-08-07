
#include "_respawnMacros.hpp"
#include "\a3\ui_f\hpp\definedikcodes.inc"

params ["_display"];

disableSerialization;

// _color = ["IGUI", "BCG_RGB"] call BIS_fnc_displayColorGet
// _width = _seg*12; 
// _height = _seg*20; 
// _posX = safeZoneW * 0.95 + safeZoneX - _width; 
// _posY = safeZoneH * 0.05 + safeZoneY;

_display displayAddEventHandler [
	"KeyDown",
	{
		params ["_display", "_key", "_shift", "_ctrl", "_alt"];

		if (_key == DIK_R and _ctrl and !_shift and !_alt) then {
			_canRespawn = [] call bax_respawn_fnc_canRespawn;
			if (_canRespawn) then {
				[] call bax_respawn_fnc_respawnPlayer;
			} else {
				bax_respawn_respawnAutospawn = !bax_respawn_respawnAutospawn;	
			};
		};

		if (_key == DIK_T and _ctrl and !_shift and !_alt) then {
			[] call bax_respawn_fnc_dialogSelectRespawnPosition;
		};

		// return. Something to do with overriding other key events?
		false;
	}
];

_SEG = 1/40;
_UI_SIZE = 0.05;

_ctrlMenuBackground = _display ctrlCreate ["RscText", -1];
_ctrlMenuBackground ctrlSetBackgroundColor [0,0,0,0.8];

_width = _SEG*17;
_height = _SEG*19;
_posX = safeZoneW*1 + safeZoneX - _width;
_posY = safeZoneH*0 + safeZoneY;
_ctrlMenuBackground ctrlSetPosition [
	_posX,
	_posY,
	_width,
	_height
];
_ctrlMenuBackground ctrlCommit 0;

_ctrlRespawnPosition = _display ctrlCreate ["RscText", -1];
_color = ["IGUI", "WARNING_RGB"] call BIS_fnc_displayColorGet;
_ctrlRespawnPosition ctrlSetBackgroundColor _color;
_color = ["IGUI", "TEXT_RGB"] call BIS_fnc_displayColorGet;
_ctrlRespawnPosition ctrlSetTextColor _color;
_ctrlRespawnPosition ctrlSetText "Select Respawn Here";
_ctrlRespawnPosition ctrlSetTooltip "Ctrl + T to select new respawn position";
_ctrlRespawnPosition ctrlSetFontHeight _UI_SIZE;
_width = _SEG*15;
_height = _SEG*3;
_posX = safeZoneW*1 + safeZoneX - _width - _SEG*1;
_posY = safeZoneH*0 + safeZoneY + _SEG*1;
_ctrlRespawnPosition ctrlSetPosition [
	_posX,
	_posY,
	_width,
	_height
];
_ctrlRespawnPosition ctrlCommit 0;
uiNamespace setVariable [VARS_UI_RESPAWN_POSITION, _ctrlRespawnPosition];

_ctrlTimer = _display ctrlCreate ["RscText", -1];
_color = ["IGUI", "WARNING_RGB"] call BIS_fnc_displayColorGet;
_ctrlTimer ctrlSetBackgroundColor _color;
_color = ["IGUI", "TEXT_RGB"] call BIS_fnc_displayColorGet;
_ctrlTimer ctrlSetTextColor _color;
_ctrlTimer ctrlSetText "00:00";
_ctrlTimer ctrlSetTooltip "Ctrl + R to respawn.";
_ctrlTimer ctrlSetFontHeight _UI_SIZE;
_width = _SEG*15;
_height = _SEG*3;
_posX = safeZoneW*1 + safeZoneX - _width - _SEG*1;
_posY = safeZoneH*0 + safeZoneY + _SEG*5;
_ctrlTimer ctrlSetPosition [
	_posX,
	_posY,
	_width,
	_height
];
_ctrlTimer ctrlCommit 0;
uiNamespace setVariable [VARS_UI_RESPAWN_COUNTDOWN, _ctrlTimer];

_ctrlTickets = _display ctrlCreate ["RscText", -1];
_color = ["IGUI", "WARNING_RGB"] call BIS_fnc_displayColorGet;
_ctrlTickets ctrlSetBackgroundColor _color;
_color = ["IGUI", "TEXT_RGB"] call BIS_fnc_displayColorGet;
_ctrlTickets ctrlSetTextColor _color;
_ctrlTickets ctrlSetText "Tickets: -1 + -1";
_ctrlTickets ctrlSetTooltip "Team + Personal tickets. Personal tickets are used first.";
_ctrlTickets ctrlSetFontHeight _UI_SIZE;
_width = _SEG*15;
_height = _SEG*3;
_posX = safeZoneW*1 + safeZoneX - _width - _SEG*1;
_posY = safeZoneH*0 + safeZoneY + _SEG*9;
_ctrlTickets ctrlSetPosition [
	_posX,
	_posY,
	_width,
	_height
];
_ctrlTickets ctrlCommit 0;
uiNamespace setVariable [VARS_UI_RESPAWN_TICKETS, _ctrlTickets];

_ctrlAutoRespawn = _display ctrlCreate ["RscText", -1];
_color = ["IGUI", "WARNING_RGB"] call BIS_fnc_displayColorGet;
_ctrlAutoRespawn ctrlSetBackgroundColor _color;
_color = ["IGUI", "TEXT_RGB"] call BIS_fnc_displayColorGet;
_ctrlAutoRespawn ctrlSetTextColor _color;
// _ctrlAutoRespawn ctrlSetText "AUTOSPAWN: Off (Ctrl+R)";
_ctrlAutoRespawn ctrlSetText "AUTOSPAWN: ?";
_ctrlAutoRespawn ctrlSetTooltip "Ctrl + R to toggle. Autospawns you when timer runs out.";
_ctrlAutoRespawn ctrlSetFontHeight _UI_SIZE;
_width = _SEG*15;
_height = _SEG*3;
_posX = safeZoneW*1 + safeZoneX - _width - _SEG*1;
_posY = safeZoneH*0 + safeZoneY + _SEG*13;
_ctrlAutoRespawn ctrlSetPosition [
	_posX,
	_posY,
	_width,
	_height
];
_ctrlAutoRespawn ctrlCommit 0;
uiNamespace setVariable [VARS_UI_RESPAWN_AUTOSPAWN, _ctrlAutoRespawn];

_ctrlRespawnStatus = _display ctrlCreate ["RscText", -1];
_ctrlRespawnStatus ctrlSetBackgroundColor [0,0,0,0];
_color = ["IGUI", "TEXT_RGB"] call BIS_fnc_displayColorGet;
_ctrlRespawnStatus ctrlSetTextColor _color;
_ctrlRespawnStatus ctrlSetText "Respawn: Disabled";
_ctrlRespawnStatus ctrlSetFontHeight (_UI_SIZE - 0.005);
_width = _SEG*15;
_height = _SEG*2;
_posX = safeZoneW*1 + safeZoneX - _width - _SEG*1;
_posY = safeZoneH*0 + safeZoneY + _SEG*16.5;
_ctrlRespawnStatus ctrlSetPosition [
	_posX,
	_posY,
	_width,
	_height
];
_ctrlRespawnStatus ctrlCommit 0;
uiNamespace setVariable [VARS_UI_RESPAWN_STATUS, _ctrlRespawnStatus];

// _ctrlRespawnReason = _display ctrlCreate ["RscText", -1];
// _ctrlRespawnReason ctrlSetBackgroundColor [0,0,0,0];
// _color = ["IGUI", "TEXT_RGB"] call BIS_fnc_displayColorGet;
// _ctrlRespawnReason ctrlSetTextColor _color;
// _ctrlRespawnReason ctrlSetText "No Respawn Selected";
// _ctrlRespawnReason ctrlSetFontHeight (_UI_SIZE - 0.005);
// _width = _SEG*15;
// _height = _SEG*2;
// _posX = safeZoneW*1 + safeZoneX - _width - _SEG*1;
// _posY = safeZoneH*0 + safeZoneY + _SEG*18;
// _ctrlRespawnReason ctrlSetPosition [
// 	_posX,
// 	_posY,
// 	_width,
// 	_height
// ];
// _ctrlRespawnReason ctrlCommit 0;
// uiNamespace setVariable [VARS_UI_RESPAWN_REASON, _ctrlRespawnReason];
