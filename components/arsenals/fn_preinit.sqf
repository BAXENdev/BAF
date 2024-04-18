
#include "_arsenalMacros.hpp"

// Sub-HashMap: Key: Role | Value: [Item List...]
bax_arsenals_arsenalLists = createHashMapFromArray [
    [west,createHashMapFromArray [
            ["default", true]
        ]
    ],
    [east,createHashMapFromArray [
            ["default", true]
        ]
    ],
    [resistance,createHashMapFromArray [
            ["default", true]
        ]
    ],
    [civilian,createHashMapFromArray [
            ["default", true]
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
