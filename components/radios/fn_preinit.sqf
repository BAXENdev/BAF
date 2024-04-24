
#include "_radiosMacros.hpp"

// Radio array elements: [Radio Type, Channel Number]

bax_radios_sideRadios = createHashMapFromArray [
    [west,[]],
    [east,[]],
    [independent,[]],
    [civilian,[]]
];

bax_radios_groupRadios = createHashMapFromArray [
    [west,[]],
    [east,[]],
    [independent,[]],
    [civilian,[]]
];

bax_radios_roleRadios = createHashMapFromArray [
    [west,[]],
    [east,[]],
    [independent,[]],
    [civilian,[]]
];

// bax_radios_radioPresets = createHashMapFromArray [
//     ["ACRE_PRC343",createHashMap],
//     ["ACRE_PRC148",createHashMap],
//     ["ACRE_PRC152",createHashMap],
//     ["ACRE_PRC117F",createHashMap],
//     ["ACRE_BF888S",createHashMap]
// ];

bax_radios_channelNames = createHashMapFromArray [
    [west,[]],
    [east,[]],
    [independent,[]],
    [civilian,[]]
];

// 1: [Channel Name, [Side: bool, [Group Names], [Role Names]]
