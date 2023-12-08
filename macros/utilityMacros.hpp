
#ifndef UTILITY
#define UTILITY

// COSNTANTS

#define WEST_S 'west'
#define EAST_S 'east'
#define GUER_S 'guer'
#define CIV_S 'civ'

// Framework Variables
 // Radios
 #define VAR_RADIO_PRESETS BAX_var_radio_presets
 #define VAR_RADIO_CHANNEL_NAMES BAX_var_radio_channel_names

 // Map Markers
 #define VAR_GROUP_ICONS BAX_var_group_icons
 #define VAR_GROUP_HIDDENS BAX_var_group_hiddens
 #define VAR_GROUP_COLORS BAX_var_group_colors
 #define VAR_GROUPS_PLAYERS BAX_var_group_names
 
 // Respawn
 #define VAR_RESPAWN_POSITIONS BAX_var_respawn_positions
 #define VAR_RESPAWN_SELECTED_POSITION BAX_var_respawn_selected_position
 #define VAR_RESPAWN_SETTINGS BAX_var_respawn_settings

 // Respawn
 #define VARS_RESPAWN_RADIOS 'BAX_var_respawn_radios'
 #define VARS_RESPAWN_SELECTED_POSITION #VAR_RESPAWN_SELECTED_POSITION

// Framework Settings

#define CFG_GROUP_MARKERS useGroupMarkers
#define CFG_SQUAD_MARKERS useSquadMarkers
#define CFG_ACRE_LANGUAGES acreUniqueLanguages
#define CFG_ACRE_FREQUENCIES acreUniqueFrequencies
#define CFG_LOADOUT_RESPAWN loadoutOnRespawn

#define CFG_RESPAWN_WEST_TICKETS respawnWestTickets
#define CFG_RESPAWN_WEST_TICKETS_PERSONAL respawnWestTicketsPersonal
#define CFG_RESPAWN_WEST_DELAY respawnWestDelay
#define CFG_RESPAWN_WEST_SQUAD respawnWestDoSquad
#define CFG_RESPAWN_WEST_WAVE respawnWestDoWave
#define CFG_RESPAWN_WEST_WAVE_DURATION respawnWestWaveDuration
#define CFG_RESPAWN_WEST_WAVE_CALL respawnWestDoWaveCall

#define CFG_RESPAWN_EAST_TICKETS respawnEastTickets
#define CFG_RESPAWN_EAST_TICKETS_PERSONAL respawnEastTicketsPersonal
#define CFG_RESPAWN_EAST_DELAY respawnEastDelay
#define CFG_RESPAWN_EAST_SQUAD respawnEastDoSquad
#define CFG_RESPAWN_EAST_WAVE respawnEastDoWave
#define CFG_RESPAWN_EAST_WAVE_DURATION respawnEastWaveDuration
#define CFG_RESPAWN_EAST_WAVE_CALL respawnEastDoWaveCall

#define CFG_RESPAWN_GUER_TICKETS respawnGuerTickets
#define CFG_RESPAWN_GUER_TICKETS_PERSONAL respawnGuerTicketsPersonal
#define CFG_RESPAWN_GUER_DELAY respawnGuerDelay
#define CFG_RESPAWN_GUER_SQUAD respawnGuerDoSquad
#define CFG_RESPAWN_GUER_WAVE respawnGuerDoWave
#define CFG_RESPAWN_GUER_WAVE_DURATION respawnGuerWaveDuration
#define CFG_RESPAWN_GUER_WAVE_CALL respawnGuerDoWaveCall

#define CFG_RESPAWN_CIV_TICKETS respawnCivTickets
#define CFG_RESPAWN_CIV_TICKETS_PERSONAL respawnCivTicketsPersonal
#define CFG_RESPAWN_CIV_DELAY respawnCivDelay
#define CFG_RESPAWN_CIV_SQUAD respawnCivDoSquad
#define CFG_RESPAWN_CIV_WAVE respawnCivDoWave
#define CFG_RESPAWN_CIV_WAVE_DURATION respawnCivWaveDuration
#define CFG_RESPAWN_CIV_WAVE_CALL respawnCivDoWaveCall

// Framework Macros

#define GETCFG_N(ATTRIBUTE) (getNumber(missionConfigFile >> 'BAX_CFG' >> ATTRIBUTE))
#define BAX_VAR(VAR_NAME) ('BAX_var_' + VAR_NAME)

// FUNCTIONS
#define CONCAT(VALUE1,VALUE2) VALUE1##VALUE2
#define CONCAT3(VALUE1,VALUE2,VALUE3) VALUE1##VALUE2##VALUE3
#define CONCAT4(VALUE1,VALUE2,VALUE3,VALUE4) VALUE1##VALUE2##VALUE3##VALUE4

#define VARS(VALUE) #VALUE

#define GETVAR(OBJECT,VARIABLE_NAME,DEFAULT_VALUE) (OBJECT getVariable [VARIABLE_NAME,DEFAULT_VALUE])
#define GETVARM(VARIABLE_NAME,DEFAULT_VALUE) (missionNamespace getVariable [VARIABLE_NAME,DEFAULT_VALUE])
#define SETVAR(OBJECT,VARIABLE_NAME,VALUE) (OBJECT setVariable [VARIABLE_NAME,VALUE])
#define SETVARM(ARG_1,ARG_2) (missionNamespace setVariable [ARG_1,ARG_2])
#define SETVARG(OBJECT,VARIABLE_NAME,VALUE) (OBJECT setVariable [VARIABLE_NAME,VALUE,true])
#define SETVARMG(VARIABLE_NAME,VALUE) (missionNamespace setVariable [VARIABLE_NAME,VALUE,true])

#define DEBUG_RPT_FULL(MSG) diag_log format ['[BAX] (%1,%2) %3',_fnc_scriptName,__LINE__,MSG]
#define DEBUG_RPT(MSG) diag_log format ['[BAX]: %1',MSG]

#endif
