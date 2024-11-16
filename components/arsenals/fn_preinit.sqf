
#include "_arsenalsMacros.hpp"

// Sub-HashMap: Key: Role | Value: [Item List...]
bax_arsenals_arsenalLists = createHashMapFromArray [
    [west,createHashMapFromArray [
            [VARS_DEFAULT, true]
        ]
    ],
    [east,createHashMapFromArray [
            [VARS_DEFAULT, true]
        ]
    ],
    [resistance,createHashMapFromArray [
            [VARS_DEFAULT, true]
        ]
    ],
    [civilian,createHashMapFromArray [
            [VARS_DEFAULT, true]
        ]
    ]
];

// Sub-HashMap: Key: Side | Value: [Arsenal Objects...]
bax_arsenals_arsenalBoxes = createHashMapFromArray [
    [west,[]],
    [east,[]],
    [resistance,[]],
    [civilian,[]]
];

bax_arsenals_enableLoadoutFilter = CFGBAX_BOOL("enableLoadoutFilter");

["ace_arsenal_displayClosed",{

    [] spawn {
        _loadout = getUnitLoadout player;
        _loadout = [_loadout] call acre_api_fnc_filterUnitLoadout;
        
        // TODO: Incident where a black combat backpack would not be respawned with even though it was set in respawn loadout?
        // Instead a MTP back with nothing in it had replaced it? How? Why? Was it something client side?
        if (bax_arsenals_enableLoadoutFilter) then {
            _side = side group player;
            _role = [player] call bax_common_fnc_getUnitRole;
            _filterItems = [];

            _loadoutArray = bax_loadouts_loadouts get _side get _role;
            if !(isNil "_loadoutArray") then {
                _filterItems append ((flatten _loadoutArray) select { _x isEqualType "" });
            };

            _arsenalRole = player getVariable [VARS_ARSENAL_ROLE, ""];
            _arsenalItems = bax_arsenals_arsenalLists get _side get _arsenalRole;
            if !(isNil "_arsenalItems") then {
                if (_arsenalItems isEqualType true) then {
                    if (_arsenalItems) then {
                        // do nothing
                    } else {
                        _loadout = [_loadout, _filterItems] call bax_arsenals_fnc_filterLoadout;
                    };
                } else {
                    _filterItems append _arsenalItems;
                    _loadout = [_loadout, _filterItems] call bax_arsenals_fnc_filterLoadout;
                };
            };
        };

        #ifdef DO_DEBUG
        _msg = format ["Set player (%1) respawn loadout: %2", name player, _loadout];
        #endif
        player setVariable [VAR_RESPAWN, _loadout, true];
    };
}] call CBA_fnc_addEventHandler;

[EVENT_LOADOUT_UPDATED, {
    params ["_role"];

    [_role] call bax_arsenals_fnc_initArsenals;
}] call CBA_fnc_addEventHandler;
