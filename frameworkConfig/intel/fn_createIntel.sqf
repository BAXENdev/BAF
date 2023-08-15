
params ["_text","_title",["_actionName","Pickup Intel",[]],["_deleteOnGive",true,[true]],["_actionType",0,[0]]];

if !(_text isEqualType "" or {_text isEqualTo ""}) exitWith { DEBUG_RPT_FULL("Invalid value passed to variable _text"); };
if !(_title isEqualType "" or {_title isEqualTo ""}) exitWith { DEBUG_RPT_FULL("Invalid value passed to variable _title"); };
if !(_action isEqualType "" or {_action isEqualTo ""}) exitWith { DEBUG_RPT_FULL("Invalid value passed to variable _action"); };


