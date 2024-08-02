
#include "_respawnMacros.hpp"

respawn = 3;
respawnDialog = 0;
respawnOnStart = -1;
respawnDelay = 1000000;
respawnButton = 1;

class CfgRespawnTemplates {
    class BAX_Respawn {
        onPlayerKilled = "bax_respawn_fnc_onPlayerKilled";
        onPlayerRespawn = "bax_respawn_fnc_onPlayerRespawn";
        // isCall = 1;
    };

    class BAX_Loadouts {
        onPlayerRespawn = "bax_loadouts_fnc_onPlayerRespawn";
        // isCall = 1;
    };

    // class BAX_Radios {
    //     // TODO: Add radios
    //     // onPlayerRespawn = "bax_radios_fnc_onPlayerRespawn";
    //     isCall = 1;
    // };
};

respawnTemplatesWest[] = {"BAX_Respawn", "BAX_Loadouts", "ace_spectator"};
