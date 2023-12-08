
#include "utilityMacros.hpp"

#define MISC_ITEMS ['ACE_RangeTable_82mm','ACE_adenosine','ACE_artilleryTable','ACE_ATragMX','ACE_fieldDressing','ACE_elasticBandage','ACE_packingBandage','ACE_Banana','ACE_quikclot','ACE_bloodIV','ACE_bloodIV_250','ACE_bloodIV_500','ACE_bodyBag','ACE_CableTie','ACE_Can_Franta','ACE_Can_RedGull','ACE_Can_Spirit','ACE_Canteen','ACE_Canteen_Empty','ACE_Canteen_Half','ACE_Cellphone','ACE_Chemlight_Shield','ACE_DAGR','ACE_DeadManSwitch','ACE_DefusalKit','ACE_EarPlugs','ACE_EntrenchingTool','ACE_epinephrine','FirstAidKit','ACE_Fortify','ACE_Flashlight_MX991','ACE_Humanitarian_Ration','ACE_HuntIR_monitor','ACE_IR_Strobe_Item','ACE_Kestrel4500','ACE_Flashlight_KSF1','ACE_M26_Clacker','ACE_Clacker','ACE_Flashlight_XL50','ACE_MapTools','ace_marker_flags_black','ace_marker_flags_blue','ace_marker_flags_green','ace_marker_flags_orange','ace_marker_flags_purple','ace_marker_flags_red','ace_marker_flags_white','ace_marker_flags_yellow','Medikit','ACE_microDAGR','ACE_morphine','MineDetector','ACE_MRE_BeefStew','ACE_MRE_ChickenTikkaMasala','ACE_MRE_ChickenHerbDumplings','ACE_MRE_CreamChickenSoup','ACE_MRE_CreamTomatoSoup','ACE_MRE_LambCurry','ACE_MRE_MeatballsPasta','ACE_MRE_SteakVegetables','ACE_personalAidKit','ACE_plasmaIV','ACE_plasmaIV_500','ACE_plasmaIV_250','ACE_RangeCard','ACE_salineIV','ACE_salineIV_250','ACE_salineIV_500','ACE_Sandbag_empty','ACE_SpareBarrel_Item','ACE_splint','ACE_SpottingScope','ACE_SpraypaintBlack','ACE_SpraypaintBlue','ACE_SpraypaintGreen','ACE_SpraypaintRed','ACE_RangeTable_82mm','ACE_adenosine','ACE_artilleryTable','ACE_ATragMX','ACE_fieldDressing','ACE_elasticBandage','ACE_packingBandage','ACE_Banana','ACE_quikclot','ACE_bloodIV','ACE_bloodIV_250','ACE_bloodIV_500','ACE_bodyBag','ACE_CableTie','ACE_Can_Franta','ACE_Can_RedGull','ACE_Can_Spirit','ACE_Canteen','ACE_Canteen_Empty','ACE_Canteen_Half','ACE_Cellphone','ACE_Chemlight_Shield','ACE_DAGR','ACE_DeadManSwitch','ACE_DefusalKit','ACE_EarPlugs','ACE_EntrenchingTool','ACE_epinephrine','FirstAidKit','ACE_Fortify','ACE_Flashlight_MX991','ACE_Humanitarian_Ration','ACE_HuntIR_monitor','ACE_IR_Strobe_Item','ACE_Kestrel4500','ACE_Flashlight_KSF1','ACE_M26_Clacker','ACE_Clacker','ACE_Flashlight_XL50','ACE_MapTools','ace_marker_flags_black','ace_marker_flags_blue','ace_marker_flags_green','ace_marker_flags_orange','ace_marker_flags_purple','ace_marker_flags_red','ace_marker_flags_white','ace_marker_flags_yellow','Medikit','ACE_microDAGR','ACE_morphine','MineDetector','ACE_MRE_BeefStew','ACE_MRE_ChickenTikkaMasala','ACE_MRE_ChickenHerbDumplings','ACE_MRE_CreamChickenSoup','ACE_MRE_CreamTomatoSoup','ACE_MRE_LambCurry','ACE_MRE_MeatballsPasta','ACE_MRE_SteakVegetables','ACE_personalAidKit','ACE_plasmaIV','ACE_plasmaIV_500','ACE_plasmaIV_250','ACE_RangeCard','ACE_salineIV','ACE_salineIV_250','ACE_salineIV_500','ACE_Sandbag_empty','ACE_SpareBarrel_Item','ACE_splint','ACE_SpottingScope','ACE_SpraypaintBlack','ACE_SpraypaintBlue','ACE_SpraypaintGreen','ACE_SpraypaintRed','ToolKit','ACE_wirecutter']
#define EMPTY_LOADOUT [[],[],[],[],[],[],'','',[],['','','','','','']]

#define CONVERT_TO_SUFFIX(NAME) [toLower ((NAME splitString ' ') joinString '_')] call BIS_fnc_filterString

#define VARS_LOADOUT_RESPAWN BAX_VAR('loadout_respawn')

#define VARS_FACTION_ID BAX_VAR('unit_faction_id')
#define VARS_LOADOUT_SUFFIX BAX_VAR('unit_loadout_suffix')
#define VARS_CLASS_SUFFIX BAX_VAR('unit_class_suffix')
#define VARS_LOCKER_ACTION_ID BAX_VAR('locker_action_id')

#define VARS_FACTION_REGISTRY BAX_VAR('faction_registry')

#define VARS_FACTION(FACTION) BAX_VAR('faction_' + FACTION)
#define VARS_LOADOUT(FACTION,LOADOUT) BAX_VAR('loadout_' + FACTION + '_' + LOADOUT)
#define VARS_CLASS(FACTION,CLASS) BAX_VAR('class_' + FACTION + '_' + CLASS)
#define VARS_CRATE(FACTION,CRATE) BAX_VAR('crate_' + FACTION + '_' + CRATE)

