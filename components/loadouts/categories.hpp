
class LoadoutSystem {
    file = "components\loadouts";
	class getUnitFactionID {};
    class assignClass {};
    class assignCrate {};
    class assignLoadout {};
    class assignLocker {};
    class assignArsenal { postInit = 1; };
    class initLoadouts { preInit = 1; };
};

class LoadoutsSetup {
    file = "components\loadouts\setup";
    class addItemToCrate {};
    class addPrimaryToCrate {};
    class addSecondaryToCrate {};
    class addLauncherToCrate {};
    class addPrimaryMagsToCrate {};
    class addSecondaryMagsToCrate {};
    class addLauncherMagsToCrate {};
    class createCrateFromFaction {};
    class setupArsenal {};
    class setupClass {};
    class setupCrate {};
    class setupLoadout {};
};

class LoadoutsZen {
    file = "components\loadouts\zen";
    class dialogCreateCrateFactionID {};
    class dialogCreateCrateSelection {};
    class dialogSelectClass {};
    class dialogSelectLoadout {};
    class zenAssignCrate { preInit = 1; };
    class zenAssignClass { preInit = 1; };
    class zenAssignLoadout { preInit = 1; };
};
