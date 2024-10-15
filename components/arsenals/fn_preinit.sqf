
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

        player setVariable [VAR_RESPAWN, _loadout, true];
    };
}] call CBA_fnc_addEventHandler;

[EVENT_LOADOUT_UPDATED, {
    params ["_role"];

    [_role] call bax_arsenals_fnc_initArsenals;
}] call CBA_fnc_addEventHandler;
