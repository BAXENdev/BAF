
diag_log "[BAF] Begin Initialization";

[] call BAF_INIT_fnc_initLoadout;

missionNamespace setVariable ["baf_init_done", 1, true];
