
class Root {
    file = "components\frameworkSettings";
    class preinit { preInit=1; };
    class registerSetting {};
};

class Zen {
    file = "components\frameworkSettings\zen";
    class dialogSelectSettings {};
    class dialogUdateSettings {};
    class zenUpdateSettings { preInit=1; };
};
