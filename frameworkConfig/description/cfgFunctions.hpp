
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
    class LoadoutSystem {
        file = "frameworkConfig\loadoutSystem";
        class assignLoadout {};
        class loadoutPickerDialog {};
        // class assignClass {};
        // class createCrate {};
    };

    class LoadoutSystem_zen {
        file = "frameworkConfig\loadoutSystem\zen";
    };

    class RadioSystem {
        file = "frameworkConfig\radioSystem";
    };

    class Misc {
        file = "frameworkConfig\misc";
        class unitSideToFactionID {};
    };
};

class BAF_INIT {
    class StartUp {
        file = "frameworkConfig\startUp\init";
        class initLoadout {};
        // class radioInit {};
        // class acreInit {};
        // class tfarInit {};
        class initBegin { preInit = 1; };
    };

    class SetupLoadoutSystem {
        file = "frameworkConfig\loadoutSystem\setup";
        class addItemsToArsenal {};
        class addPrimaryToCrate {};
        class addSecondaryToCrate {};
        class addLauncherToCrate {};
        class addPrimaryMagsToCrate {};
        class addSecondaryMagsToCrate {};
        class addLauncherMagsToCrate {};
        class createCrateFromFaction {};
        class setupClass {};
        class setupCrate {};
        class setupLoadout {};
    };
};

class BAF_FCFG {
    class Respawn {
        file = "frameworkConfig\respawn";
        // class onPlayerRespawn {};
    }
};
