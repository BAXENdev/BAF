
#include "_arsenalMacros.hpp"

params ["_side","_object"];

_arsenalProxies = bax_arsenals_arsenalProxies get _side;
_arsenalProxies pushBack _object;
