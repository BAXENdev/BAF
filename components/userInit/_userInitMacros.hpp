
#include "..\..\utilityMacros.hpp"
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

#define SET_DEFAULT_LOADOUT(LOADOUT) [SIDE,VARS_DEFAULT,LOADOUT] call bax_loadouts_fnc_createLoadout

#define CREATE_CRATE(NAME,ITEMS) [SIDE,NAME,ITEMS] call bax_supplyCrates_fnc_registerCrate
#define ADD_CRATE_ITEMS(NAME,ITEMS) [SIDE,NAME,ITEMS] call bax_supplyCrates_fnc_addItemsToCrate
#define ADD_BACKPACK_TO_CRATE(CRATE_NAME,LOADOUT_NAME,AMOUNT) [SIDE,CRATE_NAME,LOADOUT_NAME,AMOUNT] call bax_supplyCrates_fnc_addBackpack
#define ADD_PRIMARY_TO_CRATE(CRATE_NAME,LOADOUT_NAME,AMOUNT) [SIDE,CRATE_NAME,LOADOUT_NAME,0,AMOUNT] call bax_supplyCrates_fnc_addLoadoutWeapon
#define ADD_SECONDARY_TO_CRATE(CRATE_NAME,LOADOUT_NAME,AMOUNT) [SIDE,CRATE_NAME,LOADOUT_NAME,1,AMOUNT] call bax_supplyCrates_fnc_addLoadoutWeapon
#define ADD_LAUNCHER_TO_CRATE(CRATE_NAME,LOADOUT_NAME,AMOUNT) [SIDE,CRATE_NAME,LOADOUT_NAME,2,AMOUNT] call bax_supplyCrates_fnc_addLoadoutWeapon
#define ADD_PRIMARY_MAG_TO_CRATE(CRATE_NAME,LOADOUT_NAME,AMOUNT) [SIDE,CRATE_NAME,LOADOUT_NAME,0,AMOUNT] call bax_supplyCrates_fnc_addLoadoutMag
#define ADD_SECONDARY_MAG_TO_CRATE(CRATE_NAME,LOADOUT_NAME,AMOUNT) [SIDE,CRATE_NAME,LOADOUT_NAME,1,AMOUNT] call bax_supplyCrates_fnc_addLoadoutMag
#define ADD_LAUNCHER_MAG_TO_CRATE(CRATE_NAME,LOADOUT_NAME,AMOUNT) [SIDE,CRATE_NAME,LOADOUT_NAME,2,AMOUNT] call bax_supplyCrates_fnc_addLoadoutMag
#define BANDAGES(AMOUNT) [["ACE_fieldDressing",AMOUNT],["ACE_elasticBandage",AMOUNT],["ACE_packingBandage",AMOUNT],["ACE_quikclot",AMOUNT],["ACE_tourniquet",AMOUNT]]
#define SPLINTS(AMOUNT) [["ACE_splint",AMOUNT]]
#define INJECTORS(AMOUNT) [["ACE_adenosine",AMOUNT],["ACE_epinephrine",AMOUNT],["ACE_morphine",AMOUNT]]
#define SUTURES(AMOUNT) [["ACE_suture",AMOUNT]]
#define BLOOD(AMOUNT) [["ACE_bloodIV",AMOUNT],["ACE_bloodIV_500",AMOUNT],["ACE_bloodIV_250",AMOUNT]]
#define PLASMA(AMOUNT) [["ACE_plasmaIV",AMOUNT],["ACE_plasmaIV_500",AMOUNT],["ACE_plasmaIV_250",AMOUNT]]
#define SALINE(AMOUNT) [["ACE_salineIV",AMOUNT],["ACE_salineIV_500",AMOUNT],["ACE_salineIV_250",AMOUNT]]
#define MEDICAL(FACTOR) (BANDAGES(round (40 * FACTOR)) + SPLINTS(round (10 * FACTOR)) + SUTURES(round (20 * FACTOR)) + SALINE(round (10 * FACTOR)))

// RADIOS

