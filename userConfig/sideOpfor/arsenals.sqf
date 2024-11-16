
/*
Functions:
	CREATE_ARSENAL("Role Name",ARRAY_OF_ITEMS);
	GET_LOADOUT_ITEMS("Loadout Name");
	GET_CLASS_ITEMS("Class Name");

Example 1:
	CREATE_ARSENAL("Rifleman",["arifle_MX_F","30Rnd_65x39_caseless_mag","U_B_CombatUniform_mcam","V_PlateCarrier1_rgr","H_HelmetB"]);

Example 2:
	_arrayItems = [[["arifle_MX_ACO_pointer_F","","acc_pointer_IR","optic_Aco",["30Rnd_65x39_caseless_mag",30],[],""],[],["hgun_P07_F","","","",["16Rnd_9x21_Mag",17],[],""],["U_B_CombatUniform_mcam",[["FirstAidKit",1],["30Rnd_65x39_caseless_mag",2,30]]],["V_PlateCarrier1_rgr",[["30Rnd_65x39_caseless_mag",7,30],["16Rnd_9x21_Mag",2,17],["SmokeShell",1,1],["SmokeShellGreen",1,1],["Chemlight_green",2,1],["HandGrenade",2,1]]],[],"H_HelmetB","",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch","NVGoggles"]],[]];
	_arrayItems = (flatten _arrayItems) select { _x isEqualType "" }; // gets all string items
	// _arrayItems append ["Binocular","ItemGPS","B_AssaultPack_mcamo"]; // Adding more items, example 1
	// _arrayItems = _arrayItems + ["Binocular","ItemGPS","B_AssaultPack_mcamo"]; // Adding more items, example 2
	CREATE_ARSENAL("Rifleman",_arrayItems);

Aside from generating lists automatically, an effective way of generating arsenal lists is
	1) Create sublists,
	2) Build role lists from sublists and a list of unique role items
	3) Assigning role lists to role presets
This will require some knowledge on how arrays work in sqf, but there are some examples below for manipulating them.
FYI: Duplicate items are handled without any error or side-effects by the arsenal init. Dont worry about filting for unique items

Get list of items from loadout:
	_loadout = Exported_Loadout_From_Editor; // export the loadout from the editor/zeus and paste over this
	_loadoutList = (flatten _loadout) select { _x isEqualType "" }; // gets all string items
	OR
	_loadoutList = GET_LOADOUT_ITEMS("Loadout Name");

Join two lists together:
	_loadoutList append ["Binocular","ItemGPS","B_AssaultPack_mcamo"];
	_loadoutList = _loadoutList + ["Binocular","ItemGPS","B_AssaultPack_mcamo"];
	_loadoutList pushBack "Binocular"; 
Notice that this doesnt have [] around the string. 'pushBack' appends the single item to the end of the list.
'append' will append all the items in the second list to the first list.

PREDEFINED ITEM LISTS:
	ACRE_ITEMS; // All 8 original acre radios + radio extenders
	ACE_MISC_ITEMS; // All misc items in the misc category besides the Ace Sandbag, and also includes a Canteen and Water Bottle (for those MGs)
	ACE_TOOL_ITEMS; // All ace tools except Cellphone, Chemlight Shield, Dead Man Switch, and M152 Firing Device (because the other one is better)
	ACE_MEDICAL_ITEMS; // All medical items except First Aid Kit, Medikit, and Personal Aid Kit
	BASE_ITEMS; Standard items for infantry.

Examples:
	_arrayItems append ACRE_ITEMS;
	_arrayItems = _arrayItems + ACE_MISC_ITEMS;
*/

