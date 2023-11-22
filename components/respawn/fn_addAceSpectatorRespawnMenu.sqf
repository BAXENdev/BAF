

[
    "ace_spectator_displayLoaded",
    {
        with uiNamespace do {
            disableSerialization;
            params ["_display"];

            private _idc = 49690;
            private ["_ctrlGroupRespawn","_respawnTitle","_respawnBackground","_respawnPosition","_respawnTickets","_respawnTimer"];
            private ["_ctrlGroupLoadout","_loadoutTitle","_loadoutBackground","_loadoutSelection"];
            private ["_gridx","_gridy"];

            _gridx = safezonew / 40;
            _gridy = safezoneh / 25;
            
            _respawnTitle = _display ctrlCreate ["BaxTitle", _idc]; _idc = _idc + 1;
            _respawnTitle ctrlSetText "Select Respawn (CTRL + S)";
            _respawnTitle ctrlSetPosition [
                _gridx * 34 + safeZoneX,
                _gridy * 0 + safeZoneY,
                _gridx * 6,
                _gridy * 1
            ];
            _respawnTitle ctrlCommit 0;

            _respawnBackground = _display ctrlCreate ["BaxBackground", _idc]; _idc = _idc + 1;
            _respawnBackground ctrlSetPosition [
                _gridx * 34 + safeZoneX,
                _gridy * 1 + safeZoneY,
                _gridx * 6,
                _gridy * 2.65
            ];
            _respawnBackground ctrlCommit 0;

            _respawnPosition = _display ctrlCreate ["BaxElement", _idc]; _idc = _idc + 1;
            _respawnPosition ctrlSetText "(No Location Selected)";
            _respawnPosition ctrlSetPosition [
                _gridx * 34.25 + safeZoneX,
                _gridy * 1 + safeZoneY,
                _gridx * 5.5,
                _gridy * 0.8
            ];
            _respawnPosition ctrlCommit 0;

            _respawnTickets = _display ctrlCreate ["BaxElement", _idc]; _idc = _idc + 1;
            _respawnTickets ctrlSetText "Tickets: 0";
            _respawnTickets ctrlSetPosition [
                _gridx * 34.25 + safeZoneX,
                _gridy * 1.8 + safeZoneY,
                _gridx * 5.5,
                _gridy * 0.8
            ];
            _respawnTickets ctrlCommit 0;

            _respawnTimer = _display ctrlCreate ["BaxElement", _idc]; _idc = _idc + 1;
            _respawnTimer ctrlSetText "00:00";
            _respawnTimer ctrlSetPosition [
                _gridx * 34.25 + safeZoneX,
                _gridy * 2.6 + safeZoneY,
                _gridx * 5.5,
                _gridy * 0.8
            ];
            _respawnTimer ctrlCommit 0;

            // _ctrlGroupLoadout = _display ctrlCreate ["RscControlsGroupNoScrollbars", _idc]; _idc = _idc + 1;
            // _ctrlGroupLoadout ctrlSetPosition 
            // [
            //     safeZoneX,
            //     safeZoneY,
            //     safeZoneW,
            //     safeZoneH
            // ];
            // _ctrlGroupLoadout ctrlCommit 0;

            _loadoutTitle = _display ctrlCreate ["BaxTitle", _idc]; _idc = _idc + 1;
            _loadoutTitle ctrlSetText "Select Loadout (CTRL + D)";
            _loadoutTitle ctrlSetPosition [
                _gridx * 34 + safeZoneX,
                _gridy * 4 + safeZoneY,
                _gridx * 6,
                _gridy * 1
            ];
            _loadoutTitle ctrlCommit 0;

            _loadoutBackground = _display ctrlCreate ["BaxBackground", _idc]; _idc = _idc + 1;
            _loadoutBackground ctrlSetPosition [
                _gridx * 34 + safeZoneX,
                _gridy * 5 + safeZoneY,
                _gridx * 6,
                _gridy * 1.05
            ];
            _loadoutBackground ctrlCommit 0;

            _loadoutSelection = _display ctrlCreate ["BaxElement", _idc]; _idc = _idc + 1;
            _loadoutSelection ctrlSetText "(No Loadout Selected)";
            _loadoutSelection ctrlSetPosition [
                _gridx * 34.25 + safeZoneX,
                _gridy * 5 + safeZoneY,
                _gridx * 5.5,
                _gridy * 0.8
            ];
            _loadoutSelection ctrlCommit 0;
        };
    }
] call CBA_fnc_addEventHandler;
