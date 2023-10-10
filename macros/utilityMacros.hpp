
// #define TAG(STRING) ("baf_" + STRING)
// #define FUNC(STRING) ("BAF_fnc_" + STRING)
// #define VAR(STRING) ("baf_var_" + STRING)

#ifndef UTILITY
#define UTILITY

// CONSTANTS

#define WEST_ID                                         blufor
#define EAST_ID                                         opfor
#define INDEPENDENT_ID                                  indfor
#define CIVILIAN_ID                                     civilian
#define WEST_ID_STR                                     #WEST_ID
#define EAST_ID_STR                                     #EAST_ID
#define INDEPENDENT_ID_STR                              #INDEPENDENT_ID
#define CIVILIAN_ID_STR                                 #CIVILIAN_ID
#define MISC_ITEMS                                      ["ACE_RangeTable_82mm","ACE_adenosine","ACE_artilleryTable","ACE_ATragMX","ACE_fieldDressing","ACE_elasticBandage","ACE_packingBandage","ACE_Banana","ACE_quikclot","ACE_bloodIV","ACE_bloodIV_250","ACE_bloodIV_500","ACE_bodyBag","ACE_CableTie","ACE_Can_Franta","ACE_Can_RedGull","ACE_Can_Spirit","ACE_Canteen","ACE_Canteen_Empty","ACE_Canteen_Half","ACE_Cellphone","ACE_Chemlight_Shield","ACE_DAGR","ACE_DeadManSwitch","ACE_DefusalKit","ACE_EarPlugs","ACE_EntrenchingTool","ACE_epinephrine","FirstAidKit","ACE_Fortify","ACE_Flashlight_MX991","ACE_Humanitarian_Ration","ACE_HuntIR_monitor","ACE_IR_Strobe_Item","ACE_Kestrel4500","ACE_Flashlight_KSF1","ACE_M26_Clacker","ACE_Clacker","ACE_Flashlight_XL50","ACE_MapTools","ace_marker_flags_black","ace_marker_flags_blue","ace_marker_flags_green","ace_marker_flags_orange","ace_marker_flags_purple","ace_marker_flags_red","ace_marker_flags_white","ace_marker_flags_yellow","Medikit","ACE_microDAGR","ACE_morphine","MineDetector","ACE_MRE_BeefStew","ACE_MRE_ChickenTikkaMasala","ACE_MRE_ChickenHerbDumplings","ACE_MRE_CreamChickenSoup","ACE_MRE_CreamTomatoSoup","ACE_MRE_LambCurry","ACE_MRE_MeatballsPasta","ACE_MRE_SteakVegetables","ACE_personalAidKit","ACE_plasmaIV","ACE_plasmaIV_500","ACE_plasmaIV_250","ACE_RangeCard","ACE_salineIV","ACE_salineIV_250","ACE_salineIV_500","ACE_Sandbag_empty","ACE_SpareBarrel_Item","ACE_splint","ACE_SpottingScope","ACE_SpraypaintBlack","ACE_SpraypaintBlue","ACE_SpraypaintGreen","ACE_SpraypaintRed","ACE_RangeTable_82mm","ACE_adenosine","ACE_artilleryTable","ACE_ATragMX","ACE_fieldDressing","ACE_elasticBandage","ACE_packingBandage","ACE_Banana","ACE_quikclot","ACE_bloodIV","ACE_bloodIV_250","ACE_bloodIV_500","ACE_bodyBag","ACE_CableTie","ACE_Can_Franta","ACE_Can_RedGull","ACE_Can_Spirit","ACE_Canteen","ACE_Canteen_Empty","ACE_Canteen_Half","ACE_Cellphone","ACE_Chemlight_Shield","ACE_DAGR","ACE_DeadManSwitch","ACE_DefusalKit","ACE_EarPlugs","ACE_EntrenchingTool","ACE_epinephrine","FirstAidKit","ACE_Fortify","ACE_Flashlight_MX991","ACE_Humanitarian_Ration","ACE_HuntIR_monitor","ACE_IR_Strobe_Item","ACE_Kestrel4500","ACE_Flashlight_KSF1","ACE_M26_Clacker","ACE_Clacker","ACE_Flashlight_XL50","ACE_MapTools","ace_marker_flags_black","ace_marker_flags_blue","ace_marker_flags_green","ace_marker_flags_orange","ace_marker_flags_purple","ace_marker_flags_red","ace_marker_flags_white","ace_marker_flags_yellow","Medikit","ACE_microDAGR","ACE_morphine","MineDetector","ACE_MRE_BeefStew","ACE_MRE_ChickenTikkaMasala","ACE_MRE_ChickenHerbDumplings","ACE_MRE_CreamChickenSoup","ACE_MRE_CreamTomatoSoup","ACE_MRE_LambCurry","ACE_MRE_MeatballsPasta","ACE_MRE_SteakVegetables","ACE_personalAidKit","ACE_plasmaIV","ACE_plasmaIV_500","ACE_plasmaIV_250","ACE_RangeCard","ACE_salineIV","ACE_salineIV_250","ACE_salineIV_500","ACE_Sandbag_empty","ACE_SpareBarrel_Item","ACE_splint","ACE_SpottingScope","ACE_SpraypaintBlack","ACE_SpraypaintBlue","ACE_SpraypaintGreen","ACE_SpraypaintRed","ToolKit","ACE_wirecutter"]
#define EMPTY_LOADOUT                                   [[],[],[],[],[],[],"","",[],["","","","","",""]]

