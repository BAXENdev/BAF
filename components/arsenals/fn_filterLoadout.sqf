
#include "_arsenalsMacros.hpp"

params ["_loadout", "_validItems"];

// Array copy the loadout so as to not affect the original
_loadout = +_loadout;

// Check weapons x3
// Check attachments x4
// Check gear x3
// Check inventories
// Checklinked items

_primaryArray = _loadout select 0;
if !(_primaryArray isEqualTo []) then {
	_primaryClass = _primaryArray select 0;
	if (_primaryClass in _validItems) then {
		_muzzle = _primaryArray select 1;
		if !(_muzzle in _validItems) then {
			_primaryArray set [1, ""];
		};

		_attachment = _primaryArray select 2;
		if !(_attachment in _validItems) then {
			_primaryArray set [2, ""];
		};

		_sight = _primaryArray select 3;
		if !(_sight in _validItems) then {
			_primaryArray set [3, ""];
		};
		
		_magArray = _primaryArray select 4;
		if !((_magArray select 0) in _validItems) then {
			_primaryArray set [4, []];
		};

		_uglMagArray = _primaryArray select 5;
		if !((_uglMagArray select 0) in _validItems) then {
			_primaryArray set [5, []];
		};

		_bipod = _primaryArray select 6;
		if !(_bipod in _validItems) then {
			_primaryArray set [6, ""];
		};
	} else {
		_loadout set [0, []];
	};
};

_launcherArray = _loadout select 1;
if !(_launcherArray isEqualTo []) then {
	_launcherClass = _launcherArray select 0;
	if (_launcherClass in _validItems) then {
		_muzzle = _launcherArray select 1;
		if !(_muzzle in _validItems) then {
			_launcherArray set [1, ""];
		};

		_attachment = _launcherArray select 2;
		if !(_attachment in _validItems) then {
			_launcherArray set [2, ""];
		};

		_sight = _launcherArray select 3;
		if !(_sight in _validItems) then {
			_launcherArray set [3, ""];
		};
		
		_magArray = _launcherArray select 4;
		if !((_magArray select 0) in _validItems) then {
			_launcherArray set [4, []];
		};

		_uglMagArray = _launcherArray select 5;
		if !((_uglMagArray select 0) in _validItems) then {
			_launcherArray set [5, []];
		};

		_bipod = _launcherArray select 6;
		if !(_bipod in _validItems) then {
			_launcherArray set [6, ""];
		};
	} else {
		_loadout set [1, []];
	};
};

_secondaryArray = _loadout select 2;
if !(_secondaryArray isEqualTo []) then {
	_secondaryClass = _secondaryArray select 0;
	if (_secondaryClass in _validItems) then {
		_muzzle = _secondaryArray select 1;
		if !(_muzzle in _validItems) then {
			_secondaryArray set [1, ""];
		};

		_attachment = _secondaryArray select 2;
		if !(_attachment in _validItems) then {
			_secondaryArray set [2, ""];
		};

		_sight = _secondaryArray select 3;
		if !(_sight in _validItems) then {
			_secondaryArray set [3, ""];
		};
		
		_magArray = _secondaryArray select 4;
		if !((_magArray select 0) in _validItems) then {
			_secondaryArray set [4, []];
		};

		_uglMagArray = _secondaryArray select 5;
		if !((_uglMagArray select 0) in _validItems) then {
			_secondaryArray set [5, []];
		};

		_bipod = _secondaryArray select 6;
		if !(_bipod in _validItems) then {
			_secondaryArray set [6, ""];
		};
	} else {
		_loadout set [2, []];
	};
};

_uniformArray = _loadout select 3;
if !(_uniformArray isEqualTo []) then {
	_uniformClass = _uniformArray select 0;
	_uniformInventory = _uniformArray select 1;
	if (_uniformClass in _validItems) then {
		{
			_itemArray = _x;
			_itemClass = _itemArray select 0;
			if !(_itemClass in _validItems) then {
				_uniformInventory deleteAt _forEachIndex;
			};
		} forEachReversed _uniformInventory;
	} else {
		_loadout set [3, []];
	};
};

_vestArray = _loadout select 4;
if !(_vestArray isEqualTo []) then {
	_vestClass = _vestArray select 0;
	_vestInventory = _vestArray select 1;
	if (_vestClass in _validItems) then {
		{
			_itemArray = _x;
			_itemClass = _itemArray select 0;
			if !(_itemClass in _validItems) then {
				_vestInventory deleteAt _forEachIndex;
			};
		} forEachReversed _vestInventory;
	} else {
		_loadout set [4, []];
	};
};

_backpackArray = _loadout select 5;
if !(_backpackArray isEqualTo []) then {
	_backpackClass = _backpackArray select 0;
	_backpackInventory = _backpackArray select 1;
	if (_backpackClass in _validItems) then {
		{
			_itemArray = _x;
			_itemClass = _itemArray select 0;
			if !(_itemClass in _validItems) then {
				_backpackInventory deleteAt _forEachIndex;
			};
		} forEachReversed _backpackInventory;
	} else {
		_loadout set [5, []];
	};
};

_helmetClass = _loadout select 6;
if (!(_helmetClass isEqualTo "") and { _helmetClass in _validItems }) then {
	_loadout set [6, ""];
};

_maskClass = _loadout select 7;
if (!(_maskClass isEqualTo "") and { _maskClass in _validItems }) then {
	_loadout set [7, ""];
};

_binoArray = _loadout select 8;
if !((_binoArray select 0) in _validItems) then {
	_loadout set [8, []];
};

_utilityArray = _loadout select 9;
{
	_item = _x;
	if (!(_item isEqualTo "") and { _item in _validItems }) then {
		_utilityArray set [_forEachIndex, ""];
	};
} forEach _utilityArray;

// return
_loadout;
