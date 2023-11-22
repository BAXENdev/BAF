
class Loadouts {
    file = "userConfig\loadouts";
    class loadoutConfigWest { preInit = 1; };
    // class loadoutConfigEast { preInit = 1; };
    // class loadoutConfigIndependent { preInit = 1; };
    // class loadoutConfigCivilian { preInit = 1; };
};

class Radios {
    file = "userConfig\radios";
    class acreSetup { preInit = 1; };
    // class tfarSetup {};
};

class MapMarkers {
    file = "userConfig";
    class mapMarkers { postInit = 1; };
};
