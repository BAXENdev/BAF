
/*
  Radio presets are load order specific, where a following loaded preset will overwrite conflicting prior presets.
  The load order goes from left to right: SIDE -> GROUP -> ROLE.
  So if a GROUP preset has PRC343 preset to channel 2, but the ROLE preset has PRC343 preset to channel 1,
  the final preset for PRC343 will be channel 1.
  A unit needs to have the radio in their inventory in order for it to be preset.

  Multiple of the same radio can be registered for a side/group/role by duplicating a specific ADD.
  This is adds an addition channel to the SIDE/GROUP/ROLE, but the group list will still overwrite the side list, they are not added together.

  RADIO MACROS:
    PRC117 | PRC152 | PRC148 | PRC343 | BF888S
  
  Setting Net Names:
    SET_LR_NAME("New Name"); // Names for 117, 152, and 148 are all set here.
    SET_SR_NAME("New Name"); // 343
    SET_BF_NAME("New Name"); // BF888S
  
  Adding Radios:
    ADD_RADIO_SIDE(RADIO_MACRO, Channel_Number, "Channel Name");
    ADD_RADIO_GROUP(RADIO_MACRO, Channel_Number, "Channel Name", "Group Name 1");
    ADD_RADIO_ROLE(RADIO_MACRO, Channel_Number, "Channel Name", "Role Name 1");
*/
