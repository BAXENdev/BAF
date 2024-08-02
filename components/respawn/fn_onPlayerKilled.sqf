
#include "_respawnMacros.hpp"

_side = side group player;
_delay = switch (_side) do {
	case west: { BLUFOR_DELAY };
	case east: { OPFOR_DELAY };
	case independent: { INDFOR_DELAY };
	case civilian: { CIVILIAN_DELAY };
};
bax_respawn_respawnTime = serverTime + _delay;
bax_respawn_respawnAutospawn = false;
bax_respawn_respawnStatusError = "";

[[_side], []] call ace_spectator_fnc_updateSides;

// TODO: Load wave spawn delay if needed

