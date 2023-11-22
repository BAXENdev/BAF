
#include "..\..\..\macros\loadoutMacros.hpp"

// gearType: 0: bandages | 1: splint | 2: injectors | 3: Sutures | 4: blood | 5: plasma | 6: saline
params ["_factionID","_newWhitelistItems","_newBlacklistItems"];

_sideArsenal = GETVARM(VARS_FACTION_ARSENAL(_factionID),nil);
_whitelistItems = _sideArsenal select 0;
_blacklistItems = _sideArsenal select 1;
_whitelistItems append _newWhitelistItems;
_blacklistItems append _newBlacklistItems;
