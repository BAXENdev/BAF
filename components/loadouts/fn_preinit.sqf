
#include "_loadoutsMacros.hpp"

// Sub-HashMap: Key: Loadout Name | Value: Loadout array
bax_loadouts_loadouts = createHashMapFromArray [
	[west,createHashMap],
	[east,createHashMap],
	[resistance,createHashMap],
	[civilian,createHashMap]
];

bax_loadouts_defaultLoadout = createHashMapFromArray [
	[west,""],
	[east,""],
	[resistance,""],
	[civilian,""]
];

// TODO: Create diary record menu for selecting loadouts in briefing
// - Create records for each loadout on preinit or something
// - Each record lists the loadout's items and traits
// - Delete records on mission load
// - Test in BAX_INIT what initializes before and after briefing (player units init before...)
// - need a init after to delete entire subject
