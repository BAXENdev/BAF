
#include "_radiosMacros.hpp"

params ["_side","_groupName","_radioType","_radioChannel"];

_groupSideChannelList = bax_radios_groupRadios get _side;
_groupChannelList = _groupSideChannelList get _groupName;
if (isNil "_groupChannelList") then {
    _groupChannelList = [];
    _groupSideChannelList set [_groupName,_groupChannelList];
};
_groupChannelList pushBack [_radioType,_radioChannel];
