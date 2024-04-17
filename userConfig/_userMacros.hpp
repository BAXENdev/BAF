
#include "..\utilityMacros.hpp"
// Do not edit.
// DO NOT EDIT!
// JUST CLOSE THIS FILE!!!
// Are you seriously still reading this? DO NOT EDIT!!!


// LOADOUTS

#define CREATE_LOADOUT(NAME,LOADOUT) [SIDE,NAME,LOADOUT] call bax_loadouts_fnc_createLoadout
#define DEFAULT_LOADOUT(LOADOUT) [SIDE,"default",LOADOUT] call bax_loadouts_fnc_createLoadout
#define COPY_LOADOUT(OLDNAME,NEWNAME) [SIDE,OLDNAME,NEWNAME] call bax_loadouts_fnc_copyLoadout
#define RESET_LOADOUT(NAME) [SIDE,NAME] call bax_loadouts_fnc_resetLoadout
#define ADD_VARIANT(NAME,LOADOUT) [SIDE,NAME,LOADOUT] call bax_loadouts_fnc_addVariant
#define REMOVE_VARIANTS(NAME) [SIDE,NAME] call bax_loadouts_fnc_loadout
#define SET_NO_MEDIC(NAME) [SIDE,NAME,0,0] call bax_loadouts_fnc_setTrait
#define SET_MEDIC(NAME) [SIDE,NAME,0,1] call bax_loadouts_fnc_setTrait
#define SET_DOCTOR(NAME) [SIDE,NAME,0,2] call bax_loadouts_fnc_setTrait
#define SET_NO_ENGINEER(NAME) [SIDE,NAME,1,0] call bax_loadouts_fnc_setTrait
#define SET_ENGINEER(NAME) [SIDE,NAME,1,1] call bax_loadouts_fnc_setTrait
#define RESET_TRAITS(NAME) [SIDE,NAME] call bax_loadouts_fnc_resetTraits
#define ADD_RANDOM_HELMET(NAME,GEAR) [SIDE,NAME,0,GEAR] call bax_loadouts_fnc_addRandomGear
#define ADD_RANDOM_VEST(NAME,GEAR) [SIDE,NAME,1,GEAR] call bax_loadouts_fnc_addRandomGear
#define ADD_RANDOM_UNIFORM(NAME,GEAR) [SIDE,NAME,2,GEAR] call bax_loadouts_fnc_addRandomGear
#define ADD_RANDOM_BACKPACK(NAME,GEAR) [SIDE,NAME,3,GEAR] call bax_loadouts_fnc_addRandomGear
#define ADD_RANDOM_FACEWEAR(NAME,GEAR) [SIDE,NAME,4,GEAR] call bax_loadouts_fnc_addRandomGear
#define REMOVE_RANDOM_GEAR(NAME) [SIDE,NAME] call bax_loadouts_fnc_removeRandomGear

#define CREATE_CLASS(CLASSNAME,LOADOUTNAME) [SIDE,CLASSNAME,LOADOUTNAME] call bax_loadouts_fnc_createClass
#define ADD_LOADOUT(CLASSNAME,LOADOUTNAME) [SIDE,CLASSNAME,LOADOUTNAME] call bax_loadouts_fnc_addLoadout

#define SET_ROLE(ROLE,LOADOUT,CLASS) [SIDE,ROLE,LOADOUT,CLASS] call bax_loadouts_fnc_addPreset
#define SET_DEFAULT(LOADOUT,CLASS) [SIDE,"default",LOADOUT,CLASS] call bax_loadouts_fnc_addPreset

// Create Loadout Advanced - do several loadout-related commands with just one command
// TODO: Add future traits...
#define CLA(NAME,LOADOUT,MEDIC,ENGINEER,CLASS,ROLE) [SIDE,NAME,LOADOUT,[MEDIC,ENGINEER],CLASS,ROLE] call bax_loadouts_fnc_cla 


// RADIOS


// MAP MARKERS

#define SET_GROUP_ICON(GROUP,ICON) [SIDE,GROUP,ICON] call bax_mapMarkers_fnc_registerGroupIcon
#define SET_GROUP_COLOR(GROUP,COLOR) [SIDE,GROUP,COLOR] call bax_mapMarkers_fnc_registerGroupColor
#define HIDE_GROUP(GROUP) [SIDE,GROUP,true] call bax_mapMarkers_fnc_registerGroupHidden

