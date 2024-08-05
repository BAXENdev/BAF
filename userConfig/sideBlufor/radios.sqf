
#define SIDE west

/*
  Presets are load order specific, where a following loaded preset will overwrite conflicting prior presets.
  The load order goes from left to right: SIDE -> GROUP -> ROLE.
  So if a GROUP preset has PRC343 preset to channel 2, but the ROLE preset has PRC343 preset to channel 1,
  the final preset for PRC343 will be channel 1.
  A unit needs to have the radio in their inventory in order for it to be preset.
  Multiple of the same radio can be registered for a side/group/role.
*/

ADD_RADIO_SIDE("ACRE_PRC152", 2, "Platoon Net");
ADD_RADIO_GROUPS("ACRE_PRC343", 2, "Alpha 1-1", ["Alpha 1-1"]);
