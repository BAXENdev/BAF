
#include "_supplyCratesMacros.hpp"

// Sub-hashmap: key: string name | value: array of [ITEM CLASS, AMOUNT]
bax_supplyCrates_crates = createHashMapFromArray [
	[west,createHashMap],
	[east,createHashMap],
	[resistance,createHashMap],
	[civilian,createHashMap]
];
