
#include "macro.hpp"

_t = 1;
switch (_t) do {

	case "A": { diag_log "T1" };
	case []: { diag_log "T2" };
	case [1]: { diag_log "T3" };
	case 1: { diag_log "T4" };
	case 2: { diag_log "T5" };

}
