
# BAF (Baxen's Arma Framework)

An Arma 3 Mission Framework designed to setup accessible loadouts, role-based limited arsenals, preset radio channels, easily changable respawn ticket settings, and a custom map marker system.
This is all designed with a Zeus in mind. So a zeus can change a player's role. They can modify/toggle many options related these systems from the zeus interface. 

## How To Use

To get started, download a release and drop the exported folder in your MPMissions folder for your Arma profile. If you would like to import it into an already created mission, copy everything besides the mission.sqm into your mission folder.

The sample's include written descriptions on what to set up and what systems do. All changable settings for the framework are inside the userConfig folder.

Each side has a folder that contains setting and script files that can be used to create loadouts, arsenals, radio presets, and map marker info; along with adjusting the respawn setting for that side.
A notable feature regarding respawn is that the respawn delay can be modified mid mission.

The settings.hpp file adjust global settings for the framework (there are not that many).

The header.hpp file is apart of the description.ext file and is where any custom data (including Rsc display configs) can be placed.

The asset folder is a dedicated folder for any non-sqf files to be placed.

The customMissionScripts folder is where you place all your .sqf files. There is a preset CfgFunctions category file already setup for you register your scripts with CfgFunctions. I use the Zeus enhanced modules and dialogs for many of my custom mission functionality, all ZEN scripts also have a dedicated script folder.

## Contact

If you have any questions or need any help, contact me on discord: `@BAXENATOR`

## User License Summary:
* This repo is considered "Free Software"
* Derivatives are allowed:
  * If you make a derivative, you can close source your derivative, and restrict access and redistribution of your additions.
  * You are required to link back to this repo in the first 10 lines of your readme if you do close source your derivative.
* All contributions to this repo fall under "Free Software", meaning that once contributed, anyone can use it.
  * If copyrighted work is submitted, please let the repo owner know.
