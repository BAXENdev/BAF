
#include "..\..\macros\loadoutConfigMacros.hpp"

#define FACTION_ID WEST_ID

DEBUG_RPT("(loadout) Initializing loadout config for blufor");

INIT_LOADOUT_SYSTEM();

_loadout = [[["arifle_MX_ACO_pointer_F","","acc_pointer_IR","optic_Aco",["30Rnd_65x39_caseless_mag",30],[],""],[],["hgun_P07_F","","","",["16Rnd_9x21_Mag",17],[],""],["U_B_CombatUniform_mcam",[["FirstAidKit",1],["30Rnd_65x39_caseless_mag",2,30]]],["V_PlateCarrier1_rgr",[["30Rnd_65x39_caseless_mag",7,30],["16Rnd_9x21_Mag",2,17],["SmokeShell",1,1],["SmokeShellGreen",1,1],["Chemlight_green",2,1],["HandGrenade",2,1]]],[],"H_HelmetB","G_Combat",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch","NVGoggles"]],[]];
CREATE_LOADOUT(rif,"RIFLEMAN",_loadout);

_loadout = [[["arifle_MX_pointer_F","","acc_pointer_IR","",["30Rnd_65x39_caseless_mag",30],[],""],[],["hgun_P07_F","","","",["16Rnd_9x21_Mag",17],[],""],["U_B_CombatUniform_mcam_tshirt",[["FirstAidKit",1],["30Rnd_65x39_caseless_mag",2,30]]],["V_PlateCarrierSpec_rgr",[["30Rnd_65x39_caseless_mag",3,30],["16Rnd_9x21_Mag",2,17],["SmokeShell",1,1],["SmokeShellGreen",1,1],["SmokeShellBlue",1,1],["SmokeShellOrange",1,1],["Chemlight_green",2,1]]],["B_AssaultPack_rgr_Medic",[["Medikit",1],["FirstAidKit",10]]],"H_HelmetB_light_desert","G_Tactical_Clear",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch","NVGoggles"]],[]];
CREATE_LOADOUT(cls,"COMBAT MEDIC",_loadout);
LO_SET_MEDIC(cls);

_loadout = [[["arifle_MXC_Holo_pointer_F","","acc_pointer_IR","optic_Holosight",["30Rnd_65x39_caseless_mag",30],[],""],[],["hgun_P07_F","","","",["16Rnd_9x21_Mag",17],[],""],["U_B_CombatUniform_mcam_vest",[["FirstAidKit",1],["ACE_Clacker",1],["ACE_DefusalKit",1],["30Rnd_65x39_caseless_mag",1,30],["Chemlight_green",1,1]]],["V_Chestrig_rgr",[["30Rnd_65x39_caseless_mag",4,30],["16Rnd_9x21_Mag",2,17],["HandGrenade",2,1],["SmokeShell",1,1],["SmokeShellGreen",1,1],["SmokeShellBlue",1,1],["SmokeShellOrange",1,1],["Chemlight_green",1,1]]],["B_Kitbag_mcamo_Eng",[["ToolKit",1],["MineDetector",1],["SatchelCharge_Remote_Mag",1,1],["DemoCharge_Remote_Mag",2,1]]],"H_HelmetB_desert","G_Tactical_Clear",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch","NVGoggles"]],[]];
CREATE_LOADOUT(eng,"ENGINEER",_loadout);
LO_SET_ENGINEER(eng);

_loadout = [[["arifle_MX_pointer_F","","acc_pointer_IR","",["30Rnd_65x39_caseless_mag",30],[],""],[],["hgun_P07_F","","","",["16Rnd_9x21_Mag",17],[],""],["U_B_CombatUniform_mcam_tshirt",[["FirstAidKit",1],["30Rnd_65x39_caseless_mag",2,30]]],["V_PlateCarrierSpec_rgr",[["30Rnd_65x39_caseless_mag",3,30],["16Rnd_9x21_Mag",2,17],["SmokeShell",1,1],["SmokeShellGreen",1,1],["SmokeShellBlue",1,1],["SmokeShellOrange",1,1],["Chemlight_green",2,1]]],["B_AssaultPack_rgr_Medic",[["Medikit",1],["FirstAidKit",10]]],"H_HelmetB_light_desert","G_Tactical_Clear",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch","NVGoggles"]],[]];
CREATE_LOADOUT(med,"PLATOON MEDIC",_loadout);
LO_SET_DOCTOR(med);

_loadout = [[["arifle_MX_ACO_pointer_F","","acc_pointer_IR","optic_Aco",["30Rnd_65x39_caseless_mag",30],[],""],[],["hgun_P07_F","","","",["16Rnd_9x21_Mag",17],[],""],["U_B_CombatUniform_mcam",[["FirstAidKit",1],["30Rnd_65x39_caseless_mag",2,30],["HandGrenade",1,1]]],["V_PlateCarrierSpec_rgr",[["30Rnd_65x39_caseless_mag",7,30],["16Rnd_9x21_Mag",2,17],["SmokeShell",1,1],["SmokeShellGreen",1,1],["Chemlight_green",2,1]]],["B_UAV_01_backpack_F",[]],"H_HelmetB","",[],["ItemMap","B_UavTerminal","ItemRadio","ItemCompass","ItemWatch","NVGoggles"]],[]];
CREATE_LOADOUT(jtac,"JTAC",_loadout);

_loadout = [[["arifle_MX_Hamr_pointer_F","","acc_pointer_IR","optic_Hamr",["30Rnd_65x39_caseless_mag",30],[],""],[],["hgun_P07_F","","","",["16Rnd_9x21_Mag",17],[],""],["U_B_CombatUniform_mcam_vest",[["FirstAidKit",1],["30Rnd_65x39_caseless_mag",2,30]]],["V_PlateCarrierGL_rgr",[["30Rnd_65x39_caseless_mag",1,30],["30Rnd_65x39_caseless_mag_Tracer",2,30],["16Rnd_9x21_Mag",2,17],["HandGrenade",2,1],["B_IR_Grenade",2,1],["SmokeShell",1,1],["SmokeShellGreen",1,1],["SmokeShellBlue",1,1],["SmokeShellOrange",1,1],["Chemlight_green",2,1]]],[],"H_HelmetB_desert","G_Combat",["Binocular","","","",[],[],""],["ItemMap","ItemGPS","ItemRadio","ItemCompass","ItemWatch","NVGoggles"]],[]];
CREATE_LOADOUT(co,"Commander",_loadout);

COPY_LOADOUT(xo,"2IC",co);

CREATE_CRATE(supply,"STANDARD SUPPLY");
CR_ADD_PRIMARY(supply,xo,2);
// CR_ADD_PRIMARY_MAGS(supply,xo,20);

CREATE_CLASS(co,"Command",co);
CL_ADD_LOADOUT(co,xo);
CL_ADD_LOADOUT(co,jtac);
CL_ADD_LOADOUT(co,med);

CREATE_CLASS(sqd,"Squad",rif);
CL_ADD_LOADOUT(sqd,cls);
CL_ADD_LOADOUT(sqd,eng);
