
#include "_respawnVanillaMacros.hpp"

respawn = 3;
respawnDialog = 0;
respawnOnStart = -1;
respawnDelay = 1000000;
respawnButton = 1;

class CfgRespawnTemplates {
    class BAX_Respawn {
        onPlayerKilled = "bax_respawnVanilla_fnc_onPlayerKilled";
        onPlayerRespawn = "bax_respawnVanilla_fnc_onPlayerRespawn";
        isCall = 1;
    };

    class BAX_Radios {
        onPlayerRespawn = "bax_radios_fnc_onPlayerRespawn";
        isCall = 1;
    };
};

respawnTemplatesWest[] = {"MenuPosition", "TicketsSpawn", "Counter", "BAX_Respawn", "BAX_Radios"};
