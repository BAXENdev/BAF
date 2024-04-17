
if (isNil "bax_mapMarkers_groupMarkerSize") then {
	bax_mapMarkers_groupMarkerSize = 32;
};
if (isNil "bax_mapMarkers_unitMarkerSize") then {
	bax_mapMarkers_unitMarkerSize = 32;
};
if (isNil "bax_mapMarkers_groupMarkerTransparency") then {
	bax_mapMarkers_groupMarkerTransparency = "Solid";
};

["bax_mapMarkers_groupMarkerSize",32] call bax_playerSettings_fnc_registerSetting;
