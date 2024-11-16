
/*
Commands:
    SET_GROUP_COLOR(Group Name [string],Color [RGBA array]);
    SET_GROUP_ICON(Group Name [string],Icon [string path]);
    HIDE_GROUP(Group Name [string]);

    Group Name: In arma syntax, this is called the groupId. this is the name that you give the group in 3den editor.
    * If your command group is named "Command", then the value you put for Group Name is "Command".

DEFINED CONSTANTS:
    COLORS  | COLOR_BLUFOR          | COLOR_OPFOR           | COLOR_INDFOR          | COLOR_CIV
    *       | COLOR_RED             | COLOR_BLUE            | COLOR_GREEN           | COLOR_YELLOW
    *       | COLOR_ORANGE          | COLOR_PURPLE          | COLOR_PINK            | COLOR_TAN
    * Color is an RGBA Array with values between 0 and 1. EX: [0.3, 0.8, 0.2, 1]
    * The last value is Alpha, which should usually be 1 for fully visible / not transparent.
    * Alpha will not override a transparent portion in an image. So partially transparent images will keep their transparency.

    ICONS   | ICON_AIR(b)           | ICON_ANTIAIR(b)       | ICON_ARMOR(b)         | ICON_ART(b)
    *       | ICON_HQ(b)            | ICON_INF(b)           | ICON_MAINT(b)         | ICON_INSTALLATION(b)
    *       | ICON_MECHINF(b)       | ICON_MED(b)           | ICON_MORTAR(b)        | ICON_MOTORINF(b)
    *       | ICON_NAVAL(b)         | ICON_PLANE(b)         | ICON_RECON(b)         | ICON_SERVICE(b)
    *       | ICON_SUPPORT(b)       | ICON_UAV(b)           | ICON_UNKNOWN(b)
    * An icon is a string filepath for an asset. The macros above will fill in the file paths to the respective icons.
    * Each icon requires a side identifier. Civilians do not have access to these icons. Their icons are listed below.
    * To change the identifier, swap the 'b' inside the parathensis. (b) or (o) or (n)
    SideID: | Blufor = b            | Opfor = o             | Indfor = n

SOLID ICONS:
    * Icons with non-transparent backgrounds can be used by prefixing the icon macros with 'B_'.
    * Example: B_ICON_AIR(b)
    * This uses a solid background variant of the AIR squad icon.

CIVILIAN ICONS                      | ICON_AIR_C            | ICON_CAR_C            
    *       | ICON_PLANE_C          | ICON_SHIP_C           | ICON_UNKNOWN_C
    * Civilian icons do not require an identifier.
    
CUSTOM ICONS:
    * All custom user icons should be placed in "userConfig\assets\".
    * To use an added asset in the userConfig assets folder, prefix the string with `getMisssionPath "userConfig\assets\[filename]"`
    * Example: SET_GROUP_ICON("Super Mortar Team", getMissionPath "userConfig\assets\iconSuperMortar.paa");


*/
