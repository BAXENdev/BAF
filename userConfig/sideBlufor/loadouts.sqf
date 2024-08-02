
#include "..\_userMacros.hpp"

#define SIDE west

/*
COMMANDS:
	CREATE_LOADOUT("Loadout Name",LOADOUT_ARRAY);
	*If a new loadout is selected/assigned, arsenals will be updated if there is a arsenal names that matches the loadout name.
	*Loadout names and arsenal names should be named the same anyways so that a player gets a loadout and arsenal
	COPY_LOADOUT("Old Loadout Name","New Loadout Name");
	RESET_LOADOUT("Loadout Name");

	ADD_VARIANT("Loadout Name",LOADOUT_ARRAY);
	REMOVE_VARIANTS("Loadout Name");

	*LOADOUT ARRAY is the exported data from the loadout editor in 3den or Zeus

	SET_NO_MEDIC("Loadout Name");
	SET_MEDIC("Loadout Name");
	SET_DOCTOR("Loadout Name");
	SET_NO_ENGINEER("Loadout Name");
	SET_ENGINEER("Loadout Name");
	RESET_TRAITS("Loadout Name");

	ADD_RANDOM_HELMET("Loadout Name","Helmet_Class_Name");
	ADD_RANDOM_VEST("Loadout Name","Vest_Class_Name");
	ADD_RANDOM_UNIFORM("Loadout Name","Uniform_Class_Name");
	ADD_RANDOM_BACKPACK("Loadout Name","Backpack_Class_Name");
	ADD_RANDOM_FACEWEAR("Loadout Name","Mask_Class_Name");
	REMOVE_RANDOM_GEAR("Loadout Name");

	SET_DEFAULT("Loadout Name","Class Name");

CRATE COMMANDS:
	CREATE_CRATE("NAME",ITEMS) | ITEMS = [["FirstAidKit",25],...]\
	ADD_CRATE_ITEMS("NAME",ITEMS)
	ADD_PRIMARY_TO_CRATE("CRATE_NAME","LOADOUT_NAME",AMOUNT)
	ADD_SECONDARY_TO_CRATE("CRATE_NAME","LOADOUT_NAME",AMOUNT)
	ADD_LAUNCHER_TO_CRATE("CRATE_NAME","LOADOUT_NAME",AMOUNT)
	ADD_PRIMARY_MAG_TO_CRATE("CRATE_NAME","LOADOUT_NAME",AMOUNT)
	ADD_SECONDARY_MAG_TO_CRATE("CRATE_NAME","LOADOUT_NAME",AMOUNT)
	ADD_LAUNCHER_MAG_TO_CRATE("CRATE_NAME","LOADOUT_NAME",AMOUNT)
	BANDAGES(AMOUNT)
	SPLINTS(AMOUNT)
	INJECTORS(AMOUNT)
	SUTURES(AMOUNT)
	BLOOD(AMOUNT)
	PLASMA(AMOUNT)
	SALINE(AMOUNT)
	MEDICAL(FACTOR) | FACTOR multiplicative factor for items. Bandages=40, Splints=10, Sutures=20, Saline=10

*/

_loadout = [[["arifle_MX_F","","acc_pointer_IR","optic_Aco",["30Rnd_65x39_caseless_mag",30],[],""],[],["hgun_P07_F","","","",["16Rnd_9x21_Mag",17],[],""],["U_B_CombatUniform_mcam",[["FirstAidKit",1],["ACRE_PRC343",1],["30Rnd_65x39_caseless_mag",2,30]]],["V_PlateCarrier1_rgr",[["30Rnd_65x39_caseless_mag",7,30],["16Rnd_9x21_Mag",2,17],["SmokeShell",1,1],["SmokeShellGreen",1,1],["Chemlight_green",2,1],["HandGrenade",2,1]]],[],"H_HelmetB","G_Combat",[],["ItemMap","","","ItemCompass","ItemWatch","NVGoggles"]],[]];
CREATE_LOADOUT("RIFLEMAN",_loadout);

SET_DEFAULT_LOADOUT(_loadout);

_loadout = [[["arifle_MX_F","","acc_pointer_IR","",["30Rnd_65x39_caseless_mag",30],[],""],[],["hgun_P07_F","","","",["16Rnd_9x21_Mag",17],[],""],["U_B_CombatUniform_mcam_tshirt",[["FirstAidKit",1],["ACRE_PRC343",1],["30Rnd_65x39_caseless_mag",2,30]]],["V_PlateCarrierSpec_rgr",[["30Rnd_65x39_caseless_mag",3,30],["16Rnd_9x21_Mag",2,17],["SmokeShell",1,1],["SmokeShellGreen",1,1],["SmokeShellBlue",1,1],["SmokeShellOrange",1,1],["Chemlight_green",2,1]]],["B_AssaultPack_rgr_Medic",[["Medikit",1],["FirstAidKit",10]]],"H_HelmetB_light_desert","G_Tactical_Clear",[],["ItemMap","","","ItemCompass","ItemWatch","NVGoggles"]],[]];
CREATE_LOADOUT("COMBAT MEDIC",_loadout);
SET_MEDIC("COMBAT MEDIC");

