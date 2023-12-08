
#include "..\..\macros\loadoutMacros.hpp"

_factionID = CREATE_FACTION("Blufor");

_loadout = [[["arifle_MX_F","","acc_pointer_IR","optic_Aco",["30Rnd_65x39_caseless_mag",30],[],""],[],["hgun_P07_F","","","",["16Rnd_9x21_Mag",17],[],""],["U_B_CombatUniform_mcam",[["FirstAidKit",1],["ACRE_PRC343",1],["30Rnd_65x39_caseless_mag",2,30]]],["V_PlateCarrier1_rgr",[["30Rnd_65x39_caseless_mag",7,30],["16Rnd_9x21_Mag",2,17],["SmokeShell",1,1],["SmokeShellGreen",1,1],["Chemlight_green",2,1],["HandGrenade",2,1]]],[],"H_HelmetB","G_Combat",[],["ItemMap","","","ItemCompass","ItemWatch","NVGoggles"]],[]];
_riflemanID = CREATE_LOADOUT("RIFLEMAN",_loadout);

_loadout = [[["arifle_MX_F","","acc_pointer_IR","",["30Rnd_65x39_caseless_mag",30],[],""],[],["hgun_P07_F","","","",["16Rnd_9x21_Mag",17],[],""],["U_B_CombatUniform_mcam_tshirt",[["FirstAidKit",1],["ACRE_PRC343",1],["30Rnd_65x39_caseless_mag",2,30]]],["V_PlateCarrierSpec_rgr",[["30Rnd_65x39_caseless_mag",3,30],["16Rnd_9x21_Mag",2,17],["SmokeShell",1,1],["SmokeShellGreen",1,1],["SmokeShellBlue",1,1],["SmokeShellOrange",1,1],["Chemlight_green",2,1]]],["B_AssaultPack_rgr_Medic",[["Medikit",1],["FirstAidKit",10]]],"H_HelmetB_light_desert","G_Tactical_Clear",[],["ItemMap","","","ItemCompass","ItemWatch","NVGoggles"]],[]];
_clsID = CREATE_LOADOUT("COMBAT MEDIC",_loadout);
LO_SET_MEDIC(_clsID);

_loadout = [[["arifle_MXC_F","","acc_pointer_IR","optic_Holosight",["30Rnd_65x39_caseless_mag",30],[],""],[],["hgun_P07_F","","","",["16Rnd_9x21_Mag",17],[],""],["U_B_CombatUniform_mcam_vest",[["FirstAidKit",1],["ACE_Clacker",1],["ACE_DefusalKit",1],["ACRE_PRC343",1],["30Rnd_65x39_caseless_mag",1,30],["Chemlight_green",1,1]]],["V_Chestrig_rgr",[["30Rnd_65x39_caseless_mag",4,30],["16Rnd_9x21_Mag",2,17],["HandGrenade",2,1],["SmokeShell",1,1],["SmokeShellGreen",1,1],["SmokeShellBlue",1,1],["SmokeShellOrange",1,1],["Chemlight_green",1,1]]],["B_Kitbag_mcamo_Eng",[["ToolKit",1],["MineDetector",1],["SatchelCharge_Remote_Mag",1,1],["DemoCharge_Remote_Mag",2,1]]],"H_HelmetB_desert","G_Tactical_Clear",[],["ItemMap","","","ItemCompass","ItemWatch","NVGoggles"]],[]];
_engineerID = CREATE_LOADOUT("ENGINEER",_loadout);
LO_SET_ENGINEER(_engineerID);

_loadout = [[["arifle_MX_F","","acc_pointer_IR","",["30Rnd_65x39_caseless_mag",30],[],""],[],["hgun_P07_F","","","",["16Rnd_9x21_Mag",17],[],""],["U_B_CombatUniform_mcam_tshirt",[["FirstAidKit",1],["ACRE_PRC343",1],["30Rnd_65x39_caseless_mag",2,30]]],["V_PlateCarrierSpec_rgr",[["30Rnd_65x39_caseless_mag",3,30],["16Rnd_9x21_Mag",2,17],["SmokeShell",1,1],["SmokeShellGreen",1,1],["SmokeShellBlue",1,1],["SmokeShellOrange",1,1],["Chemlight_green",2,1]]],["B_AssaultPack_rgr_Medic",[["Medikit",1],["FirstAidKit",10]]],"H_HelmetB_light_desert","G_Tactical_Clear",[],["ItemMap","","","ItemCompass","ItemWatch","NVGoggles"]],[]];
_medicID = CREATE_LOADOUT("PLATOON MEDIC",_loadout);
LO_SET_DOCTOR(_medicID);

