
params ["_text"];

if !(_text isEqualType "") exitWith { DEBUG_RPT_FULL("BAF_fnc_createIntel was passed a non-string."); };
if !(player diarySubjectExists "zen_modules_intel") then { player createDiarySubject ["zen_modules_intel","Intel"]; };
["TaskAssigned",["","Intel Collected"]] call BIS_fnc_showNotification;
player createDiaryRecord ["zen_modules_intel",_text];
