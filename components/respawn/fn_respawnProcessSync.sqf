
#include "_respawnMacros.hpp"

params ["_bluforTickets","_opforTickets","_indforTickets","_civilianTickets","_respawnDisabled"];

bax_respawn_bluforTickets = _bluforTickets;
bax_respawn_opforTickets = _opforTickets;
bax_respawn_indforTickets = _indforTickets;
bax_respawn_civilianTickets = _civilianTickets;

if (_respawnDisabled) then {
	player setDamage [1, false];
};
