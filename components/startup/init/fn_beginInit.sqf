
MISSION_ROOT = call {
    private "_arr";
    _arr = toArray str missionConfigFile;
    _arr resize (count _arr - 15);
    toString _arr
};
MISSION_ASSETS = MISSION_ROOT + "assets\";

missionNamespace setVariable ["baf_init_done",1];
