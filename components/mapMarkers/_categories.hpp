
class Root {
    file = "components\mapMarkers";
    class aceActions { postInit=1; };
    class postinit { postInit=1; };
    class preinit { preInit=1; };
    class settings { preInit=1; };
};

class GroupMarkers {
    file = "components\mapMarkers\groupMarkers";
    class drawGroupMarkers {};
    class getGroupIcon {};
    class getGroupMarker {};
    class setGroupColor {};
    class setGroupHidden {};
    class setGroupIcon {};
};

class UnitMarkers {
    file = "components\mapMarkers\unitMarkers";
    class drawUnitMarkersGPS {};
    class drawUnitMarkersMap {};
    class getUnitIcon {};
    class getUnitMarker {};
};

class Zen {
    file = "components\mapMarkers\zen";
    class dialogMarkerSettings {};
    class dialogUpdateGroupMarker {};
    class dialogUpdateMarkerSettings {};
    class zenUpdateGroupMarker { preInit=1; };
    class zenUpdateMarkerSettings { preInit=1; };
};
