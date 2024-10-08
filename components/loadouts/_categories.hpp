
class Root {
    file = "components\loadouts";
    class addLoadoutAction {};
    class assignLoadout {};
    class postinit { postInit=1; };
    class preinit { preInit=1; };
    class removeLoadoutAction {};
    class selectRandomGear {};
    class setupLoadout {};
};

class Loadout {
    file = "components\loadouts\loadout";
    class addRandomGear {};
    class addVariant {};
    class copyLoadout {};
    class copyRandomGear {};
    class createLoadout {};
    class removeRandomGear {};
    class removeVariants {};
    class resetLoadout {};
    class resetTraits {};
    class setTrait {};
};

class Zen {
    file = "components\loadouts\zen";
    class dialogAddLoadoutAction {};
    class dialogSelectLoadout {};
    class zenAddLoadoutAction { preInit=1; };
    class zenAssignLoadout { preInit=1; };
};
