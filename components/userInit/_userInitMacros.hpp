
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

#define CREATE_CRATE(NAME) [SIDE,NAME,[]] call bax_supplyCrates_fnc_registerCrate
#define ADD_CRATE_ITEMS(NAME,ITEM,AMOUNT) [SIDE,NAME,[[ITEM,AMOUNT]]] call bax_supplyCrates_fnc_addItemsToCrate
#define ADD_CRATE_BACKPACK(CRATE_NAME,LOADOUT_NAME,AMOUNT) [SIDE,CRATE_NAME,LOADOUT_NAME,AMOUNT] call bax_supplyCrates_fnc_addBackpack
#define ADD_CRATE_PRIMARY(CRATE_NAME,LOADOUT_NAME,AMOUNT) [SIDE,CRATE_NAME,LOADOUT_NAME,0,AMOUNT] call bax_supplyCrates_fnc_addLoadoutWeapon
#define ADD_CRATE_LAUNCHER(CRATE_NAME,LOADOUT_NAME,AMOUNT) [SIDE,CRATE_NAME,LOADOUT_NAME,1,AMOUNT] call bax_supplyCrates_fnc_addLoadoutWeapon
#define ADD_CRATE_SECONDARY(CRATE_NAME,LOADOUT_NAME,AMOUNT) [SIDE,CRATE_NAME,LOADOUT_NAME,2,AMOUNT] call bax_supplyCrates_fnc_addLoadoutWeapon
#define ADD_CRATE_PRIMARY_MAG(CRATE_NAME,LOADOUT_NAME,AMOUNT) [SIDE,CRATE_NAME,LOADOUT_NAME,0,AMOUNT] call bax_supplyCrates_fnc_addLoadoutMag
#define ADD_CRATE_LAUNCHER_MAG(CRATE_NAME,LOADOUT_NAME,AMOUNT) [SIDE,CRATE_NAME,LOADOUT_NAME,1,AMOUNT] call bax_supplyCrates_fnc_addLoadoutMag
#define ADD_CRATE_SECONDARY_MAG(CRATE_NAME,LOADOUT_NAME,AMOUNT) [SIDE,CRATE_NAME,LOADOUT_NAME,2,AMOUNT] call bax_supplyCrates_fnc_addLoadoutMag

#define ADD_CRATE_BANDAGES(NAME, AMOUNT) [SIDE, NAME, [["ACE_fieldDressing",AMOUNT],["ACE_elasticBandage",AMOUNT],["ACE_packingBandage",AMOUNT],["ACE_quikclot",AMOUNT],["ACE_tourniquet",AMOUNT]]] call bax_supplyCrates_fnc_addItemsToCrate
#define ADD_CRATE_SPLINTS(NAME, AMOUNT) [SIDE, NAME, [["ACE_splint",AMOUNT]]] call bax_supplyCrates_fnc_addItemsToCrate
#define ADD_CRATE_INJECTORS(NAME, AMOUNT) [SIDE, NAME, [["ACE_adenosine",AMOUNT],["ACE_epinephrine",AMOUNT],["ACE_morphine",AMOUNT]]] call bax_supplyCrates_fnc_addItemsToCrate
#define ADD_CRATE_SUTURES(NAME, AMOUNT) [SIDE, NAME, [["ACE_suture",AMOUNT]]] call bax_supplyCrates_fnc_addItemsToCrate
#define ADD_CRATE_BLOOD(NAME, AMOUNT) [SIDE, NAME, [["ACE_bloodIV",AMOUNT],["ACE_bloodIV_500",AMOUNT],["ACE_bloodIV_250",AMOUNT]]] call bax_supplyCrates_fnc_addItemsToCrate
#define ADD_CRATE_PLASMA(NAME, AMOUNT) [SIDE, NAME, [["ACE_plasmaIV",AMOUNT],["ACE_plasmaIV_500",AMOUNT],["ACE_plasmaIV_250",AMOUNT]]] call bax_supplyCrates_fnc_addItemsToCrate
#define ADD_CRATE_SALINE(NAME, AMOUNT) [SIDE, NAME, [["ACE_salineIV",AMOUNT],["ACE_salineIV_500",AMOUNT],["ACE_salineIV_250",AMOUNT]]] call bax_supplyCrates_fnc_addItemsToCrate
#define ADD_CRATE_MEDICAL(NAME, FACTOR) [SIDE, NAME, [["ACE_fieldDressing",40*FACTOR],["ACE_elasticBandage",40*FACTOR],["ACE_packingBandage",40*FACTOR],["ACE_quikclot",40*FACTOR],["ACE_tourniquet",40*FACTOR],["ACE_splint",20*FACTOR],["ACE_adenosine",20*FACTOR],["ACE_epinephrine",20*FACTOR],["ACE_morphine",20*FACTOR],["ACE_suture",50*FACTOR],["ACE_salineIV",15*FACTOR],["ACE_salineIV_500",15*FACTOR],["ACE_salineIV_250",15*FACTOR]]] call bax_supplyCrates_fnc_addItemsToCrate

// RADIOS