#define COLOR_WHITE [1,1,1,1]
#define COLOR_BLACK [0,0,0,1]
#define COLOR_RED [1,0,0,1]
#define COLOR_BLUE [0,0,1,1]
#define COLOR_GREEN [0,1,0,1]
#define COLOR_YELLOW [1,1,0,1]
#define COLOR_ORANGE [1,0.5,0,1]
#define COLOR_PURPLE [0.5,0,1,1]
#define COLOR_PINK [1,0.25,1,1]
#define COLOR_TAN [1,0.6,0.3,1]
#define COLOR_LGRAY [0.15,0.15,0.15,1]
#define COLOR_BLUFOR [0.0,0.3,0.6,1]
#define COLOR_OPFOR [0.5,0.0,0.0,1]
#define COLOR_INDFOR [0.0,0.5,0.0,1]
#define COLOR_CIV [0.4,0.0,0.5,1]

// SIDE: b o n c
#define B_ICON_AIR(SIDE) (getMissionPath SVAR(CONCAT3(assets\markers\,SIDE,_air.paa)))
#define B_ICON_ANTIAIR(SIDE) (getMissionPath SVAR(CONCAT3(assets\markers\,SIDE,_antiair.paa)))
#define B_ICON_ARMOR(SIDE) (getMissionPath SVAR(CONCAT3(assets\markers\,SIDE,_armor.paa)))
#define B_ICON_ART(SIDE) (getMissionPath SVAR(CONCAT3(assets\markers\,SIDE,_art.paa)))
#define B_ICON_HQ(SIDE) (getMissionPath SVAR(CONCAT3(assets\markers\,SIDE,_hq.paa)))
#define B_ICON_INF(SIDE) (getMissionPath SVAR(CONCAT3(assets\markers\,SIDE,_inf.paa)))
#define B_ICON_INSTALLATION(SIDE) (getMissionPath SVAR(CONCAT3(assets\markers\,SIDE,_installation.paa)))
#define B_ICON_MAINT(SIDE) (getMissionPath SVAR(CONCAT3(assets\markers\,SIDE,_maint.paa)))
#define B_ICON_MECHINF(SIDE) (getMissionPath SVAR(CONCAT3(assets\markers\,SIDE,_mech_inf.paa)))
#define B_ICON_MED(SIDE) (getMissionPath SVAR(CONCAT3(assets\markers\,SIDE,_med.paa)))
#define B_ICON_MORTAR(SIDE) (getMissionPath SVAR(CONCAT3(assets\markers\,SIDE,_mortar.paa)))
#define B_ICON_MOTORINF(SIDE) (getMissionPath SVAR(CONCAT3(assets\markers\,SIDE,_motor_inf.paa)))
#define B_ICON_NAVAL(SIDE) (getMissionPath SVAR(CONCAT3(assets\markers\,SIDE,_naval.paa)))
#define B_ICON_PLANE(SIDE) (getMissionPath SVAR(CONCAT3(assets\markers\,SIDE,_plane.paa)))
#define B_ICON_RECON(SIDE) (getMissionPath SVAR(CONCAT3(assets\markers\,SIDE,_recon.paa)))
#define B_ICON_SERVICE(SIDE) (getMissionPath SVAR(CONCAT3(assets\markers\,SIDE,_service.paa)))
#define B_ICON_SUPPORT(SIDE) (getMissionPath SVAR(CONCAT3(assets\markers\,SIDE,_support.paa)))
#define B_ICON_UAV(SIDE) (getMissionPath SVAR(CONCAT3(assets\markers\,SIDE,_uav.paa)))
#define B_ICON_UNKNOWN(SIDE) (getMissionPath SVAR(CONCAT3(assets\markers\,SIDE,_unknown.paa)))

