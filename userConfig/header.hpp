
class Header
{
	gameType = "Coop";	// Game type
	minPlayers =  1;	// minimum number of players the mission supports
	maxPlayers = 100;	// maximum number of players the mission supports
};

author = "[Insert Author Name Here]";
onLoadName = "[Insert Mission Name Here]";
onLoadMission = "[Insert short mission description]";
loadScreen = "userConfig\assets\onLoadImage.jpg";

// Corpse Manager
corpseManagerMode = 0; // 0: None | 1: All
corpseLimit = 30;
corpseRemovalMinTime = 300;
corpseRemovalMaxTime = 600;
// Wreck Manager
wreckManagerMode = 0; // 0: None | 1: All
wreckLimit = 10;
wreckRemovalMinTime = 300;
wreckRemovalMaxTime = 600;
// Distance of corpse/wreck from player before corpse or wreck can be destroyed
minPlayerDistance = 50;

class CfgDebriefing {
	class End1 {
		title = "Mission Success";
		subtitle = "";
		description = "Mission Success.";
		picture = "";
        pictureBackground = "";
        music = "";
	};
};


// Access params with this code: _param = ["name1",0] call BIS_fnc_getParamValue;
class Params {
    // class name1 {
    //     title = "Item 1";
    //     texts[] = { "One", "Two", "Three" };
    //     values[] = { 1, 2, 3 };
    //     default = 1;
    //     // function = "TAG_fnc_FUNCTION"; // A function to run at mission start
    //     // isGlobal = 1; // If 1, the script will be run on every client. If 0 or undefined, it only runs on the server
    // };
};

class CfgSounds {
	// class randomSound {
	// 	name = "Sound Name";
	// 	sound[] = {"\file\path.ogg",1,1,100}; // file, volume, pitch, maxDistance
	// 	titles[] = {0, ""}; // subtitles
	// };
};

class CfgMusic {
	tracks[] = {};
	// class randomMusic {
	// 	name = "Music Name";
	// 	sound[] = {"\file\path.ogg",db+0,1.0}; // filename, volume, pitch
	// };
};
