
#include "_respawnVanillaMacros.hpp"

params ["_newUnit", "_oldUnit", "_respawn", "_respawnDelay"];

_side = side group player;
_respawnDelay = switch (_side) do {
	case west: { bax_respawnVanilla_bluforRespawnDelay };
	case east: { bax_respawnVanilla_opforRespawnDelay };
	case independent: { bax_respawnVanilla_indforRespawnDelay };
	case civilian: { bax_respawnVanilla_civilianRespawnDelay };
};
setPlayerRespawnTime _respawnDelay;

// TODO: Put player into spectator if tickets are out
// TODO: Hint that tickets have ran out
