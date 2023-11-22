
class CfgRespawnTemplates {
    class BAX_Respawn {
        respawnOnStart = -1;
        respawnDelay = 1e7;
        onPlayerKilled = "BAX_RESPAWN_fnc_onPlayerKilled";
        onPlayerRespawn = "BAX_RESPAWN_fnc_onPlayerRespawn";
    };

    class BAX_Loadout {
        // onPlayerKilled = "BAX_LOADOUTS_fnc_onPlayerKilled";
        onPlayerRespawn = "BAX_LOADOUTS_fnc_onPlayerRespawn";
        isCall = 1;
    };

    class BAX_Radio {
        // onPlayerKilled = "BAX_LOADOUTS_fnc_onPlayerKilled";
        onPlayerRespawn = "BAX_RADIOS_fnc_onPlayerRespawn";
        isCall = 1;
    };
};

respawn = 3;
respawnTemplates[] = { "bax_respawn", "bax_loadout", "bax_radio" };
