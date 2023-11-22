
#include "utilityMacros.hpp"

#define MISC_ITEMS                                      ["ACE_RangeTable_82mm","ACE_adenosine","ACE_artilleryTable","ACE_ATragMX","ACE_fieldDressing","ACE_elasticBandage","ACE_packingBandage","ACE_Banana","ACE_quikclot","ACE_bloodIV","ACE_bloodIV_250","ACE_bloodIV_500","ACE_bodyBag","ACE_CableTie","ACE_Can_Franta","ACE_Can_RedGull","ACE_Can_Spirit","ACE_Canteen","ACE_Canteen_Empty","ACE_Canteen_Half","ACE_Cellphone","ACE_Chemlight_Shield","ACE_DAGR","ACE_DeadManSwitch","ACE_DefusalKit","ACE_EarPlugs","ACE_EntrenchingTool","ACE_epinephrine","FirstAidKit","ACE_Fortify","ACE_Flashlight_MX991","ACE_Humanitarian_Ration","ACE_HuntIR_monitor","ACE_IR_Strobe_Item","ACE_Kestrel4500","ACE_Flashlight_KSF1","ACE_M26_Clacker","ACE_Clacker","ACE_Flashlight_XL50","ACE_MapTools","ace_marker_flags_black","ace_marker_flags_blue","ace_marker_flags_green","ace_marker_flags_orange","ace_marker_flags_purple","ace_marker_flags_red","ace_marker_flags_white","ace_marker_flags_yellow","Medikit","ACE_microDAGR","ACE_morphine","MineDetector","ACE_MRE_BeefStew","ACE_MRE_ChickenTikkaMasala","ACE_MRE_ChickenHerbDumplings","ACE_MRE_CreamChickenSoup","ACE_MRE_CreamTomatoSoup","ACE_MRE_LambCurry","ACE_MRE_MeatballsPasta","ACE_MRE_SteakVegetables","ACE_personalAidKit","ACE_plasmaIV","ACE_plasmaIV_500","ACE_plasmaIV_250","ACE_RangeCard","ACE_salineIV","ACE_salineIV_250","ACE_salineIV_500","ACE_Sandbag_empty","ACE_SpareBarrel_Item","ACE_splint","ACE_SpottingScope","ACE_SpraypaintBlack","ACE_SpraypaintBlue","ACE_SpraypaintGreen","ACE_SpraypaintRed","ACE_RangeTable_82mm","ACE_adenosine","ACE_artilleryTable","ACE_ATragMX","ACE_fieldDressing","ACE_elasticBandage","ACE_packingBandage","ACE_Banana","ACE_quikclot","ACE_bloodIV","ACE_bloodIV_250","ACE_bloodIV_500","ACE_bodyBag","ACE_CableTie","ACE_Can_Franta","ACE_Can_RedGull","ACE_Can_Spirit","ACE_Canteen","ACE_Canteen_Empty","ACE_Canteen_Half","ACE_Cellphone","ACE_Chemlight_Shield","ACE_DAGR","ACE_DeadManSwitch","ACE_DefusalKit","ACE_EarPlugs","ACE_EntrenchingTool","ACE_epinephrine","FirstAidKit","ACE_Fortify","ACE_Flashlight_MX991","ACE_Humanitarian_Ration","ACE_HuntIR_monitor","ACE_IR_Strobe_Item","ACE_Kestrel4500","ACE_Flashlight_KSF1","ACE_M26_Clacker","ACE_Clacker","ACE_Flashlight_XL50","ACE_MapTools","ace_marker_flags_black","ace_marker_flags_blue","ace_marker_flags_green","ace_marker_flags_orange","ace_marker_flags_purple","ace_marker_flags_red","ace_marker_flags_white","ace_marker_flags_yellow","Medikit","ACE_microDAGR","ACE_morphine","MineDetector","ACE_MRE_BeefStew","ACE_MRE_ChickenTikkaMasala","ACE_MRE_ChickenHerbDumplings","ACE_MRE_CreamChickenSoup","ACE_MRE_CreamTomatoSoup","ACE_MRE_LambCurry","ACE_MRE_MeatballsPasta","ACE_MRE_SteakVegetables","ACE_personalAidKit","ACE_plasmaIV","ACE_plasmaIV_500","ACE_plasmaIV_250","ACE_RangeCard","ACE_salineIV","ACE_salineIV_250","ACE_salineIV_500","ACE_Sandbag_empty","ACE_SpareBarrel_Item","ACE_splint","ACE_SpottingScope","ACE_SpraypaintBlack","ACE_SpraypaintBlue","ACE_SpraypaintGreen","ACE_SpraypaintRed","ToolKit","ACE_wirecutter"]
#define EMPTY_LOADOUT                                   [[],[],[],[],[],[],"","",[],["","","","","",""]]

