
class Root {
    file = "components\supplyCrates";
    class addItemsToCrate {};
    class assignCrate {};
    class preinit { preInit=1; };
    class registerCrate {};
    class setupCrate {};
};

class Loadouts {
    file = "components\supplyCrates\loadouts";
    class addBackpack {};
    class addLoadoutMag {};
    class addLoadoutWeapon {};
};

class Zen {
    file = "components\supplyCrates\zen";
    class dialogSelectCrate {};
    class dialogSelectCrateFaction {};
    class dialogSelectCrateObject {};
    class zenAssignCrate { preInit=1; };
};