#define VARS_RESPAWN_LOADOUT                            "BAF_var_respawn_loadout"
#define VARS_FACTION_ID                                 "BAF_var_unit_faction_id"
#define VARS_LOADOUT_SUFFIX                             "BAF_var_unit_loadout_suffix"
#define VARS_CLASS_SUFFIX                               "BAF_var_unit_class_suffix"

#define VAR_FACTION_REGISTRY                            BAF_var_faction_ids
#define VAR_RADIO_PRESETS                               BAF_var_radio_presets
#define VAR_ARSENAL_OBJECTS                             BAF_var_arsenal_objects

// FUNCTIONS
#define CONCAT(VALUE1,VALUE2)                           VALUE1##VALUE2
#define CONCAT3(VALUE1,VALUE2,VALUE3)                   VALUE1##VALUE2##VALUE3
#define CONCAT4(VALUE1,VALUE2,VALUE3,VALUE4)            VALUE1##VALUE2##VALUE3##VALUE4

#define VAR_TO_STR(VALUE)                               #VALUE

#define GETVAR(OBJECT,VARIABLE_NAME,DEFAULT_VALUE)      OBJECT getVariable [VARIABLE_NAME,DEFAULT_VALUE]
#define SETVAR(OBJECT,VARIABLE_NAME,VALUE)              OBJECT setVariable [VARIABLE_NAME,VALUE]
#define SETVARG(OBJECT,VARIABLE_NAME,VALUE)             OBJECT setVariable [VARIABLE_NAME,VALUE,true]
#define GETVARM(VARIABLE_NAME,DEFAULT_VALUE)            missionNamespace getVariable [VARIABLE_NAME,DEFAULT_VALUE]
#define SETVARM(VARIABLE_NAME,VALUE)                    missionNamespace setVariable [VARIABLE_NAME,VALUE]
#define SETVARMG(VARIABLE_NAME,VALUE)                   missionNamespace setVariable [VARIABLE_NAME,VALUE,true]

#define DEBUG_RPT_FULL(MSG)                             diag_log format ["[BAF] (%1,%2) %3",_fnc_scriptName,__LINE__,MSG]
#define DEBUG_RPT(MSG)                                  diag_log format ["[BAF]: %1",MSG]

#endif
