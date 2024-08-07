
/*
COMMANDS:
	CREATE_LOADOUT("Loadout Name",LOADOUT_ARRAY);
	*If a new loadout is selected/assigned, arsenals will be updated if there is a arsenal names that matches the loadout name.
	*Loadout names are case sensitive. Make sure loadout names and role names are the EXACT same if they are to be assigned on mission start.
	
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
	CREATE_CRATE("NAME");

	ADD_CRATE_ITEMS(NAME, ITEM, AMOUNT);
	ADD_CRATE_BACKPACK(CRATE_NAME, LOADOUT_NAME, AMOUNT);
	ADD_CRATE_PRIMARY(CRATE_NAME, LOADOUT_NAME, AMOUNT);
	ADD_CRATE_SECONDARY(CRATE_NAME, LOADOUT_NAME, AMOUNT);
	ADD_CRATE_LAUNCHER(CRATE_NAME, LOADOUT_NAME, AMOUNT);
	ADD_CRATE_PRIMARY_MAG(CRATE_NAME, LOADOUT_NAME, AMOUNT);
	ADD_CRATE_SECONDARY_MAG(CRATE_NAME, LOADOUT_NAME, AMOUNT);
	ADD_CRATE_LAUNCHER_MAG(CRATE_NAME, LOADOUT_NAME, AMOUNT);

	ADD_CRATE_BANDAGES(NAME, AMOUNT);
	ADD_CRATE_SPLINTS(NAME, AMOUNT);
	ADD_CRATE_INJECTORS(NAME, AMOUNT);
	ADD_CRATE_SUTURES(NAME, AMOUNT);
	ADD_CRATE_BLOOD(NAME, AMOUNT);
	ADD_CRATE_PLASMA(NAME, AMOUNT);
	ADD_CRATE_SALINE(NAME, AMOUNT);
	ADD_CRATE_MEDICAL(NAME, FACTOR); FACTOR: multiplicative factor for items. Bandages=40, Splints=10, Sutures=20, Saline=10

*/

_loadout = [[[],[],[],["U_Competitor",[["ACRE_PRC152",1]]],[],[],"","",[],["ItemMap","","","","",""]],[]];
CREATE_LOADOUT("Zeus", _loadout);