_loadout = [[["arifle_MX_F","","acc_pointer_IR","optic_Aco",["30Rnd_65x39_caseless_mag",30],[],""],[],["hgun_P07_F","","","",["16Rnd_9x21_Mag",17],[],""],["U_B_CombatUniform_mcam",[["FirstAidKit",1],["ACRE_PRC343",1],["30Rnd_65x39_caseless_mag",2,30]]],["V_PlateCarrierSpec_rgr",[["30Rnd_65x39_caseless_mag",7,30],["16Rnd_9x21_Mag",2,17],["SmokeShell",1,1],["SmokeShellGreen",1,1],["Chemlight_green",2,1]]],["B_Kitbag_rgr",[["ACRE_PRC117F",1]]],"H_HelmetB","",[],["ItemMap","B_UavTerminal","","ItemCompass","ItemWatch","NVGoggles"]],[]];
_jtacID = CREATE_LOADOUT("JTAC",_loadout);

_loadout = [[["arifle_MX_F","","acc_pointer_IR","optic_Hamr",["30Rnd_65x39_caseless_mag",30],[],""],[],["hgun_P07_F","","","",["16Rnd_9x21_Mag",17],[],""],["U_B_CombatUniform_mcam_vest",[["FirstAidKit",1],["ACRE_PRC343",1],["ACRE_PRC152",1],["30Rnd_65x39_caseless_mag",2,30]]],["V_PlateCarrierGL_rgr",[["30Rnd_65x39_caseless_mag",1,30],["30Rnd_65x39_caseless_mag_Tracer",2,30],["16Rnd_9x21_Mag",2,17],["HandGrenade",2,1],["B_IR_Grenade",2,1],["SmokeShell",1,1],["SmokeShellGreen",1,1],["SmokeShellBlue",1,1],["SmokeShellOrange",1,1],["Chemlight_green",2,1]]],[],"H_HelmetB_desert","G_Combat",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","","ItemCompass","ItemWatch","NVGoggles"]],[]];
_coID = CREATE_LOADOUT("Commander",_loadout);

_twoicID = LO_COPY_LOADOUT(_coID,"2IC");

_loadout = [[["arifle_MX_F","","acc_pointer_IR","optic_Aco",["30Rnd_65x39_caseless_mag",30],[],""],["launch_MRAWS_sand_F","","","",["MRAWS_HEAT_F",1],[],""],["hgun_P07_F","","","",["16Rnd_9x21_Mag",17],[],""],["U_B_CombatUniform_mcam",[["FirstAidKit",1],["ACRE_PRC343",1],["30Rnd_65x39_caseless_mag",2,30]]],["V_PlateCarrier2_rgr",[["30Rnd_65x39_caseless_mag",3,30],["16Rnd_9x21_Mag",2,17],["SmokeShell",1,1],["SmokeShellGreen",1,1],["Chemlight_green",2,1]]],["B_AssaultPack_rgr_LAT2",[["MRAWS_HEAT_F",2,1],["MRAWS_HE_F",1,1]]],"H_HelmetB_sand","G_Aviator",[],["ItemMap","","","ItemCompass","ItemWatch","NVGoggles"]],[]];
_atID = CREATE_LOADOUT("Antitank",_loadout);

_crateID = CREATE_CRATE("Light Resupply");
CR_ADD_PRIMARY(_crateID,_atID,2);
CR_ADD_LAUNCHER(_crateID,_atID,2);
CR_ADD_SECONDARY(_crateID,_atID,2);
CR_ADD_PRIMARY_MAG(_crateID,_atID,100);
CR_ADD_LAUNCHER_MAG(_crateID,_atID,10);
CR_ADD_SECONDARY_MAG(_crateID,_atID,20);
CR_ADD_BANDAGES(_crateID,40);

_infantryID = CREATE_CLASS("Infantry",_riflemanID);
CL_ADD_LOADOUT(_infantryID,_clsID);
CL_ADD_LOADOUT(_infantryID,_engineerID);
CL_ADD_LOADOUT(_infantryID,_medicID);
CL_ADD_LOADOUT(_infantryID,_atID);

_commandID = CREATE_CLASS("Command",_coID);
CL_ADD_LOADOUT(_commandID,_jtacID);
