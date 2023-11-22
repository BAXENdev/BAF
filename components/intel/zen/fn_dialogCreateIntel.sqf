
params ["_posASL","_object"];

// TODO: Add section to select an object in case no object was selected
// List of items
// ComboBox
// Pass object as optional to code2

_code = {
	params ["_dialogValues","_arguments"];
	_dialogValues params ["_title","_text","_actionName","_giveToEveryone","_deleteOnGive","_actionType",["_objectName",""]];
	_arguments params ["_posASL","_moduleObject"];

	if (_moduleObject isEqualTo objNull) then {
		_moduleObject = _objectName createVehicle (ASLToATL _posASL);
		// TODO: Make object not take damage and disable simulation
	};

	[_moduleObject,_text,_title,_actionName,_giveToEveryone,_deleteOnGive,_actionType] remoteExec ["BAX_fnc_createIntel"]; 
};

_titleEditBox = [
	"EDIT",
	"Title",
	[
		"",
		{ params ["_inputText"]; _inputText; }
	],
	false
];

_textBox = [
	"EDIT:MULTI",
	"Text",
	[
		"",
		{ params ["_inputText"]; _inputText; },
		5
	],
	false
];

_actionNameEditBox = [
	"EDIT",
	["Action Name","The name of the interaction in menu."],
	[
		"",
		{ params ["_inputText"]; _inputText; }
	],
	false
];

_giveToolBox = [
	"TOOLBOX:YESNO",
	"Give Intel To Everyone", // or  ["Title", "Tooltip"],
	[
		true
	],
	false
];

_deleteToolBox = [
	"TOOLBOX",
	["Delete When Intel is Collected","NONE = Do Nothing | ACTION = Remove action from the object | OBJECT = Delete the object"],
	[
		"OBJECT",
		1,
		3,
		["NONE","ACTION","OBJECT"],
	],
	true
];

_typeToolBox = [
	"TOOLBOX",
	"ACE Interact Action OR Vanilla Action",
	[
		"ACE",
		1,
		2,
		["ACE","VANILLA"],
	],
	false
];

[
	"Create Intel",
	[_titleEditBox,_textBox,_actionNameEditBox,_giveToolBox,_deleteToolBox,_typeToolBox],
	_code,
	{},
	[_posASL,_object]
] call zen_dialog_fnc_create;
