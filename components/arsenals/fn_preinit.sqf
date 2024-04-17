
#include "_arsenalMacros.hpp"

bax_arsenals_arsenalBox = objNull;

// Sub-HashMap: Key: Role | Value: [Item List...]
bax_arsenals_arsenals = createHashMapFromArray [
    [west,createHashMap],
    [east,createHashMap],
    [resistance,createHashMap],
    [civilian,createHashMap]
];

// Sub-HashMap: Key: Side | Value: [Arsenal Objects...]
bax_arsenals_arsenalProxies = createHashMapFromArray [
    [west,[]],
    [east,[]],
    [resistance,[]],
    [civilian,[]]
];
