
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

class BAX_COMMON {
    #include "..\common\_categories.hpp"
};

class BAX_SETTINGS {
    #include "..\settings\_categories.hpp"
};

class BAX_LOADOUTS {
    #include "..\loadouts\_categories.hpp"
};

class BAX_ARSENALS {
    #include "..\arsenals\_categories.hpp"
};

class BAX_SUPPLYCRATES {
    #include "..\supplyCrates\_categories.hpp"
};

class BAX_RESPAWNVANILLA {
    #include "..\respawnVanilla\_categories.hpp"
};

class BAX_MAPMARKERS {
    #include "..\mapMarkers\_categories.hpp"
};

class BAX_RADIOS {
    #include "..\radios\_categories.hpp"
};

class BAX_USERINIT {
    #include "..\userInit\_categories.hpp"
};

class CMS {
    #include "..\..\userConfig\customMissionScripts\_categories.hpp"
};
