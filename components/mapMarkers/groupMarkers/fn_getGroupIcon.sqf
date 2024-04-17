
#include "..\_mapMarkersMacros.hpp"

params ["_group"];

_texture = _group getVariable [MARKER_TEXTURE,""];

if (fileExists _texture) exitWith {
    _firstChar = _texture select [0,1];
    _texture = if (_firstChar isEqualTo "\") then {
        _texture
    } else {
        getMissionPath _texture
    };
    // return
    _texture
};

_side = side _group;

// TODO: Add civilian is condition for civilian icon

_textureRegistry = bax_mapMarkers_icons get bax_mapMarkers_groupMarkerTransparency get _side;
_texture = _textureRegistry get _texture;
if (!isNil "_texture") exitWith {
    // return
    _texture
};

_units = units _group;
_firstAliveIndex = _units findIf { alive _x };
if (_firstAlive == -1) exitWith {
    // Return
    bax_mapMarkers_icons get bax_mapMarkers_groupMarkerTransparency get _side get "INFANTRY";
};

_leader = _units select _firstAliveIndex;
_objParent = objectParent _leader;

if !(isNull _objParent) exitWith {
    _objType = _objParent call BIS_fnc_objectType;
    _objType params ["_category","_type"];
    
    if (_category isEqualTo "VehicleAutonomous") exitWith {
        // Return
        GET_GROUP_ICON(_side,"UAV");
    };

    if (_type isEqualTo "Car") exitWith {
        // Return
        GET_GROUP_ICON(_side,"MOTORIZEDINFANTRY");
    };

    if (_type in ["Tank","TrackedAPC","WheeledAPC"]) exitWith {
        // Return
        GET_GROUP_ICON(_side,"ARMOR");
    };

    if (_type isEqualTo "Plane") exitWith {
        // Return
        GET_GROUP_ICON(_side,"PLANE");
    };

    if (_type isEqualTo "Helicopter") exitWith {
        // Return
        GET_GROUP_ICON(_side,"AIR");
    };

    if (_type isEqualTo "Boat") exitWith {
        // Return
        GET_GROUP_ICON(_side,"NAVAL");
    };

    // Return Default
    GET_GROUP_ICON(_side,"INFANTRY");
};

// Return Default
GET_GROUP_ICON(_side,"INFANTRY");
