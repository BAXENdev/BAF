// https://zen-mod.github.io/ZEN/#/frameworks/dynamic_dialog?id=creating-a-dialog

// Returns: BOOL
_checkBox = [
	// 0) Content Type
	"CHECKBOX",

	// 1) Display Name and Tooltip
	"Title", // or  ["Title", "Tooltip"],

	// 2) Control Specific Arguments - Default Control State
	true, // or false,

	// 3) Force Default, default: false
	true
];

// Returns: COLOR ARRAY
_color = [
	// 0) Content Type
	"COLOR",

	// 1) Display Name and Tooltip
	"Title", // or  ["Title", "Tooltip"],

	// 2) Control Specific Arguments - Default  Color Array
	[1, 1, 1], // Or [1, 1, 1, 1],

	// 3) Force Default, default: false
	true
];

// Returns: ANY
_comboBox = [
	// 0) Content Type
	// This is a drop down list
	"COMBO",

	// 1) Display Name and Tooltip
	"Title", // or  ["Title", "Tooltip"],

	// 2) Control Specific Arguments
	[
		// 0) Values to be returned
		[1,2],

		// 1) Pretty Names for Corresponding Return Value
		// Pretty Names can be a list of strings or a list complex data 
		[
			"Display Name One", 
			[
				// 0) Display
				"Display Name Two",
				
				// 1) Tooltip
				"Tooltop",

				// 2) Picture
				"\path\to\image.paa", // TODO: Verify this string value needs to be a path
			
				// 3) Text Color RGBA
				[1, 1, 1, 1]
			]
		],

		// 2) Default Index
		0 // TODO: Determine if its 0 index
	],

	// 3) Force Default, default: false
	true
];

// Returns: STRING
_editBox = [
	// 0) Content Type
	// Alternative Types: EDIT:MULTI & EDIT:CODE
	// EDIT is single line and EDIT:MULTI (EDIT:CODE) is multiline
	// EDIT:CODE performs code autocompletion
	"EDIT",

	// 1) Display Name and Tooltip
	"Title", // or  ["Title", "Tooltip"],

	// 2) Control Specific Arguments
	[
		// 0) Default Text
		"Enter Text Here",

		// 1) Sanitizing Function, Code Function that accepts a string and returns a string
		{ params ["_inputText"]; _inputText; },

		// 2) Box Height in line count, only available for EDIT:MULTI & EDIT:CODE
		5
	],

	// 3) Force Default, default: false
	true
];

// Returns: 
_list = [
	// 0) Content Type
	"LIST",

	// 1) Display Name and Tooltip
	"Title", // or  ["Title", "Tooltip"],

	// 2) Control Specific Arguments
	[
		// 0) Values to be returned
		[1,2],

		// 1) Pretty Names for Corresponding Return Value
		// Pretty Names can be a list of strings or a list complex data 
		[
			"Display Name One", 
			[
				// 0) Display
				"Display Name Two",
				
				// 1) Tooltip
				"Tooltop",

				// 2) Picture
				"\path\to\image.paa", // TODO: Verify this string value needs to be a path
			
				// 3) Text Color RGBA
				[1, 1, 1, 1]
			]
		],

		// 2) Default Index
		0, // TODO: Determine if its 0 index

		// 3) List Height
		5
	],

	// 3) Force Default, default: false
	true
];

// Returns: ARRAY of Selection
// TODO: Determine inputs and outputs of OWNERS
// Believed Return Array: [ [SIDE LIST], [GROUP LIST], [PLAYER LIST] ]
_owners = [
	// 0) Content Type
	"OWNERS",

	// 1) Display Name and Tooltip
	"Title", // or  ["Title", "Tooltip"],

	// 2) Control Specific Arguments
	[
		// 0) Selected Sides
		[east, west, independent, civilian],

		// 1) Selected Groups
		allGroups, // or [group1, group2, group3]

		// 2) Selected Players
		allPlayers, // or [player1, player2, player3]

		// 3) Default tab, 0: Side, 1: Group, 2: Players
		0 
	],

	// 3) Force Default, default: false
	true
];

// Returns : SIDE
_sides = [
	// 0) Content Type
	"SIDES",

	// 1) Display Name and Tooltip
	"Title", // or  ["Title", "Tooltip"],

	// 2) Control Specific Arguments - Side Variable
	west, // west, east, independent, civilian

	// 3) Force Default, default: false
	true
];

// Returns: NUMBER
_slider = [
	// 0) Content Type
	// SLIDER:PERCENT takes the value, multiplies by 100, and appends a % sign
	// SLIDER:RADIUS draws a circle on the map
	"SLIDER",

	// 1) Display Name and Tooltip
	"Title", // or  ["Title", "Tooltip"],

	// 2) Control Specific Arguments
	[
		// 0) Minimum Value
		0,

		// 1) Maximum Value
		1,

		// 2) Default Value
		0.5,

		// 3) Formatting, NUMBER or CODE. 
		// Number represents number of decimals (0, 1, 2)
		// Code formats a number passed as argument, and returns it as string
		2, // or { param["_number"]; str _number; }

		// 4) Radius Center, OBJECT or ARRAY (AGL Position)
		// https://community.bistudio.com/wiki/ASLToAGL
		[0, 0, 0],

		// 5) Radius Color RGBA
		[1, 1, 1, 1]
	],

	// 3) Force Default, default: false
	true
];

// Returns: NUMBER (or BOOL if TOOLBOX:YESNO or TOOLBOX:ENABLED is selected)
_toolBox = [
	// 0) Content Type
	// TOOLBOX:WIDE is a wider variant
	// TOOLBOX:YESNO has two options and return bool
	// TOOLBOX:ENABLED has two options and return bool
	// For TOOLBOX:YESNO and TOOLBOX:ENABLED, you only specify the default option for arguments
	"TOOLBOX",

	// 1) Display Name and Tooltip
	"Title", // or  ["Title", "Tooltip"],

	// 2) Control Specific Arguments
	[
		// 0) Default Value
		// Only speficy this option if TOOLBOX:YESNO or TOOLBOX:ENABLED is used
		// Defualt value for TOOLBOX:YESNO and TOOLBOX:ENABLED is bool
		0, // or false 

		// 1) Number of Rows
		2,

		// 2) Number of Columns
		2, 

		// 3) Option Names
		["option1", "option2", "option3", "option4"], // TODO: determine how option names work and are assigned

		// Height, optional. Automatically calculated by row size
		2
	],

	// 3) Force Default, default: false
	true
];

// Returns: BOOL
_vector = [
	// 0) Content Type
	"VECTOR",

	// 1) Display Name and Tooltip
	"Title", // or  ["Title", "Tooltip"],

	// 2) Control Specific Arguments - Vector Array, either 2 or 3 dimensions will display depending on default value 
	[0, 0], // or [0, 0, 0],

	// 3) Force Default, default: false
	true
];

// Create Dialog Function
[
	// 0) Title
	"Title",
	
	// 1) Content Array of Zen Dialogs
	[_checkBox],

	// 2) On Confirm, unscheduled
	// Passed Arguments:
	// 0) Dialog Values in order of Content
	// 1) Arguments, the same ones passed in arg4 for zen_dialog_fnc_create
	{
		params ["_dialogValues","_args"];
		_dialogValues params ["_param1"];
		_args params ["_arg1"];
	},

	// 3) On Cancel, default: {}, unscheduled
	{}, 

	// 4) Arguments, default: []
	[]

] call zen_dialog_fnc_create;