// #define VAR_FACTION_REGISTRY                            BAX_var_faction_ids
// #define VAR_ARSENAL_OBJECTS                             BAX_var_arsenal_objects
// #define VAR_SIDE_ARSENAL_LISTS                          BAX_var_side_arsenal_lists
// #define VAR_ARSENAL_BOX                                 BAX_var_arsenal_box

#define VARS_FACTION_REGISTRY                           BAX_VAR("faction_registry")
#define VARS_LOADOUT_RESPAWN                            BAX_VAR("loadout_respawn")
// #define VARS_LOADOUT_RESPAWN                            ENH_respawnLoadout // 3den respawn variable
#define VARS_FACTION_ID                                 BAX_VAR("unit_faction_id")
#define VARS_LOADOUT_SUFFIX                             BAX_VAR("unit_loadout_suffix")
#define VARS_CLASS_SUFFIX                               BAX_VAR("unit_class_suffix")

#define VARS_ARSENAL_OBJ_TRIGGER                        BAX_VAR("arsenal_trigger")
#define VARS_ARSENAL_OBJ_ACTION_ID                      BAX_VAR("arsenal_action_id")
#define VARS_ARSENAL_OBJECTS                            BAX_VAR("arsenal_objects")
#define VARS_ARSENAL_OPENED                             BAX_VAR("arsenal_opened")
#define VARS_ARSENAL_BOX                                BAX_VAR("arsenal_box")

#define VARS_FACTION(FACTION)                           BAX_VAR((format ["faction_%1",FACTION]))
#define VARS_LOADOUT(FACTION,LOADOUT)                   BAX_VAR((format ["loadout_%1_%2",FACTION,LOADOUT]))
#define VARS_CLASS(FACTION,CLASS)                       BAX_VAR((format ["class_%1_%2",FACTION,CLASS]))
#define VARS_CRATE(FACTION,CRATE)                       BAX_VAR((format ["crate_%1_%2",FACTION,CRATE]))

#define VARS_LOADOUT_REGISTRY(FACTION)                  BAX_VAR((format ["registry_loadouts_%1",FACTION]))
#define VARS_CLASS_REGISTRY(FACTION)                    BAX_VAR((format ["registry_classes_%1",FACTION]))
#define VARS_CRATE_REGISTRY(FACTION)                    BAX_VAR((format ["registry_crates_%1",FACTION]))

#define VARS_SIDE_ARSENAL(SIDE)                         BAX_VAR((format ["arsenal_side_%1",SIDE]))
#define VARS_FACTION_ARSENAL(FACTION)                   BAX_VAR((format ["arsenal_faction_%1",FACTION]))
#define VARS_LOADOUT_ARSENAL(FACTION,LOADOUT)           BAX_VAR((format ["arsenal_loadout_%1_%2",FACTION,LOADOUT]))
#define VARS_CLASS_ARSENAL(FACTION,CLASS)               BAX_VAR((format ["arsenal_class_%1_%2",FACTION,CLASS]))
