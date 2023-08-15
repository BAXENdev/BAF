
_code1 = {

	params ["_posASL","_object"];
	if (isNull _object or {isPlayer _object}) exitWith { [objNull, "Placed module on object"] call BIS_fnc_showCuratorFeedbackMessage; };

	// TODO: Add section to select an object in case no object was selected

	_code2 = {
		params ["_dialogValues","_arguments"];
	};

	_actionNameEditBox = [
		"EDIT",
		["Action Name","The name of the interaction in menu."],
		[
			"",
			{ param["_inputText"]; _inputText; }
		],
		false
	];

	_titleEditBox = [
		"EDIT",
		"Title",
		[
			"",
			{ param["_inputText"]; _inputText; }
		],
		false
	];

	_textBox = [
		"EDIT:MULTI",
		"Text",
		[
			"",
			{ param["_inputText"]; _inputText; },
			5
		],
		false
	];

	_giveToolBox = [
		// 0) Content Type
		// TOOLBOX:WIDE is a wider variant
		// TOOLBOX:YESNO has two options and return bool
		// TOOLBOX:ENABLED has two options and return bool
		// For TOOLBOX:YESNO and TOOLBOX:ENABLED, you only specify the default option for arguments
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
			["NONE","ACTION", "OBJECT"],
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
		[_actionNameEditBox,_titleEditBox,_textBox,_giveToolBox,_deleteToolBox,_typeToolBox],
		_code2,
		{},
		[]
	] call zen_dialog_fnc_create;
};

[
	"[BAF] UTILITIES",
	"Create Intel",
	_code1
] call zen_custom_modules_fnc_register;
