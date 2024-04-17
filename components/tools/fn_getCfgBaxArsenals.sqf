
#include "_toolsMacros.hpp"

_cfgBaxLoadouts = "";
_cfgBaxClasses = "";
_cfgBaxPresets = "";

{
	_side = _x;
	_sideName = _y;

	_cfgBaxLoadoutSide = "";
	_cfgBaxClassSide = "";
	_cfgBaxPresetSide = "";

	_loadoutRegistry = bax_loadouts_loadouts get _side;
	{
		_loadoutName = _x;
		_loadoutArray = _y;
		
		_cfgBaxLoadoutSide = _cfgBaxLoadoutSide +
			"      class loadout" + (str _forEachIndex) + " {" + endl +
			"        name = " + (str _loadoutName) + ";" + endl +
			"        loadoutArray[] = " + ([_loadoutArray] call bax_tools_fnc_arrayToconfig) + ";" + endl +
			"      };" + endl;
	} forEach _loadoutRegistry;

	_sideClasses = bax_loadouts_classes get _side;
	{
		_className = _x;
		_classLoadouts = _y;

		_cfgBaxClassSide = _cfgBaxClassSide + 
			"      class class" + (str _forEachIndex) + " {" + endl +
			"        name = " + (str _className) + ";" + endl +
			"        classArray[] = " + ([_classLoadouts] call bax_tools_fnc_arrayToconfig) + ";" + endl +
			"      };" + endl;
	} forEach _sideClasses;

	_sidePresets = bax_loadouts_presets get _side;
	{
		_presetName = _x;
		_preset = _y;

		_cfgBaxPresetSide = _cfgBaxPresetSide + 
			"      class preset" + (str _forEachIndex) + " {" + endl +
			"        role = " + (str _presetName) + ";" + endl +
			"        preset[] = " + ([_preset] call bax_tools_fnc_arrayToconfig) + ";" + endl +
			"      };" + endl;
	} forEach _sidePresets;

	_cfgBaxLoadouts = _cfgBaxLoadouts + 
		"    class " + _sideName + " {" + endl +
			_cfgBaxLoadoutSide +
		"    };" + endl;
	
	_cfgBaxClasses = _cfgBaxClasses +
		"    class " + _sideName + " {" + endl +
			_cfgBaxClassSide +
		"    };" + endl;

	_cfgBaxPresets = _cfgBaxPresets +
		"    class " + _sideName + " {" + endl +
			_cfgBaxPresetSide +
		"    };" + endl;

} forEach (createHashMapFromArray [
	// side for hashmaps
	// side names for config names (different from `str _side`)
	[west,"west"],
	[east,"east"],
	[resistance,"resistance"],
	[civilian,"civilian"]
]);

// create loadout config
_cfgBaxLoadoutComponent = 
"class loadouts {" + endl + 
"  class loadouts {" + endl +
	_cfgBaxLoadouts +
"  };" + endl +
"  class classes {" + endl +
	_cfgBaxClasses +
"  };" + endl +
"  class presets {" + endl +
	_cfgBaxPresets +
"  };" + endl +
"};" + endl;

// return
_cfgBaxLoadoutComponent;
