
// root getBaxConfig function

_components = [];
_components pushBack ([] call bax_config_fnc_getLoadoutConfig); // returns a string of configs

_cfgBaxComponents = _components joinString endl;
_cfgBaxConfig = "class cfgbax {" + endl + _cfgBaxComponents + endl + "};";


// getLoadoutConfig function

#define Q(VAR) """" + VAR + """"

bax_loadouts_loadouts; // loadouts variable
bax_loadouts_classes; // classes variable
bax_loadouts_presets; // presets variable

_cfgBaxLoadouts = "";
_cfgBaxClasses = "";
_cfgBaxPresets = "";

_fnc_arrayToConfig = {
	params ["_array"];
	"{" + ((_array apply {
		if (_x isEqualType "") then {
			str _x
		} else {
			if (_x isEqualType 0) then {
				str _x;
			} else {
				[_x] call _fnc_arrayToConfig;
			};
		};
	}) joinString ",") + "}";
};

{
	_side = _x;
	_sideName = _y;

	_cfgBaxLoadoutSide = "";
	_cfgBaxClassSide = "";
	_cfgBaxPresetSide = "";

	_sideLoadouts = bax_loadouts_loadouts get _side;
	{
		_loadoutName = _x;
		_loadoutArray = _y;
		
		_cfgBaxLoadoutSide = _cfgBaxLoadoutSide +
			"class loadout" + (str _forEachIndex) + " {" + endl +
				"name = " + (str _loadoutName) + ";" + endl +
				"loadoutArray[] = " + ([_loadoutArray] call _fnc_arrayToconfig) + ";" + endl +
			"};" + endl;
	} forEach _sideLoadouts;

	_sideClasses = bax_loadouts_classes get _side;
	{
		_className = _x;
		_classLoadouts = _y;

		_cfgBaxClassSide = _cfgBaxClassSide + 
			"class class" + (str _forEachIndex) + " {" + endl +
				"name = " + (str _className) + ";" + endl +
				"classArray[] = " + ([_classLoadouts] call _fnc_arrayToconfig) + ";" + endl +
			"};" + endl;
	} forEach _sideClasses;

	_sidePresets = bax_loadouts_presets get _side;
	{
		_presetName = _x;
		_preset = _y;

		_cfgBaxPresetSide = _cfgBaxPresetSide + 
			"class preset" + (str _forEachIndex) + " {" + endl +
				"role = " + (str _className) + ";" + endl +
				"preset[] = " + ([_preset] call _fnc_arrayToConfig) + ";" + endl +
			"};" + endl;
	} forEach _sideClasses;

	_cfgBaxLoadouts = _cfgBaxLoadouts + 
		"class " + _sideName + " {" + endl +
			_cfgBaxLoadoutSide +
		"};" + endl;
	
	_cfgBaxClasses = _cfgBaxClasses +
		"class " + _sideName + " {" + endl +
			_cfgBaxClassSide +
		"};" + endl;

	_cfgBaxPresets = _cfgBaxPresets +
		"class " + _sideName + " {" + endl +
			_cfgBaxPresetSide +
		"};" + endl;

} forEach (createHashMapFromArray [
	// side for hashmaps
	// side names for config names (different from `str _side`)
	[west,"west"],
	[east,"east"],
	[resistance,"resistance"],
	[civilian,"civilian"]
]);

// create loadout config
_cfgBaxLoadoutComponent = "class loadouts {" + endl + 
	"class loadouts {" + endl + _cfgBaxLoadouts + "};" + endl +
	"class classes {" + endl + _cfgBaxLoadouts + "};" + endl +
	"class loadouts {" + endl + _cfgBaxLoadouts + "};" + endl +
"};" + endl;

// return
_cfgBaxLoadoutComponent;
