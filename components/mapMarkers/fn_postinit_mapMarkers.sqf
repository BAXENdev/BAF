
t1 = (findDisplay 12 displayCtrl 51) ctrlAddEventHandler [
	"Draw",
	"_this call BAX_MAPMARKERS_fnc_drawMarkersGroups"
];
t2 = (findDisplay 12 displayCtrl 51) ctrlAddEventHandler [
	"Draw",
	"_this call BAX_MAPMARKERS_fnc_drawMarkersUnits"
];

// t3 = (findDisplay 331 displayCtrl 101) ctrlAddEventHandler [
// 	"Draw",
// 	"_this call BAX_MAPMARKERS_fnc_drawMarkersGroups"
// ];
// t4 = (findDisplay 331 displayCtrl 101) ctrlAddEventHandler [
// 	"Draw",
// 	"_this call BAX_MAPMARKERS_fnc_drawMarkersUnits"
// ];
