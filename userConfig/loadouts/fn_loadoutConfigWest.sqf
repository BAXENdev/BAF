
#include "..\..\macros\loadoutConfigMacros.hpp"

#define FACTION_ID blufor

INIT_LOADOUT_SYSTEM();

_loadout = [[["arifle_MX_F","","acc_pointer_IR","optic_Aco",["30Rnd_65x39_caseless_mag",30],[],""],[],["hgun_P07_F","","","",["16Rnd_9x21_Mag",17],[],""],["U_B_CombatUniform_mcam",[["FirstAidKit",1],["ACRE_PRC343",1],["30Rnd_65x39_caseless_mag",2,30]]],["V_PlateCarrier1_rgr",[["30Rnd_65x39_caseless_mag",7,30],["16Rnd_9x21_Mag",2,17],["SmokeShell",1,1],["SmokeShellGreen",1,1],["Chemlight_green",2,1],["HandGrenade",2,1]]],[],"H_HelmetB","G_Combat",[],["ItemMap","","","ItemCompass","ItemWatch","NVGoggles"]],[]];
CREATE_LOADOUT(rif,"RIFLEMAN",_loadout);

_loadout = [[["arifle_MX_F","","acc_pointer_IR","",["30Rnd_65x39_caseless_mag",30],[],""],[],["hgun_P07_F","","","",["16Rnd_9x21_Mag",17],[],""],["U_B_CombatUniform_mcam_tshirt",[["FirstAidKit",1],["ACRE_PRC343",1],["30Rnd_65x39_caseless_mag",2,30]]],["V_PlateCarrierSpec_rgr",[["30Rnd_65x39_caseless_mag",3,30],["16Rnd_9x21_Mag",2,17],["SmokeShell",1,1],["SmokeShellGreen",1,1],["SmokeShellBlue",1,1],["SmokeShellOrange",1,1],["Chemlight_green",2,1]]],["B_AssaultPack_rgr_Medic",[["Medikit",1],["FirstAidKit",10]]],"H_HelmetB_light_desert","G_Tactical_Clear",[],["ItemMap","","","ItemCompass","ItemWatch","NVGoggles"]],[]];
CREATE_LOADOUT(cls,"COMBAT MEDIC",_loadout);
LO_SET_MEDIC(cls);

_loadout = [[["arifle_MXC_F","","acc_pointer_IR","optic_Holosight",["30Rnd_65x39_caseless_mag",30],[],""],[],["hgun_P07_F","","","",["16Rnd_9x21_Mag",17],[],""],["U_B_CombatUniform_mcam_vest",[["FirstAidKit",1],["ACE_Clacker",1],["ACE_DefusalKit",1],["ACRE_PRC343",1],["30Rnd_65x39_caseless_mag",1,30],["Chemlight_green",1,1]]],["V_Chestrig_rgr",[["30Rnd_65x39_caseless_mag",4,30],["16Rnd_9x21_Mag",2,17],["HandGrenade",2,1],["SmokeShell",1,1],["SmokeShellGreen",1,1],["SmokeShellBlue",1,1],["SmokeShellOrange",1,1],["Chemlight_green",1,1]]],["B_Kitbag_mcamo_Eng",[["ToolKit",1],["MineDetector",1],["SatchelCharge_Remote_Mag",1,1],["DemoCharge_Remote_Mag",2,1]]],"H_HelmetB_desert","G_Tactical_Clear",[],["ItemMap","","","ItemCompass","ItemWatch","NVGoggles"]],[]];
CREATE_LOADOUT(eng,"ENGINEER",_loadout);
LO_SET_ENGINEER(eng);

_loadout = [[["arifle_MX_F","","acc_pointer_IR","",["30Rnd_65x39_caseless_mag",30],[],""],[],["hgun_P07_F","","","",["16Rnd_9x21_Mag",17],[],""],["U_B_CombatUniform_mcam_tshirt",[["FirstAidKit",1],["ACRE_PRC343",1],["30Rnd_65x39_caseless_mag",2,30]]],["V_PlateCarrierSpec_rgr",[["30Rnd_65x39_caseless_mag",3,30],["16Rnd_9x21_Mag",2,17],["SmokeShell",1,1],["SmokeShellGreen",1,1],["SmokeShellBlue",1,1],["SmokeShellOrange",1,1],["Chemlight_green",2,1]]],["B_AssaultPack_rgr_Medic",[["Medikit",1],["FirstAidKit",10]]],"H_HelmetB_light_desert","G_Tactical_Clear",[],["ItemMap","","","ItemCompass","ItemWatch","NVGoggles"]],[]];
CREATE_LOADOUT(med,"PLATOON MEDIC",_loadout);
LO_SET_DOCTOR(med);

