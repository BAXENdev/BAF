
#include "..\..\userConfig\description\corpseAndWreckManager.hpp"

#ifdef CORPSE_MANAGER_ENABLED
corpseManagerMode = 0;
#else
corpseManagerMode = 1;
#endif

#ifdef WRECK_MANAGER_ENABLED
wreckManagerMode = 0;
#else
wreckManagerMode = 1;
#endif
