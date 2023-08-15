
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

class BAF {
    #include "..\intel\functions.hpp"
    #include "..\loadoutSystem\functions.hpp"
    #include "..\misc\functions.hpp"
};

class BAF_INIT {
    #include "..\startup\functions.hpp"
    #include "..\..\userConfig\loadouts\functions.hpp"
};

class CMS {
    #include "..\..\userConfig\customMissionScripts\functions.hpp"
};