#define PRC117                                                          "ACRE_PRC117F"
#define PRC152                                                          "ACRE_PRC152"
#define PRC148                                                          "ACRE_PRC148"
#define PRC343                                                          "ACRE_PRC343"
#define BF888S                                                          "ACRE_BF888S"

#define SET_LR_NAME(NAME)                                               bax_radios_netNames get SIDE set ["LR", NAME]
#define SET_SR_NAME(NAME)                                               bax_radios_netNames get SIDE set ["SR", NAME]
#define SET_BF_NAME(NAME)                                               bax_radios_netNames get SIDE set ["BF", NAME]

#define ADD_RADIO(RADIO, CHANNEL, CHANNEL_NAME, ADD_SIDE, GROUP, ROLE)  [SIDE, RADIO, CHANNEL, CHANNEL_NAME, ADD_SIDE, [GROUP], [ROLE]] call bax_radios_fnc_registerRadioChannel
#define ADD_RADIO_SIDE(RADIO, CHANNEL, CHANNEL_NAME)                    [SIDE, RADIO, CHANNEL, CHANNEL_NAME, true, [], []] call bax_radios_fnc_registerRadioChannel
#define ADD_RADIO_GROUP(RADIO, CHANNEL, CHANNEL_NAME, GROUP)           [SIDE, RADIO, CHANNEL, CHANNEL_NAME, false, [GROUP], []] call bax_radios_fnc_registerRadioChannel
#define ADD_RADIO_ROLE(RADIO, CHANNEL, CHANNEL_NAME, ROLE)             [SIDE, RADIO, CHANNEL, CHANNEL_NAME, false, [], [ROLE]] call bax_radios_fnc_registerRadioChannel

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

#define ACRE_ITEMS ["ACRE_PRC117F","ACRE_PRC148","ACRE_PRC152","ACRE_PRC343","ACRE_PRC77","ACRE_BF888S","ACRE_SEM52SL","ACRE_SEM70","ACRE_VHF30108SPIKE","ACRE_VHF30108","ACRE_VHF30108MAST"]
#define ACE_MISC_ITEMS ["ACE_WaterBottle","ACE_Canteen","ACE_CableTie","ACE_EarPlugs","ACE_IR_Strobe_Item","ace_marker_flags_black","ace_marker_flags_blue","ace_marker_flags_green","ace_marker_flags_orange","ace_marker_flags_purple","ace_marker_flags_red","ace_marker_flags_white","ace_marker_flags_yellow","ACE_rope12","ACE_rope15","ACE_rope18","ACE_rope27","ACE_rope3","ACE_rope36","ACE_rope6","ACE_SpraypaintBlack","ACE_SpraypaintBlue","ACE_SpraypaintGreen","ACE_SpraypaintRed","ACE_SpraypaintWhite","ACE_SpraypaintYellow","ACE_UAVBattery","ACE_SpareBarrel"]
#define ACE_MEDICAL_ITEMS ["ACE_adenosine","ACE_fieldDressing","ACE_elasticBandage","ACE_packingBandage","ACE_quikclot","ACE_painkillers","ACE_bloodIV","ACE_bloodIV_250","ACE_bloodIV_500","ACE_bodyBag","ACE_bodyBag_blue","ACE_bodyBag_white","ACE_epinephrine","ACE_morphine","ACE_plasmaIV","ACE_plasmaIV_250","ACE_plasmaIV_500","ACE_salineIV","ACE_salineIV_250","ACE_salineIV_500","ACE_splint","ACE_surgicalKit","ACE_suture","ACE_tourniquet"]
#define ACE_TOOL_ITEMS ["ACE_RangeTable_82mm","ACE_artilleryTable","ACE_ATragMX","ACE_DAGR","ACE_DefusalKit","ACE_EntrenchingTool","ACE_Fortify","ACE_Flashlight_MX991","ACE_HuntIR_monitor","ACE_Kestrel4500","ACE_Flashlight_KSF1","ACE_Clacker","ACE_Flashlight_XL50","ACE_MapTools","ACE_microDAGR","MineDetector","ACE_PlottingBoard","ACE_RangeCard","ACE_SpottingScope","ACE_Tripod","ToolKit","ACE_wirecutter","acex_intelitems_notepad"]
#define BASE_ITEMS ["ACRE_PRC343","ACE_Canteen","ACE_CableTie","ACE_EarPlugs","ACE_IR_Strobe_Item","ACE_fieldDressing","ACE_elasticBandage","ACE_packingBandage","ACE_quikclot","ACE_painkillers","ACE_salineIV_500","ACE_splint","ACE_suture","ACE_tourniquet","ACE_EntrenchingTool","ACE_Flashlight_XL50","ACE_MapTools"]

#define CREATE_ARSENAL(ROLE,ITEMS) [SIDE,ROLE,ITEMS] call bax_arsenals_fnc_registerArsenalItems
#define DEFAULT_ARSENAL(ITEMS) [SIDE,VARS_DEFAULT,ITEMS] call bax_arsenals_fnc_registerArsenalItems
#define GET_LOADOUT_ITEMS(LOADOUTNAME) ([SIDE,LOADOUTNAME] call bax_arsenals_fnc_getItemsFromLoadout)