#define ICON_AIR(SIDE) SVAR(CONCAT3(\A3\ui_f\data\map\markers\nato\,SIDE,_air.paa))
#define ICON_ANTIAIR(SIDE) SVAR(CONCAT3(\A3\ui_f\data\map\markers\nato\,SIDE,_antiair.paa))
#define ICON_ARMOR(SIDE) SVAR(CONCAT3(\A3\ui_f\data\map\markers\nato\,SIDE,_armor.paa))
#define ICON_ART(SIDE) SVAR(CONCAT3(\A3\ui_f\data\map\markers\nato\,SIDE,_art.paa))
#define ICON_HQ(SIDE) SVAR(CONCAT3(\A3\ui_f\data\map\markers\nato\,SIDE,_hq.paa))
#define ICON_INF(SIDE) SVAR(CONCAT3(\A3\ui_f\data\map\markers\nato\,SIDE,_inf.paa))
#define ICON_INSTALLATION(SIDE) SVAR(CONCAT3(\A3\ui_f\data\map\markers\nato\,SIDE,_installation.paa))
#define ICON_MAINT(SIDE) SVAR(CONCAT3(\A3\ui_f\data\map\markers\nato\,SIDE,_maint.paa))
#define ICON_MECHINF(SIDE) SVAR(CONCAT3(\A3\ui_f\data\map\markers\nato\,SIDE,_mech_inf.paa))
#define ICON_MED(SIDE) SVAR(CONCAT3(\A3\ui_f\data\map\markers\nato\,SIDE,_med.paa))
#define ICON_MORTAR(SIDE) SVAR(CONCAT3(\A3\ui_f\data\map\markers\nato\,SIDE,_mortar.paa))
#define ICON_MOTORINF(SIDE) SVAR(CONCAT3(\A3\ui_f\data\map\markers\nato\,SIDE,_motor_inf.paa))
#define ICON_NAVAL(SIDE) SVAR(CONCAT3(\A3\ui_f\data\map\markers\nato\,SIDE,_naval.paa))
#define ICON_PLANE(SIDE) SVAR(CONCAT3(\A3\ui_f\data\map\markers\nato\,SIDE,_plane.paa))
#define ICON_RECON(SIDE) SVAR(CONCAT3(\A3\ui_f\data\map\markers\nato\,SIDE,_recon.paa))
#define ICON_SERVICE(SIDE) SVAR(CONCAT3(\A3\ui_f\data\map\markers\nato\,SIDE,_service.paa))
#define ICON_SUPPORT(SIDE) SVAR(CONCAT3(\A3\ui_f\data\map\markers\nato\,SIDE,_support.paa))
#define ICON_UAV(SIDE) SVAR(CONCAT3(\A3\ui_f\data\map\markers\nato\,SIDE,_uav.paa))
#define ICON_UNKNOWN(SIDE) SVAR(CONCAT3(\A3\ui_f\data\map\markers\nato\,SIDE,_unknown.paa))

#define ICON_AIR_C "\A3\ui_f\data\map\markers\nato\c_air.paa"
#define ICON_CAR_C "\A3\ui_f\data\map\markers\nato\c_car.paa"
#define ICON_PLANE_C "\A3\ui_f\data\map\markers\nato\c_plane.paa"
#define ICON_SHIP_C "\A3\ui_f\data\map\markers\nato\c_ship.paa"
#define ICON_UNKNOWN_C "\A3\ui_f\data\map\markers\nato\c_unknown.paa"

#define AIR "AIR"
#define ANTIAIR "ANTIAIR"
#define ARMOR "ARMOR"
#define ART "ARTILLERY"
#define HQ "HQ"
#define INF "INFANTRY"
#define INSTALLATION "INSTALLATION"
#define MAINT "MAINTENANCE"
#define MECHINF "MECHANIZEDINFANTRY"
#define MED "MEDIC"
#define MORTAR "MORTAR"
#define MOTORINF "MOTORIZEDINFANTRY"
#define NAVAL "NAVAL"
#define PLANE "PLANE"
#define RECON "RECON"
#define SERVICE "SERVICE"
#define SUPPORT "SUPPORT"
#define UAV "UAV"
#define UNKNOWN "UNKNOWN"

// Arsenal

// #define REGISTER_ARSENAL(SIDE,OBJECT) [SIDE,OBJECT] call bax_arsenals_fnc_registerArsenal
#define CREATE_ARSENAL(ROLE,ITEMS) [SIDE,ROLE,ITEMS] call bax_arsenals_fnc_registerArsenalPreset
#define DEFAULT_ARSENAL(ITEMS) [SIDE,"default",ITEMS] call bax_arsenals_fnc_registerArsenalPreset
#define GET_LOADOUT_ITEMS(LOADOUTNAME) [SIDE,LOADOUTNAME] call bax_arsenals_fnc_getItemsFromLoadout
#define GET_CLASS_ITEMS(CLASSNAME) [SIDE,CLASSNAME] call bax_arsenals_fnc_getItemsFromClass



