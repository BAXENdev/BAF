
params ["_objects","_addCrew"];

allCurators apply { _x addCuratorEditableObjects [_objects,_addCrew] };
