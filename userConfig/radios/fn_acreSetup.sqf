
#include "..\..\macros\acreMacros.hpp"

/*
  Presets are load order specific, where a following loaded preset will overwrite conflicting prior presets.
  The load order goes from left to right: SIDE -> GROUP -> FACTION -> CLASS -> LOADOUT
  So if a GROUP preset has PRC343 preset to channel 2, but the LOADOUT preset has PRC343 preset to channel 1, the final preset for PRC343 will be channel 1.
  A unit needs to have the radio in their inventory in order for it to be preset.
  If a unit has two of the same radio in their inventory, only one of them will be preset. This is an acre limitation.

  Arguments-------------------
  Sides: WEST_S EAST_S GUER_S CIV_S
  RADIOS: PRC343 PRC148 PRC152 PRC117F PRC77 BF888S SEM52SL SEM70
  Group name: String of the group name. EX: Group name = "Alpha", then put "Alpha"
  Loadout/Class: if a loadout/class suffix is 'rif' (without single qoutes), then the given value is "rif" (with double quotes)
  Channel: The channel number to preset the radio to.

  SET_SIDE_PRESET(SIDE,RADIO,CHANNEL);
  SET_GROUP_PRESET(SIDE,GROUP,RADIO,CHANNEL);
  SET_FACTION_PRESET(FACTION,RADIO,CHANNEL);
  SET_CLASS_PRESET(FACTION,LOADOUT,RADIO,CHANNEL);
  SET_LOADOUT_PRESET(FACTION,LOADOUT,RADIO,CHANNEL);

  for class preset, if a loadout is apart of the class, a player that is assigned the loadout without the class will not get the class preset.
  A player has to be assigned the specific class to get the class preset.

  For naming the long range channels, use ACREs Channel Module. Im not reinventing the wheel.
  343 has 256 channels, broken down as: 16 blocks with 16 channels each.
  148 & 152 has 100 channels each.

  Full Example:
  Description: this is a sample of setting up a basic radio preset for a command structure.
  - This sets everyones 152 to channel 1, which is to be used as the command channel.
  - Jtac gets his 117
  SET_SIDE_PRESET(WEST_S,PRC152,1); // Command channel. This can be replaced with SET_FACTION_PRESET in this example.
  SET_GROUP_PRESET("Command",PRC343,1); // SR for command squad
  SET_LOADOUT_PRESET("blufor","jtac",PRC117F,2); // JTAC would have a 117 for LR comms with air. this sets the AIR net
  SET_GROUP_PRESET("Alpha",PRC343,2); // SR for alpha squad
  SET_GROUP_PRESET("Bravo",PRC343,2); // SR for bravo squad
*/

// If you aren't using 148s, 152s, or 117Fs in your mission, ignore this
VAR_RADIO_CHANNEL_NAMES = [
    "Command",
    "Air net"
];

SET_FACTION_PRESET("blufor",PRC152,2); // Command channel. This can be replaced with SET_FACTION_PRESET in this example.
SET_GROUP_PRESET(WEST_S,"Command",PRC343,4); // SR for command squad
SET_LOADOUT_PRESET("blufor","jtac",PRC117F,3); // JTAC would have a 117 for LR comms with air. this sets the AIR net
SET_GROUP_PRESET(WEST_S,"Alpha",PRC343,2); // SR for alpha squad
SET_GROUP_PRESET(WEST_S,"Bravo",PRC343,3); // SR for bravo squad
