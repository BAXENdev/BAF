
#include "_respawnMacros.hpp"

respawnDialog = 0;
respawnOnStart = -1;
respawnDelay = -1;

class CfgRespawnTemplates {
    // TODO: Remove side templates
    class BAX_Blufor {
        respawn = "BASE";
        respawnDelay = BLUFOR_DELAY;
    };

    class BAX_Opfor {
        respawn = "BASE";
        respawnDelay = OPFOR_DELAY;
    };

    class BAX_Indfor {
        respawn = "BASE";
        respawnDelay = INDFOR_DELAY;
    };

    class BAX_Civilian {
        respawn = "BASE";
        respawnDelay = CIVILIAN_DELAY;
    };

    class BAX_Respawn {
        respawn = "BASE";
        respawnDelay = 10000000;
        onPlayerKilled = "bax_respawn_fnc_onPlayerKilled";
        onPlayerRespawn = "bax_respawn_fnc_onPlayerRespawn";
        isCall = 1;
    };

    class BAX_Loadouts {
        onPlayerRespawn = "bax_loadouts_fnc_onPLayerRespawn";
        isCall = 1;
    };

    class BAX_Radios {
        onPlayerRespawn = "bax_radios_fnc_onPlayerRespawn";
        isCall = 1;
    };
};

respawnTemplatesWest[] = {"bax_blufor","bax_loadouts","counter","ace_spectator"};
respawnTemplatesEast[] = {"bax_opfor","bax_loadouts","counter","ace_spectator"};
respawnTemplatesGuer[] = {"bax_indfor","bax_loadouts","counter","ace_spectator"};
respawnTemplatesCiv[]  = {"bax_civlian","bax_loadouts","counter","ace_spectator"};
