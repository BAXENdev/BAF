
class Root {
    file = "components\settings";
    class aceActions { postInit=1; };
    class loadPlayerVar {};
    class preinit { preInit=1; };
    class registerSetting {};
    class updatePlayerVar {};
};

class Zen {
    file = "components\settings\zen";
    class dialogSelectSettings {};
    class dialogUpdateSettings {};
    class zenUpdateSettings { preInit=1; };
};
