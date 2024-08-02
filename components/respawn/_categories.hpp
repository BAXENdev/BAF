
class Root {
    file = "components\respawn";
    class canRespawn {};
    class isRespawnPositionValid {};
    class onPlayerKilled {};
    class onPlayerRespawn {};
    class postinit { postInit=1; };
    class preinit { preInit=1; };
    class respawnGetPlayerSpawns {};
    class respawnLoadUi {};
    class respawnLoop {};
    class respawnPlayer {};
    class respawnProcessSync {};
    class settings {};
};

class Zen {
    file = "components\respawn\zen";
    class dialogRespawnPlayers {};
    class dialogSelectRespawnPosition {};
    class zenRespawnPlayers { preInit=1; };
};
