
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
