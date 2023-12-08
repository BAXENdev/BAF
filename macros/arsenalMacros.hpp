
#define VARS_ARSENAL_OBJ_TRIGGER BAX_VAR('arsenal_trigger')
#define VARS_ARSENAL_OBJ_ACTION_ID BAX_VAR('arsenal_action_id')
#define VARS_ARSENAL_OPENED BAX_VAR('arsenal_opened')
#define VARS_ARSENAL_BOX BAX_VAR('arsenal_box')

#define VARS_SIDE_ARSENAL(SIDE) BAX_VAR('arsenal_side_' + SIDE)
#define VARS_FACTION_ARSENAL(FACTION) BAX_VAR('arsenal_faction_' + FACTION)
#define VARS_LOADOUT_ARSENAL(FACTION,LOADOUT) BAX_VAR('arsenal_loadout_' + FACTION + '_' + LOADOUT)
#define VARS_CLASS_ARSENAL(FACTION,CLASS) BAX_VAR('arsenal_class_' + FACTION + '_' + CLASS)

#define AR_GET_ITEMS_CRATE(CS) [_factionID,CS] call BAX_LOADOUTS_fnc_arsenalGetItemsFromCrate
#define AR_GET_ITEMS_LOADOUT(CS) [_factionID,CS] call BAX_LOADOUTS_fnc_arsenalGetItemsFromCrate
#define AR_SIDE_ADD_ITEM(SIDE,WL_ITEMS,BL_ITEMS) [_factionID,SIDE,WL_ITEMS,BL_ITEMS] call BAX_LOADOUTS_fnc_arsenalAddItemsSide
#define AR_CLASS_ADD_ITEM(CS,WL_ITEMS,BL_ITEMS) [_factionID,CS,WL_ITEMS,BL_ITEMS] call BAX_LOADOUTS_fnc_arsenalAddItemsClass
#define AR_FACTION_ADD_ITEM(WL_ITEMS,BL_ITEMS) [_factionID,WL_ITEMS,BL_ITEMS] call BAX_LOADOUTS_fnc_arsenalAddItemsClass
#define AR_LOADOUT_ADD_ITEM(CS,WL_ITEMS,BL_ITEMS) [_factionID,LS,WL_ITEMS,BL_ITEMS] call BAX_LOADOUTS_fnc_arsenalAddItemsClass

