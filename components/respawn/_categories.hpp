
class Root {
    file = "components\respawn";
    class onPlayerKilled {};
    class onPlayerRespawn {};
    class postinit { postInit=1; };
    class preinit { preInit=1; };
};

class Zen {
    file = "components\respawn\zen";
    class dialogRespawnPlayers {};
    class zenRespawnPlayers { preInit=1; };
};
