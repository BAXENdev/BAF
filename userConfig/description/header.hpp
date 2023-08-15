
class Header
{
    // Available gameTypes:
    // Coop:	|	Coop Mission: The Bread and Butter of CA missions
    // DM		|	Death Match
    // TDM		|	Team Death Match
    // CTF		|	Capture The Flag (or, nuke)
    // SC		|	Sector Control (Think insurgency - the red/green squares)
    // RPG		|	Skyrim
    // Sandbox	|	Free Game type, think Shady Swindle
    // Seize	|	Seize a location
    // Defend	|	Defend a location
    gameType = Coop;
    minPlayers = 1;
    maxPlayers = 100;
};

onLoadName = "Sample Mission Name";
onLoadMission = "BAF by BAXENATOR";
author = "Author Name";
loadScreen = "onLoadImage.jpg";
