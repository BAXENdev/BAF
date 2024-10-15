
class RscDiary {
    BAX_GroupMarkers = "((_this select 0) displayCtrl 51) ctrlAddEventHandler ['Draw','_this call BAX_MAPMARKERS_fnc_drawGroupMarkers'];";
    BAX_UnitMarkers = "((_this select 0) displayCtrl 51) ctrlAddEventHandler ['Draw','_this call BAX_MAPMARKERS_fnc_drawUnitMarkersMap'];";
};

// IDD: 311 | IDC: 101
// TODO: Cant add it the regular way?
class RscCustomInfoMiniMap {
    BAX_GroupMarkers = "((_this select 0) displayCtrl 101) ctrlAddEventHandler ['Draw','_this call BAX_MAPMARKERS_fnc_drawGroupMarkers'];";
    BAX_UnitMarkers = "((_this select 0) displayCtrl 101) ctrlAddEventHandler ['Draw','_this call BAX_MAPMARKERS_fnc_drawUnitMarkersGPS'];";
};
