
class Root {
    file = "components\loadouts";
    class postinit_Loadouts { postInit=1; };
    class preinit_Loadouts { preInit=1; };
};

class Loadout {
    file = "components\loadouts\loadout";
    class addActionSelectLoadout {};
    class assignCrate {};
    class assignLoadout {};
};

class Setup {
    file = "components\loadouts\setup";
    class classAddLoadout {};
    class classSetDefault {};
    class crateAddItem {};
    class crateAddLoadoutMag {};
    class crateAddLoadoutWeapon {};
    class crateAddMedical {};
    class createClass {};
    class createCrate {};
    class createFaction {};
    class createLoadout {};
    class factionSetDefault {};
    class loadoutAddRandomGear {};
    class loadoutAddVariant {};
    class loadoutCopy {};
    class loadoutSetTrait {};
};

class Zen {
    file = "components\loadouts\zen";
    class dialogCrateSelectCrate {};
    class dialogCrateSelectFaction {};
    class dialogLoadoutSelectClass {};
    class dialogLoadoutSelectFaction {};
    class dialogLoadoutSelectLoadout {};
    class dialogLockerAddAction {};
    class zenAssignCrate {};
    class zenAssignLoadout {};
    class zenAssignLocker {};
};
