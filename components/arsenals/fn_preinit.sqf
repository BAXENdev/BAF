
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

["ace_arsenal_displayClosed",{
    _loadout = getUnitLoadout player;
    _loadout = [_loadout] call acre_api_fnc_filterUnitLoadout;
    player setVariable [VAR_RESPAWN,_loadout,true];
}] call CBA_fnc_addEventHandler;