_loadout = [[["arifle_MX_F","","acc_pointer_IR","optic_Aco",["30Rnd_65x39_caseless_mag",30],[],""],[],["hgun_P07_F","","","",["16Rnd_9x21_Mag",17],[],""],["U_B_CombatUniform_mcam",[["FirstAidKit",1],["ACRE_PRC343",1],["30Rnd_65x39_caseless_mag",2,30]]],["V_PlateCarrierSpec_rgr",[["30Rnd_65x39_caseless_mag",7,30],["16Rnd_9x21_Mag",2,17],["SmokeShell",1,1],["SmokeShellGreen",1,1],["Chemlight_green",2,1]]],["B_Kitbag_rgr",[["ACRE_PRC117F",1]]],"H_HelmetB","",[],["ItemMap","B_UavTerminal","","ItemCompass","ItemWatch","NVGoggles"]],[]];
CREATE_LOADOUT(jtac,"JTAC",_loadout);

_loadout = [[["arifle_MX_F","","acc_pointer_IR","optic_Hamr",["30Rnd_65x39_caseless_mag",30],[],""],[],["hgun_P07_F","","","",["16Rnd_9x21_Mag",17],[],""],["U_B_CombatUniform_mcam_vest",[["FirstAidKit",1],["ACRE_PRC343",1],["ACRE_PRC152",1],["30Rnd_65x39_caseless_mag",2,30]]],["V_PlateCarrierGL_rgr",[["30Rnd_65x39_caseless_mag",1,30],["30Rnd_65x39_caseless_mag_Tracer",2,30],["16Rnd_9x21_Mag",2,17],["HandGrenade",2,1],["B_IR_Grenade",2,1],["SmokeShell",1,1],["SmokeShellGreen",1,1],["SmokeShellBlue",1,1],["SmokeShellOrange",1,1],["Chemlight_green",2,1]]],[],"H_HelmetB_desert","G_Combat",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","","ItemCompass","ItemWatch","NVGoggles"]],[]];
CREATE_LOADOUT(co,"Commander",_loadout);

_loadout = [[["arifle_MX_F","","acc_pointer_IR","optic_Aco",["30Rnd_65x39_caseless_mag",30],[],""],["launch_MRAWS_sand_F","","","",["MRAWS_HEAT_F",1],[],""],["hgun_P07_F","","","",["16Rnd_9x21_Mag",17],[],""],["U_B_CombatUniform_mcam",[["FirstAidKit",1],["ACRE_PRC343",1],["30Rnd_65x39_caseless_mag",2,30]]],["V_PlateCarrier2_rgr",[["30Rnd_65x39_caseless_mag",3,30],["16Rnd_9x21_Mag",2,17],["SmokeShell",1,1],["SmokeShellGreen",1,1],["Chemlight_green",2,1]]],["B_AssaultPack_rgr_LAT2",[["MRAWS_HEAT_F",2,1],["MRAWS_HE_F",1,1]]],"H_HelmetB_sand","G_Aviator",[],["ItemMap","","","ItemCompass","ItemWatch","NVGoggles"]],[]];
CREATE_LOADOUT(at,"Antitank",_loadout);
LO_ADD_WHITELIST_ITEMS(at,["MRAWS_HEAT55_F"]); // Has access to HEAT 75 in loadout, but not HEAT 55. this gives access to 55 in arsenal

COPY_LOADOUT(xo,"2IC",co);

CREATE_CRATE(supply,"STANDARD SUPPLY");
CR_ADD_PRIMARY(supply,xo,200);
CR_ADD_PRIMARY_MAGS(supply,xo,10);
CR_ADD_LAUNCHER(supply,at,2);
CR_ADD_LAUNCHER_MAGS(supply,at,10);
CR_ADD_SECONDARY(supply,rif,2);
CR_ADD_SECONDARY_MAGS(supply,rif,10);
CR_ADD_ITEM(supply,"ACE_Vector",2);

CREATE_CLASS(co,"Command",co);
CL_ADD_LOADOUT(co,xo);
CL_ADD_LOADOUT(co,jtac);
CL_ADD_LOADOUT(co,med);

CREATE_CLASS(sqd,"Squad",rif);
CL_ADD_LOADOUT(sqd,cls);
CL_ADD_LOADOUT(sqd,eng);
