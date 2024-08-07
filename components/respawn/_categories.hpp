
class Root {
    file = "components\respawn";
    class canRespawn {};
    class isRespawnPositionValid {};
    class onPlayerKilled {};
    class onPlayerRespawn {};
    class postinit { postInit=1; };
    class preinit { preInit=1; };
    class quickRespawnPlayer {};
    class respawnGetPlayerSpawns {};
    class respawnLoadUi {};
    class respawnLoop {};
    class respawnPlayer {};
    class settings {};
    class updateRespawnSettings {};
};

class Zen {
    file = "components\respawn\zen";
    class dialogRespawnPlayers {};
    class dialogSelectRespawnPosition {};
    class dialogUpdateRespawnSettings {};
    class zenRespawnPlayers { preInit=1; };
    class zenUpdateRespawnSettings { preInit=1; };
};
