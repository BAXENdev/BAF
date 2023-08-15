
class LoadoutSystem {
    file = "frameworkConfig\loadoutSystem";
    class assignClass {};
    class assignCrate {};
    class assignLoadout {};
    class selectLoadoutDialog {};
    class createCrateFactionIdDialog {};
    class createCrateSelectionDialog {};
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

class LoadoutSystemZen {
    file = "frameworkConfig\loadoutSystem\zen";
    class zenAssignCrate { preInit = 1; };
    class zenAssignLoadout { preInit = 1; };
};
