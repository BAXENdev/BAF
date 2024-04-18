
class Root {
    file = "components\settings";
    class preinit { preInit=1; };
    class registerSetting {};
};

class Zen {
    file = "components\settings\zen";
    class dialogSelectSettings {};
    class dialogUdateSettings {};
    class zenUpdateSettings { preInit=1; };
};
