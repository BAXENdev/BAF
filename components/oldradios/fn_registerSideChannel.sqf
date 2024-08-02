
#include "_radiosMacros.hpp"

params ["_side","_radioType","_radioChannel"];

_sideChannelList = bax_radios_sideRadios get _side;
_sideChannelList pushBack [_radioType,_radioChannel];
