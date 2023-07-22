
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
        class assignClass {};
        class assignCrate {};
        class assignLoadout {};
        class selectLoadoutDialog {};
        class createCrateFactionIdDialog {};
        class createCrateSelectionDialog {};
        // class openFactionIdDialog {};
        // class createCrate {};
    };

    class LoadoutSystemSetup {
        file = "frameworkConfig\loadoutSystem\setup";
        class addItemToCrate {};
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

    class RadioSystem {
        file = "frameworkConfig\radioSystem";
    };

    class Misc {
        file = "frameworkConfig\misc";
        class getUnitFactionId {};
        class objectHasInventory {};
    };
};

class BAF_INIT {
    class StartUp {
        file = "frameworkConfig\startUp\init";
        class initLoadout {};
        class initZen {};
        // class radioInit {};
        // class acreInit {};
        // class tfarInit {};
        class initBegin { preInit = 1; };
    };

    class LoadoutSystemZen {
        file = "frameworkConfig\loadoutSystem\zen";
        class zenAssignLoadout {};
        class zenAssignCrate {};
    };
};

class BAF_FCFG {
    class Respawn {
        file = "frameworkConfig\respawn";
        // class onPlayerRespawn {};
    }
};