#define PRC117 "ACRE_PRC117F"
#define PRC152 "ACRE_PRC152"
#define PRC148 "ACRE_PRC148"
#define PRC343 "ACRE_PRC343"
#define BF888S "ACRE_BF888S"
#define ADD_RADIO(RADIO, CHANNEL, CHANNEL_NAME, ADD_SIDE, GROUPS, ROLES)    [SIDE, RADIO, CHANNEL, CHANNEL_NAME, ADD_SIDE, GROUPS, ROLES] call bax_radios_fnc_registerRadioChannel
#define ADD_RADIO_SIDE(RADIO, CHANNEL, CHANNEL_NAME)                        [SIDE, RADIO, CHANNEL, CHANNEL_NAME, true, [], []] call bax_radios_fnc_registerRadioChannel
#define ADD_RADIO_GROUPS(RADIO, CHANNEL, CHANNEL_NAME, GROUPS)              [SIDE, RADIO, CHANNEL, CHANNEL_NAME, false, GROUPS, []] call bax_radios_fnc_registerRadioChannel
#define ADD_RADIO_ROLES(RADIO, CHANNEL, CHANNEL_NAME, ROLES)                [SIDE, RADIO, CHANNEL, CHANNEL_NAME, false, [], ROLES] call bax_radios_fnc_registerRadioChannel

// MAP MARKERS

#define SET_GROUP_ICON(GROUP,ICON) [SIDE,GROUP,ICON] call bax_mapMarkers_fnc_setGroupIcon
#define SET_GROUP_COLOR(GROUP,COLOR) [SIDE,GROUP,COLOR] call bax_mapMarkers_fnc_setGroupColor
#define HIDE_GROUP(GROUP) [SIDE,GROUP,true] call bax_mapMarkers_fnc_setGroupHidden

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

// SIDE: b o n
#define BAX_ICON_AIR(SIDE) (getMissionPath SVAR(CONCAT3(assets\markers\,SIDE,_air.paa)))
#define BAX_ICON_ANTIAIR(SIDE) (getMissionPath SVAR(CONCAT3(assets\markers\,SIDE,_antiair.paa)))
#define BAX_ICON_ARMOR(SIDE) (getMissionPath SVAR(CONCAT3(assets\markers\,SIDE,_armor.paa)))
#define BAX_ICON_ART(SIDE) (getMissionPath SVAR(CONCAT3(assets\markers\,SIDE,_art.paa)))
#define BAX_ICON_HQ(SIDE) (getMissionPath SVAR(CONCAT3(assets\markers\,SIDE,_hq.paa)))
#define BAX_ICON_INF(SIDE) (getMissionPath SVAR(CONCAT3(assets\markers\,SIDE,_inf.paa)))
#define BAX_ICON_INSTALLATION(SIDE) (getMissionPath SVAR(CONCAT3(assets\markers\,SIDE,_installation.paa)))
#define BAX_ICON_MAINT(SIDE) (getMissionPath SVAR(CONCAT3(assets\markers\,SIDE,_maint.paa)))
#define BAX_ICON_MECHINF(SIDE) (getMissionPath SVAR(CONCAT3(assets\markers\,SIDE,_mech_inf.paa)))
#define BAX_ICON_MED(SIDE) (getMissionPath SVAR(CONCAT3(assets\markers\,SIDE,_med.paa)))
#define BAX_ICON_MORTAR(SIDE) (getMissionPath SVAR(CONCAT3(assets\markers\,SIDE,_mortar.paa)))
#define BAX_ICON_MOTORINF(SIDE) (getMissionPath SVAR(CONCAT3(assets\markers\,SIDE,_motor_inf.paa)))
#define BAX_ICON_NAVAL(SIDE) (getMissionPath SVAR(CONCAT3(assets\markers\,SIDE,_naval.paa)))
#define BAX_ICON_PLANE(SIDE) (getMissionPath SVAR(CONCAT3(assets\markers\,SIDE,_plane.paa)))
#define BAX_ICON_RECON(SIDE) (getMissionPath SVAR(CONCAT3(assets\markers\,SIDE,_recon.paa)))
#define BAX_ICON_SERVICE(SIDE) (getMissionPath SVAR(CONCAT3(assets\markers\,SIDE,_service.paa)))
#define BAX_ICON_SUPPORT(SIDE) (getMissionPath SVAR(CONCAT3(assets\markers\,SIDE,_support.paa)))
#define BAX_ICON_UAV(SIDE) (getMissionPath SVAR(CONCAT3(assets\markers\,SIDE,_uav.paa)))
#define BAX_ICON_UNKNOWN(SIDE) (getMissionPath SVAR(CONCAT3(assets\markers\,SIDE,_unknown.paa)))

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
#define CREATE_ARSENAL(ROLE,ITEMS) [SIDE,ROLE,ITEMS] call bax_arsenals_fnc_registerArsenalItems
#define DEFAULT_ARSENAL(ITEMS) [SIDE,VARS_DEFAULT,ITEMS] call bax_arsenals_fnc_registerArsenalItems
#define GET_LOADOUT_ITEMS(LOADOUTNAME) [SIDE,LOADOUTNAME] call bax_arsenals_fnc_getItemsFromLoadout



