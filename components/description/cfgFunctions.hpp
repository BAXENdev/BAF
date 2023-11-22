
// https://community.bistudio.com/wiki/Arma_3:_Functions_Library#Config_Levels
// class TAG {
// tag = "TAG2"; // Overrides the TAG class name.
// class Category {
//     file = "\Path\to\folder"; // CfgFunctions looks for function definitions here.
//     class function {
//             // Optional definitions
//             file = "Path\to\file.sqf"; // Direct path to function. Ignore's category's path
//             preInit = 1; // Runs before any objects have been initialized. Uncheduled.
//             postInit = 1; // Runs after objects have been initialized. Suspensions here suspend the entire mission loading. Scheduled.
//             ext = ".fsm"; // Indicates file type if fsm. // TODO: Needed?
//         };	
//     };
// };

class BAX_INIT {
    #include "..\startup\categories.hpp"
    #include "..\..\userConfig\categories.hpp"
};

// class BAX_LOADOUTS {
//     #include "..\loadouts\categories.hpp"
// };

// class BAX_MISC {
//     #include "..\misc\categories.hpp"
// };

// class BAX_MAPMARKERS {
//     #include "..\mapMarkers\categories.hpp"
// };

// class BAX_RADIOS {
//     #include "..\radios\categories.hpp"
// };

// class BAX_RESPAWN {
//     #include "..\respawn\categories.hpp"
// };

class BAX_USER {
    #include "..\..\userConfig\customMissionScripts\categories.hpp"
};
