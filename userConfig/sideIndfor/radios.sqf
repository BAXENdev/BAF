
/*
  Presets are load order specific, where a following loaded preset will overwrite conflicting prior presets.
  The load order goes from left to right: SIDE -> GROUP -> ROLE.
  So if a GROUP preset has PRC343 preset to channel 2, but the ROLE preset has PRC343 preset to channel 1,
  the final preset for PRC343 will be channel 1.
  A unit needs to have the radio in their inventory in order for it to be preset.
  If a unit has two of the same radio in their inventory, only one of them will be preset. This is an acre limitation.
*/