_loadout = [[["arifle_MXC_F","","acc_pointer_IR","optic_Holosight",["30Rnd_65x39_caseless_mag",30],[],""],[],["hgun_P07_F","","","",["16Rnd_9x21_Mag",17],[],""],["U_B_CombatUniform_mcam_vest",[["FirstAidKit",1],["ACE_Clacker",1],["ACE_DefusalKit",1],["ACRE_PRC343",1],["30Rnd_65x39_caseless_mag",1,30],["Chemlight_green",1,1]]],["V_Chestrig_rgr",[["30Rnd_65x39_caseless_mag",4,30],["16Rnd_9x21_Mag",2,17],["HandGrenade",2,1],["SmokeShell",1,1],["SmokeShellGreen",1,1],["SmokeShellBlue",1,1],["SmokeShellOrange",1,1],["Chemlight_green",1,1]]],["B_Kitbag_mcamo_Eng",[["ToolKit",1],["MineDetector",1],["SatchelCharge_Remote_Mag",1,1],["DemoCharge_Remote_Mag",2,1]]],"H_HelmetB_desert","G_Tactical_Clear",[],["ItemMap","","","ItemCompass","ItemWatch","NVGoggles"]],[]];
CREATE_LOADOUT("ENGINEER",_loadout);
SET_ENGINEER("ENGINEER");

_loadout = [[["arifle_MX_F","","acc_pointer_IR","",["30Rnd_65x39_caseless_mag",30],[],""],[],["hgun_P07_F","","","",["16Rnd_9x21_Mag",17],[],""],["U_B_CombatUniform_mcam_tshirt",[["FirstAidKit",1],["ACRE_PRC343",1],["30Rnd_65x39_caseless_mag",2,30]]],["V_PlateCarrierSpec_rgr",[["30Rnd_65x39_caseless_mag",3,30],["16Rnd_9x21_Mag",2,17],["SmokeShell",1,1],["SmokeShellGreen",1,1],["SmokeShellBlue",1,1],["SmokeShellOrange",1,1],["Chemlight_green",2,1]]],["B_AssaultPack_rgr_Medic",[["Medikit",1],["FirstAidKit",10]]],"H_HelmetB_light_desert","G_Tactical_Clear",[],["ItemMap","","","ItemCompass","ItemWatch","NVGoggles"]],[]];
CREATE_LOADOUT("PLATOON MEDIC",_loadout);
SET_DOCTOR("PLATOON MEDIC");

_loadout = [[["arifle_MX_F","","acc_pointer_IR","optic_Aco",["30Rnd_65x39_caseless_mag",30],[],""],[],["hgun_P07_F","","","",["16Rnd_9x21_Mag",17],[],""],["U_B_CombatUniform_mcam",[["FirstAidKit",1],["ACRE_PRC343",1],["30Rnd_65x39_caseless_mag",2,30]]],["V_PlateCarrierSpec_rgr",[["30Rnd_65x39_caseless_mag",7,30],["16Rnd_9x21_Mag",2,17],["SmokeShell",1,1],["SmokeShellGreen",1,1],["Chemlight_green",2,1]]],["B_Kitbag_rgr",[["ACRE_PRC117F",1]]],"H_HelmetB","",[],["ItemMap","B_UavTerminal","","ItemCompass","ItemWatch","NVGoggles"]],[]];
CREATE_LOADOUT("JTAC",_loadout);

