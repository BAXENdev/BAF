
params ["_text","_title"];

if (!(_text isEqualType "")) exitWith { DEBUG_RPT_FULL("Invalid value passed to _text."); };
if (!(_title isEqualType "")) exitWith { DEBUG_RPT_FULL("Invalid value was passed _title."); };
if (_text isEqualTo "" and _title isEqualTo "") exitWith { DEBUG_RPT_FULL("Aborting because empty strings were passed to _text and _title."); };

if !(player diarySubjectExists "zen_modules_intel") then { player createDiarySubject ["zen_modules_intel","Intel"]; };
["TaskAssigned",["","Intel Collected"]] call BIS_fnc_showNotification; // TODO: Update notification type to something more useful
player createDiaryRecord ["zen_modules_intel",["_"]];
