
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

bax_radios_radioPresets = createHashMapFromArray [
    ["ACRE_PRC343",createHashMap],
    ["ACRE_PRC148",createHashMap],
    ["ACRE_PRC152",createHashMap],
    ["ACRE_PRC117F",createHashMap],
    ["ACRE_PRC77",createHashMap],
    ["ACRE_PRCSEM52SL",createHashMap], // TODO: Are there any attributes?
    ["ACRE_PRCSEM70",createHashMap], // TODO: Are there any attributes?
    ["ACRE_BF888S",createHashMap] // TODO: Are there any attributes?
];

bax_radios_babelLanguages = createHashMapFromArray [
    [west,[]],
    [east,[]],
    [independent,[]],
    [civilian,[]]
];