_loadout = [[["arifle_MX_F","","acc_pointer_IR","optic_Hamr",["30Rnd_65x39_caseless_mag",30],[],""],[],["hgun_P07_F","","","",["16Rnd_9x21_Mag",17],[],""],["U_B_CombatUniform_mcam_vest",[["FirstAidKit",1],["ACRE_PRC343",1],["ACRE_PRC152",1],["30Rnd_65x39_caseless_mag",2,30]]],["V_PlateCarrierGL_rgr",[["30Rnd_65x39_caseless_mag",1,30],["30Rnd_65x39_caseless_mag_Tracer",2,30],["16Rnd_9x21_Mag",2,17],["HandGrenade",2,1],["B_IR_Grenade",2,1],["SmokeShell",1,1],["SmokeShellGreen",1,1],["SmokeShellBlue",1,1],["SmokeShellOrange",1,1],["Chemlight_green",2,1]]],[],"H_HelmetB_desert","G_Combat",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","","ItemCompass","ItemWatch","NVGoggles"]],[]];
CREATE_LOADOUT("COMMANDER",_loadout);

COPY_LOADOUT("COMMANDER","2IC");

_loadout = [[["arifle_MX_F","","acc_pointer_IR","optic_Aco",["30Rnd_65x39_caseless_mag",30],[],""],["launch_MRAWS_sand_F","","","",["MRAWS_HEAT_F",1],[],""],["hgun_P07_F","","","",["16Rnd_9x21_Mag",17],[],""],["U_B_CombatUniform_mcam",[["FirstAidKit",1],["ACRE_PRC343",1],["30Rnd_65x39_caseless_mag",2,30]]],["V_PlateCarrier2_rgr",[["30Rnd_65x39_caseless_mag",3,30],["16Rnd_9x21_Mag",2,17],["SmokeShell",1,1],["SmokeShellGreen",1,1],["Chemlight_green",2,1]]],["B_AssaultPack_rgr_LAT2",[["MRAWS_HEAT_F",2,1],["MRAWS_HE_F",1,1]]],"H_HelmetB_sand","G_Aviator",[],["ItemMap","","","ItemCompass","ItemWatch","NVGoggles"]],[]];
CREATE_LOADOUT("ANTITANK",_loadout);

_loadout = [[["arifle_Mk20_plain_F","","","",["30Rnd_556x45_Stanag",30],[],""],[],[],["U_B_CombatUniform_mcam",[]],["V_HarnessO_brn",[["30Rnd_556x45_Stanag_Tracer_Red",20,30]]],[],"","",[],["","","","","",""]],[]];
CREATE_LOADOUT("RANDOM",_loadout);
_loadout = [[["arifle_AK12_F","","","",["30Rnd_762x39_AK12_Mag_F",30],[],""],[],[],["U_B_CombatUniform_mcam",[]],["V_HarnessO_brn",[["30Rnd_762x39_Mag_F",16,30]]],[],"","",[],["","","","","",""]],[]];
ADD_VARIANT("RANDOM",_loadout);
_loadout = [[["srifle_DMR_05_blk_F","","","",["10Rnd_93x64_DMR_05_Mag",10],[],""],[],[],["U_B_CombatUniform_mcam",[]],["V_HarnessO_brn",[["10Rnd_93x64_DMR_05_Mag",10,10]]],[],"","",[],["","","","","",""]],[]];
ADD_VARIANT("RANDOM",_loadout);
ADD_RANDOM_HELMET("RANDOM","H_HelmetB_tna_F");
ADD_RANDOM_HELMET("RANDOM","H_HelmetB_plain_wdl");
ADD_RANDOM_HELMET("RANDOM","H_HelmetB_black");
ADD_RANDOM_VEST("RANDOM","V_Chestrig_blk");
ADD_RANDOM_VEST("RANDOM","V_Chestrig_rgr");
ADD_RANDOM_VEST("RANDOM","V_Chestrig_khk");
ADD_RANDOM_UNIFORM("RANDOM","U_B_CombatUniform_mcam_wdl_f");
ADD_RANDOM_UNIFORM("RANDOM","U_B_CombatUniform_mcam_vest");
ADD_RANDOM_UNIFORM("RANDOM","U_B_CombatUniform_mcam");
ADD_RANDOM_BACKPACK("RANDOM","B_AssaultPack_blk");
ADD_RANDOM_BACKPACK("RANDOM","B_AssaultPack_cbr");
ADD_RANDOM_BACKPACK("RANDOM","B_AssaultPack_dgtl");
ADD_RANDOM_FACEWEAR("RANDOM","G_Bandanna_Skull1");
ADD_RANDOM_FACEWEAR("RANDOM","G_Bandanna_Syndikat1");
ADD_RANDOM_FACEWEAR("RANDOM","G_Bandanna_Skull2");


CREATE_CRATE("Full Resupply",[]);
ADD_CRATE_ITEMS("Full Resupply",MEDICAL(1));
ADD_PRIMARY_TO_CRATE("Full Resupply","RIFLEMAN",5);
ADD_PRIMARY_MAG_TO_CRATE("Full Resupply","RIFLEMAN",50);
ADD_LAUNCHER_MAG_TO_CRATE("Full Resupply","ANTITANK",10);
ADD_BACKPACK_TO_CRATE("Full Resupply","ANTITANK",2);



