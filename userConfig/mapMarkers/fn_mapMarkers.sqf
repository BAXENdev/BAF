
#include "..\macros\mapMarkersMacros.hpp"

/*
Arguments:
	Group Name: In arma syntax, this is called the groupId. this is the name that you give the group in 3den editor.
	* If your command group is named "Command", then the value you put for Group Name is "Command".

	COLORS: COLOR_BLUFOR 		| COLOR_OPFOR           | COLOR_INDFOR 			| COLOR_CIVILIAN 
	*		COLOR_ORANGE 		| COLOR_YELLOW          | COLOR_LIME 			| COLOR_GREEN 
	*		COLOR_AQUA 			| COLOR_BLUE 			| COLOR_PURPLE 			| COLOR_MAGENTA 
	*		COLOR_GRAY 			| COLOR_WHITE			| COLOR_UNKNOWN 		| COLOR_RED
	*		COLOR_TURQUISE 		| COLOR_CYAN			| COLOR_BLACK			| COLOR_PINK 
	* Color is an RGBA Array with values between 0 and 1. EX: [0.3, 0.8, 0.2, 1.0]
	* The last value is Alpha, which should usually be 1 for fully visible / not transparent.
	* Alpha will not override a transparent portion in an image. So partially transparent images will keep their transparency.

	ICONS:	ICON_B_AIR 			| ICON_B_ANTIAIR 		| ICON_B_ARMOR 			| ICON_B_ARTILLERY
	*		ICON_B_HQ 			| ICON_B_INFANTRY 		| ICON_B_MAINTENANCE 	| ICON_B_MECHANIZED
	*		ICON_B_INSTALLATION | ICON_B_MEDICAL 		| ICON_B_MORTAR 		| ICON_B_MOTORIZED 
	*		ICON_B_NAVAL 		| ICON_B_ORDNANCE 		| ICON_B_PLANE 			| ICON_B_RECON 
	*		ICON_B_SERVICE 		| ICON_B_SUPPORT 		| ICON_B_UAV 			| ICON_B_UNKNOWN
	* Icon is a string filepath for an asset. The macros above will fill in the file paths to the respective icons.
	* All custom user icons (and other assets) should be placed in "userConfig\assets\".
	* To use an added asset in the userConfig assets folder, prefix the string with 'MISSION_ASSETS + '.
	* Example: SET_GROUP_ICON("Alpha 1-1",MISSION_ASSETS + "iconSuperMortar.paa");
	* This refers to the file "userConfig\assets\iconSuperMortar.paa". You have to do it this way because ARMA.

	SET_GROUP_COLOR(Group Name [string],Color [RGBA array])
	SET_GROUP_ICON(Group Name [string],Icon [string path])
	HIDE_GROUP(Group Name [string])
*/

SET_GROUP_COLOR("Alpha 1-1",COLOR_BLUFOR);
SET_GROUP_ICON("Alpha 1-1",ICON_B_INFANTRY);
