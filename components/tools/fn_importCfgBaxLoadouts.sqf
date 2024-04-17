
#include "_toolsMacros.hpp"

_cfgBaxLoadouts = missionConfigFile >> "cfgBax" >> "loadouts";
_cfgBaxLoadoutsLoadouts = _cfgBaxLoadouts >> "loadouts";
_cfgBaxLoadoutsClasses = _cfgBaxLoadouts >> "classes";
_cfgBaxLoadoutsPresets = _cfgBaxLoadouts >> "presets";

{
	_side = _x;
	_sideName = _y;

	_loadoutRegistry = bax_loadouts_loadouts get _side;
	_cfgLoadoutsSide = _cfgBaxLoadoutsLoadouts >> _sideName;
	_cfgLoadouts = "true" configClasses _cfgLoadoutsSide;
	{
		_cfgLoadout = _x;
		
		_name = getText (_cfgLoadout >> "name");
		_loadoutArray = getArray (_cfgLoadout >> "loadoutArray");

		_loadoutRegistry set [_name,_loadoutArray];
	} forEach _cfgLoadouts;

	_classRegistry = bax_loadouts_classes get _side;
	_cfgClassesSide = _cfgBaxLoadoutsClasses >> _sideName;
	_cfgClasses = "true" configClasses _cfgClassesSide;
	{
		_cfgClass = _x;
		
		_name = getText (_cfgClass >> "name");
		_classArray = getArray (_cfgClass >> "classArray");

		_classRegistry set [_name,_classArray];
	} forEach _cfgClasses;
	
	_presetRegistry = bax_loadouts_presets get _side;
	_cfgPresetsSide = _cfgBaxLoadoutsPresets >> _sideName;
	_cfgPresets = "true" configClasses _cfgPresetsSide;
	{
		_cfgPreset = _x;
		
		_role = getText (_cfgPreset >> "role");
		_preset = getArray (_cfgPreset >> "preset");

		_presetRegistry set [_role,_preset];
	} forEach _cfgPresets;
} forEach (createHashMapFromArray [
	[west,"west"],
	[east,"east"],
	[resistance,"resistance"],
	[civilian,"civilian"]
]);
