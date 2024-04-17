
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

class BAX_MISC {
    #include "..\misc\_categories.hpp"
};

class BAX_PLAYERSETTINGS {
    #include "..\playerSettings\_categories.hpp"
};

class BAX_FRAMEWORKSETTINGS {
    #include "..\playerSettings\_categories.hpp"
};

// class BAX_TOOLS {
//     #include "..\tools\_categories.hpp"
// };

// TODO: Gravestones

// TODO: StrategicMap

class BAX_MAPMARKERS {
    #include "..\mapMarkers\_categories.hpp"
};

class BAX_LOADOUTS {
    #include "..\loadouts\_categories.hpp"
};

class BAX_ARSENALS {
    #include "..\arsenals\_categories.hpp"
};

// class BAX_RADIOS {
//     #include "..\radios\_categories.hpp"
// };

class BAX_RESPAWN {
    #include "..\respawn\_categories.hpp"
};

class BAX_USERINIT {
    #include "..\userInit\_categories.hpp"
};

class CMS {
    #include "..\..\userConfig\customMissionScripts\_categories.hpp"
};
