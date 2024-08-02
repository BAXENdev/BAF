
#include "_radiosMacros.hpp"

if !(hasInterface) exitWith {};

_side = side group player;
_groupName = groupId group player;

_channelPreset = EMPTY_CHANNEL_PRESET;

_sideChannelPreset = bax_radios_sideRadios get _side;
{
    _x params ["_radioType","_radioChannel"];
    
    _radioChannels = _channelPreset get _radioType;
    _radioChannels pushBack _radioChannel;
} forEach _sideChannelPreset;

_groupSideChannelPreset = bax_radios_groupRadios get _side;
_groupChannelPreset = _groupSideChannelPreset get _groupName;
if !(isNil "_groupChannelPreset") then {
    {
        _x params ["_radioType","_radioChannel"];
        
        _radioChannels = _channelPreset get _radioType;
        _radioChannels pushBack _radioChannel;
    } forEach _groupChannelPreset;
};

if (isMultiplayer) then {
    _role = roleDescription player;

    _roleSideChannelPreset = bax_radios_roleRadios get _side;
    _roleChannelPreset = _roleSideChannelPreset get _role;
    if !(isNil "_roleChannelPreset") then {
        {
            _x params ["_radioType","_radioChannel"];
            
            _radioChannels = _channelPreset get _radioType;
            _radioChannels pushBack _radioChannel;
        } forEach _roleChannelPreset;
    };
};

player setVariable [VARS_CHANNEL_PRESET,_channelPreset];
