
#include "_loadoutsMacros.hpp"

// Sub-HashMap: Key: Loadout Name | Value: Loadout array
bax_loadouts_loadouts = createHashMapFromArray [
	[west,createHashMap],
	[east,createHashMap],
	[resistance,createHashMap],
	[civilian,createHashMap]
];