_loadout = [[["arifle_MX_F","ACE_muzzle_mzls_H","acc_pointer_IR","optic_Hamr",["30Rnd_65x39_caseless_mag",30],[],""],[],["hgun_P07_F","","","",["16Rnd_9x21_Mag",17],[],""],["U_B_CombatUniform_mcam",[["ACE_elasticBandage",5],["ACE_packingBandage",5],["ACE_adenosine",1],["ACE_epinephrine",1],["ACE_morphine",1],["ACE_splint",1],["ACE_suture",5],["ACE_tourniquet",4],["ACE_salineIV_500",1],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_CableTie",2],["ACE_EarPlugs",2],["ACE_Canteen",1],["ACE_IR_Strobe_Item",1],["ACE_painkillers",5,10]]],["V_PlateCarrier2_rgr",[["ACRE_PRC343",1],["16Rnd_9x21_Mag",2,17],["SmokeShell",1,1],["HandGrenade",1,1],["30Rnd_65x39_caseless_mag",10,30]]],["B_AssaultPack_rgr",[]],"H_HelmetB_snakeskin","",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","","ItemCompass","ItemWatch","ACE_NVG_Wide_WP"]],[]];
CREATE_LOADOUT("Rifleman", _loadout);

SET_DEFAULT_LOADOUT(_loadout);

_loadout = [[["arifle_MX_F","ACE_muzzle_mzls_H","acc_pointer_IR","optic_Hamr",["30Rnd_65x39_caseless_mag",30],[],""],[],["hgun_P07_F","","","",["16Rnd_9x21_Mag",17],[],""],["U_B_CombatUniform_mcam",[["ACE_elasticBandage",5],["ACE_packingBandage",5],["ACE_adenosine",1],["ACE_epinephrine",1],["ACE_morphine",1],["ACE_splint",1],["ACE_suture",5],["ACE_tourniquet",4],["ACE_salineIV_500",1],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_CableTie",2],["ACE_EarPlugs",2],["ACE_Canteen",1],["ACE_IR_Strobe_Item",1],["ACE_painkillers",5,10]]],["V_PlateCarrier2_rgr",[["ACRE_PRC343",1],["16Rnd_9x21_Mag",2,17],["SmokeShell",1,1],["HandGrenade",1,1],["30Rnd_65x39_caseless_mag",10,30]]],["B_AssaultPack_rgr",[["ACRE_PRC152",1],["ACE_HuntIR_monitor",1],["SmokeShell",5,1],["SmokeShellRed",2,1],["SmokeShellPurple",2,1],["SmokeShellGreen",2,1]]],"H_HelmetB_snakeskin","",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","","ItemCompass","ItemWatch","ACE_NVG_Wide_WP"]],[]];
CREATE_LOADOUT("Squad Leader", _loadout);

COPY_LOADOUT("Squad Leader","Fireteam Leader");

_loadout = [[["arifle_MXM_F","ACE_muzzle_mzls_H","acc_pointer_IR","optic_DMS",["30Rnd_65x39_caseless_mag",30],[],""],[],["hgun_P07_F","","","",["16Rnd_9x21_Mag",17],[],""],["U_B_CombatUniform_mcam",[["ACE_elasticBandage",5],["ACE_packingBandage",5],["ACE_adenosine",1],["ACE_epinephrine",1],["ACE_morphine",1],["ACE_splint",1],["ACE_suture",5],["ACE_tourniquet",4],["ACE_salineIV_500",1],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_CableTie",2],["ACE_EarPlugs",2],["ACE_Canteen",1],["ACE_IR_Strobe_Item",1],["ACE_painkillers",5,10]]],["V_PlateCarrier2_rgr",[["ACRE_PRC343",1],["16Rnd_9x21_Mag",2,17],["SmokeShell",1,1],["HandGrenade",1,1],["30Rnd_65x39_caseless_mag",10,30]]],["B_AssaultPack_rgr",[["ACRE_PRC152",1],["SmokeShell",5,1],["SmokeShellRed",2,1],["SmokeShellPurple",2,1],["SmokeShellGreen",2,1]]],"H_HelmetB_snakeskin","",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","","ItemCompass","ItemWatch","ACE_NVG_Wide_WP"]],[]];
CREATE_LOADOUT("Marksman", _loadout);

_loadout = [[["arifle_MX_GL_F","ACE_muzzle_mzls_H","acc_pointer_IR","optic_Hamr",["30Rnd_65x39_caseless_mag",30],["1Rnd_HE_Grenade_shell",1],""],[],["hgun_P07_F","","","",["16Rnd_9x21_Mag",17],[],""],["U_B_CombatUniform_mcam",[["ACE_elasticBandage",5],["ACE_packingBandage",5],["ACE_adenosine",1],["ACE_epinephrine",1],["ACE_morphine",1],["ACE_splint",1],["ACE_suture",5],["ACE_tourniquet",4],["ACE_salineIV_500",1],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_CableTie",2],["ACE_EarPlugs",2],["ACE_Canteen",1],["ACE_IR_Strobe_Item",1],["ACE_painkillers",5,10]]],["V_PlateCarrier2_rgr",[["ACRE_PRC343",1],["16Rnd_9x21_Mag",2,17],["SmokeShell",1,1],["HandGrenade",1,1],["30Rnd_65x39_caseless_mag",10,30]]],["B_AssaultPack_rgr",[["1Rnd_HE_Grenade_shell",10,1],["ACE_HuntIR_M203",5,1],["1Rnd_Smoke_Grenade_shell",5,1],["1Rnd_SmokeRed_Grenade_shell",2,1],["1Rnd_SmokePurple_Grenade_shell",2,1],["1Rnd_SmokeGreen_Grenade_shell",2,1]]],"H_HelmetB_snakeskin","",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","","ItemCompass","ItemWatch","ACE_NVG_Wide_WP"]],[]];
CREATE_LOADOUT("Grenedier", _loadout);

_loadout = [[["arifle_MX_SW_F","ACE_muzzle_mzls_H","acc_pointer_IR","optic_Hamr",["100Rnd_65x39_caseless_mag_Tracer",100],[],""],[],["hgun_P07_F","","","",["16Rnd_9x21_Mag",17],[],""],["U_B_CombatUniform_mcam",[["ACE_elasticBandage",5],["ACE_packingBandage",5],["ACE_adenosine",1],["ACE_epinephrine",1],["ACE_morphine",1],["ACE_splint",1],["ACE_suture",5],["ACE_tourniquet",4],["ACE_salineIV_500",1],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_CableTie",2],["ACE_EarPlugs",2],["ACE_Canteen",1],["ACE_IR_Strobe_Item",1],["ACE_painkillers",5,10]]],["V_PlateCarrier2_rgr",[["ACRE_PRC343",1],["16Rnd_9x21_Mag",2,17],["SmokeShell",1,1],["HandGrenade",1,1],["100Rnd_65x39_caseless_mag_Tracer",4,100]]],["B_AssaultPack_rgr",[["100Rnd_65x39_caseless_mag_Tracer",4,100]]],"H_HelmetB_snakeskin","",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","","ItemCompass","ItemWatch","ACE_NVG_Wide_WP"]],[]];
CREATE_LOADOUT("Autorifleman", _loadout);

_loadout = [[["arifle_MX_F","ACE_muzzle_mzls_H","acc_pointer_IR","optic_Hamr",["30Rnd_65x39_caseless_mag",30],[],""],["launch_B_Titan_short_F","","","",["Titan_AT",1],[],""],["hgun_P07_F","","","",["16Rnd_9x21_Mag",17],[],""],["U_B_CombatUniform_mcam",[["ACE_elasticBandage",5],["ACE_packingBandage",5],["ACE_adenosine",1],["ACE_epinephrine",1],["ACE_morphine",1],["ACE_splint",1],["ACE_suture",5],["ACE_tourniquet",4],["ACE_salineIV_500",1],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_CableTie",2],["ACE_EarPlugs",2],["ACE_Canteen",1],["ACE_IR_Strobe_Item",1],["ACE_painkillers",5,10]]],["V_PlateCarrier2_rgr",[["ACRE_PRC343",1],["16Rnd_9x21_Mag",2,17],["SmokeShell",1,1],["HandGrenade",1,1],["30Rnd_65x39_caseless_mag",10,30]]],["B_Carryall_mcamo",[["Titan_AT",2,1]]],"H_HelmetB_snakeskin","",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","","ItemCompass","ItemWatch","ACE_NVG_Wide_WP"]],[]];
CREATE_LOADOUT("Antitank", _loadout);

_loadout = [[["arifle_MX_F","ACE_muzzle_mzls_H","acc_pointer_IR","optic_Hamr",["30Rnd_65x39_caseless_mag",30],[],""],[],["hgun_P07_F","","","",["16Rnd_9x21_Mag",17],[],""],["U_B_CombatUniform_mcam",[["ACE_elasticBandage",5],["ACE_packingBandage",5],["ACE_adenosine",1],["ACE_epinephrine",1],["ACE_morphine",1],["ACE_splint",1],["ACE_suture",5],["ACE_tourniquet",4],["ACE_salineIV_500",1],["ACE_Flashlight_XL50",1],["ACE_MapTools",1],["ACE_CableTie",2],["ACE_EarPlugs",2],["ACE_Canteen",1],["ACE_IR_Strobe_Item",1],["ACE_painkillers",5,10]]],["V_PlateCarrier2_rgr",[["ACRE_PRC343",1],["ACRE_PRC152",1],["16Rnd_9x21_Mag",2,17],["30Rnd_65x39_caseless_mag",10,30]]],["B_Carryall_cbr",[["ACE_elasticBandage",30],["ACE_packingBandage",30],["ACE_adenosine",10],["ACE_salineIV",15],["ACE_splint",5],["ACE_surgicalKit",1],["ACE_suture",30],["ACE_epinephrine",10],["ACE_morphine",10],["ACE_fieldDressing",15],["ACE_painkillers",5,10],["SmokeShell",5,1]]],"H_HelmetB_snakeskin","",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","","ItemCompass","ItemWatch","ACE_NVG_Wide_WP"]],[]];
CREATE_LOADOUT("Medic", _loadout);
SET_DOCTOR("Medic");

CREATE_CRATE("Full Resupply");
ADD_CRATE_ITEMS("Full Resupply", "HandGrenade", 20);
ADD_CRATE_ITEMS("Full Resupply", "SmokeShell", 20);
ADD_CRATE_PRIMARY("Full Resupply", "Rifleman", 5);
ADD_CRATE_PRIMARY_MAG("Full Resupply", "Rifleman", 50);
ADD_CRATE_LAUNCHER_MAG("Full Resupply", "Antitank", 10);
ADD_CRATE_BACKPACK("Full Resupply", "Antitank", 2);
ADD_CRATE_MEDICAL("Full Resupply", 1);

// _loadout = [[["arifle_Mk20_plain_F","","","",["30Rnd_556x45_Stanag",30],[],""],[],[],["U_B_CombatUniform_mcam",[]],["V_HarnessO_brn",[["30Rnd_556x45_Stanag_Tracer_Red",20,30]]],[],"","",[],["","","","","",""]],[]];
// CREATE_LOADOUT("RANDOM", _loadout);
// _loadout = [[["arifle_AK12_F","","","",["30Rnd_762x39_AK12_Mag_F",30],[],""],[],[],["U_B_CombatUniform_mcam",[]],["V_HarnessO_brn",[["30Rnd_762x39_Mag_F",16,30]]],[],"","",[],["","","","","",""]],[]];
// ADD_VARIANT("RANDOM", _loadout);
// _loadout = [[["srifle_DMR_05_blk_F","","","",["10Rnd_93x64_DMR_05_Mag",10],[],""],[],[],["U_B_CombatUniform_mcam",[]],["V_HarnessO_brn",[["10Rnd_93x64_DMR_05_Mag",10,10]]],[],"","",[],["","","","","",""]],[]];
// ADD_VARIANT("RANDOM", _loadout);
// ADD_RANDOM_HELMET("RANDOM", "H_HelmetB_tna_F");
// ADD_RANDOM_HELMET("RANDOM", "H_HelmetB_plain_wdl");
// ADD_RANDOM_HELMET("RANDOM", "H_HelmetB_black");
// ADD_RANDOM_VEST("RANDOM", "V_Chestrig_blk");
// ADD_RANDOM_VEST("RANDOM", "V_Chestrig_rgr");
// ADD_RANDOM_VEST("RANDOM", "V_Chestrig_khk");
// ADD_RANDOM_UNIFORM("RANDOM", "U_B_CombatUniform_mcam_wdl_f");
// ADD_RANDOM_UNIFORM("RANDOM", "U_B_CombatUniform_mcam_vest");
// ADD_RANDOM_UNIFORM("RANDOM", "U_B_CombatUniform_mcam");
// ADD_RANDOM_BACKPACK("RANDOM", "B_AssaultPack_blk");
// ADD_RANDOM_BACKPACK("RANDOM", "B_AssaultPack_cbr");
// ADD_RANDOM_BACKPACK("RANDOM", "B_AssaultPack_dgtl");
// ADD_RANDOM_FACEWEAR("RANDOM", "G_Bandanna_Skull1");
// ADD_RANDOM_FACEWEAR("RANDOM", "G_Bandanna_Syndikat1");
// ADD_RANDOM_FACEWEAR("RANDOM", "G_Bandanna_Skull2");
