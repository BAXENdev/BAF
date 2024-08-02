
#include "_respawnMacros.hpp"

params ["_player"];

[
	bax_respawn_bluforTickets,
	bax_respawn_opforTickets,
	bax_respawn_indforTickets,
	bax_respawn_civilianTickets,
	bax_respawn_respawnDisabled
] remoteExec ["bax_respawn_fnc_respawnProcessSync", _player];
