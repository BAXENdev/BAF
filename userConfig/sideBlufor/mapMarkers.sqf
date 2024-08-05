
#define SIDE west
/*
Commands:
    SET_GROUP_COLOR(Group Name [string],Color [RGBA array]);
    SET_GROUP_ICON(Group Name [string],Icon [string path]);
    HIDE_GROUP(Group Name [string]);

    Group Name: In arma syntax, this is called the groupId. this is the name that you give the group in 3den editor.
    * If your command group is named "Command", then the value you put for Group Name is "Command".

ICONS:  AIR | ANTIAIR | ARMOR | ART | HQ | INF | INSTALLATION
        MAINT | MECHINF | MED | MORTAR | MOTORINF | NAVAL
        PLANE | RECON | SERVICE | SUPPORT | UAV | UNKNOWN

CUSTOM ICONS:
    * All custom user icons should be placed in "userConfig\assets\".
    * Example of mission file icon: "userConfig\assets\iconSuperMortar.paa"
    * Example of an asset in a addon: "\A3\ui_f\data\map\markers\nato\c_unknown.paa"

*/

SET_GROUP_COLOR("Alpha 1-1",COLOR_PURPLE);
SET_GROUP_ICON("Alpha 1-1",AIR); // This passes a keyword for the standard groupMarkerSystem
// HIDE_GROUP("Alpha 1-1");

SET_GROUP_COLOR("Alpha 1-2",COLOR_PINK);
SET_GROUP_ICON("Alpha 1-2",ICON_INF(o)); // This passes a texture path, in this case an opfor icon for a blufor group
// HIDE_GROUP("Alpha 1-1");

SET_GROUP_COLOR("Alpha 1-3",COLOR_INDFOR);
SET_GROUP_ICON("Alpha 1-3","assets\markers\n_inf.paa"); // You can also specify your own icons, your icons should be placed in 'userConfig\assets\'
// HIDE_GROUP("Alpha 1-1");
