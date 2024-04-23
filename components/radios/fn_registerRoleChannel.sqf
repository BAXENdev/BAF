
#include "_radiosMacros.hpp"

params ["_side","_roleName","_radioType","_radioChannel"];

_roleSideChannelList = bax_radios_roleRadios get _side;
_roleChannelList = _roleSideChannelList get _roleName;
if (isNil "_roleChannelList") then {
    _roleChannelList = [];
    _roleSideChannelList set [_roleName,_roleChannelList];
};
_roleChannelList pushBack [_radioType,_radioChannel];
