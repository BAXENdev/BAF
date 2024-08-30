
class Root {
    file = "components\respawnVanilla";
    class onPlayerKilled {};
    class onPlayerRespawn {};
    class postinit { postInit=1; };
    class preinit { preInit=1; };
};

class Zen {
    file = "components\respawnVanilla\zen";
    class dialogRespawnPlayers {};
    class dialogUpdateRespawnSettings {};
    class zenUpdateRespawnSettings { preInit=1; };
};