#define VARS_LOADOUT_REGISTRY(FACTION) BAX_VAR('registry_loadouts_' + FACTION)
#define VARS_CLASS_REGISTRY(FACTION) BAX_VAR('registry_classes_' + FACTION)
#define VARS_CRATE_REGISTRY(FACTION) BAX_VAR('registry_crates_' + FACTION)

// UserConfig Macros

#define CREATE_FACTION(NAME) [NAME] call BAX_LOADOUTS_fnc_createFaction

#define CREATE_LOADOUT(NAME,LOADOUT) [_factionID,NAME,LOADOUT select 0] call BAX_LOADOUTS_fnc_createLoadout
#define LO_ADD_VARIANT(LS,LOADOUT) [_factionID,LS,LOADOUT] call BAX_LOADOUTS_fnc_loadoutAddVariant
#define LO_SET_ENGINEER(LS) [_factionID,LS,1,1] call BAX_LOADOUTS_fnc_loadoutSetTrait
#define LO_SET_MEDIC(LS) [_factionID,LS,0,1] call BAX_LOADOUTS_fnc_loadoutSetTrait
#define LO_SET_DOCTOR(LS) [_factionID,LS,0,2] call BAX_LOADOUTS_fnc_loadoutSetTrait
#define LO_RESET_MEDIC(LS) [_factionID,LS,0,0] call BAX_LOADOUTS_fnc_loadoutSetTrait
#define LO_RESET_ENGINEER(LS) [_factionID,LS,1,0] call BAX_LOADOUTS_fnc_loadoutSetTrait
#define LO_ADD_RANDOM_HELMET(LS,GEAR) [_factionID,LS,0,GEAR] call BAX_LOADOUTS_fnc_loadoutAddRandomGear
#define LO_ADD_RANDOM_VEST(LS,GEAR) [_factionID,LS,1,GEAR] call BAX_LOADOUTS_fnc_loadoutAddRandomGear
#define LO_ADD_RANDOM_UNIFORM(LS,GEAR) [_factionID,LS,2,GEAR] call BAX_LOADOUTS_fnc_loadoutAddRandomGear
#define LO_ADD_RANDOM_BACKPACK(LS,GEAR) [_factionID,LS,3,GEAR] call BAX_LOADOUTS_fnc_loadoutAddRandomGear
#define LO_ADD_RANDOM_FACEWEAR(LS,GEAR) [_factionID,LS,4,GEAR] call BAX_LOADOUTS_fnc_loadoutAddRandomGear
#define LO_COPY_LOADOUT(LS,NAME) [_factionID,LS,NAME] call BAX_LOADOUTS_fnc_loadoutCopy;

#define CREATE_CLASS(NAME,LS) [_factionID,NAME,LS] call BAX_LOADOUTS_fnc_createClass
#define CL_ADD_LOADOUT(CS,LS) [_factionID,CS,LS] call BAX_LOADOUTS_fnc_classAddLoadout

#define CREATE_CRATE(NAME) [_factionID,NAME] call BAX_LOADOUTS_fnc_createCrate
#define CR_ADD_ITEM(CS,ITEM,AMNT) [_factionID,CS,ITEM,AMNT] call BAX_LOADOUTS_fnc_crateAddItem
#define CR_ADD_PRIMARY(CS,LS,AMNT) [_factionID,CS,LS,0,AMNT] call BAX_LOADOUTS_fnc_crateAddLoadoutWeapon
#define CR_ADD_LAUNCHER(CS,LS,AMNT) [_factionID,CS,LS,1,AMNT] call BAX_LOADOUTS_fnc_crateAddLoadoutWeapon
#define CR_ADD_SECONDARY(CS,LS,AMNT) [_factionID,CS,LS,2,AMNT] call BAX_LOADOUTS_fnc_crateAddLoadoutWeapon
#define CR_ADD_PRIMARY_MAG(CS,LS,AMNT) [_factionID,CS,LS,0,AMNT] call BAX_LOADOUTS_fnc_crateAddLoadoutMag
#define CR_ADD_LAUNCHER_MAG(CS,LS,AMNT) [_factionID,CS,LS,1,AMNT] call BAX_LOADOUTS_fnc_crateAddLoadoutMag
#define CR_ADD_SECONDARY_MAG(CS,LS,AMNT) [_factionID,CS,LS,2,AMNT] call BAX_LOADOUTS_fnc_crateAddLoadoutMag
#define CR_ADD_BANDAGES(CS,AMNT) [_factionID,CS,0,AMNT] call BAX_LOADOUTS_fnc_crateAddMedical
#define CR_ADD_SPLINTS(CS,AMNT) [_factionID,CS,1,AMNT] call BAX_LOADOUTS_fnc_crateAddMedical
#define CR_ADD_INJECTORS(CS,AMNT) [_factionID,CS,2,AMNT] call BAX_LOADOUTS_fnc_crateAddMedical
#define CR_ADD_SUTURES(CS,AMNT) [_factionID,CS,3,AMNT] call BAX_LOADOUTS_fnc_crateAddMedical
#define CR_ADD_BLOOD(CS,AMNT) [_factionID,CS,4,AMNT] call BAX_LOADOUTS_fnc_crateAddMedical
#define CR_ADD_PLASMA(CS,AMNT) [_factionID,CS,5,AMNT] call BAX_LOADOUTS_fnc_crateAddMedical
#define CR_ADD_SALINE(CS,AMNT) [_factionID,CS,6,AMNT] call BAX_LOADOUTS_fnc_crateAddMedical
