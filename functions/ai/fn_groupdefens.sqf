//////////////////////////////////////////////////////////
/*

["sp1",east,["rhs_vdv_flora_efreitor","rhs_vdv_flora_grenadier_rpg","rhs_vdv_flora_machinegunner","rhs_vdv_flora_machinegunner_assistant"],50,true] spawn wgr_fnc_groupdefens;

[<marker>,<side>,<group>,<radius>,<patrol>] spawn WGR_fnc_groupdefens;

*/
//////////////////////////////////////////////////////////


_spawn = _this select 0;
_side = _this select 1;
_unit = _this select 2;
_radius = _this select 3;
_patrol = _this select 4; // Chance that a unit gets sent out on patrol (default 0.1)
_posi = getMarkerPos _spawn;
_arrSkills =[];


if (_unit find "LIB_GER_soldier_camo_base" != -1) then {
  _arrSkills = [0.8,0.8];
} else {
  _arrSkills = [0.65,0.65];
};

_grp  = [_posi,_side,_unit,[],[],_arrSkills] call BIS_fnc_spawnGroup;
[_grp, _grp , _radius,1, _patrol] call CBA_fnc_taskDefend;

sleep 30;
_grp enableDynamicSimulation true;

/*
Description

A function for a group to defend a parsed location.  Should be ran locally.

Units will mount nearby static machine guns and garrison in nearby buildings.  10% chance to patrol the radius unless specified differently (100% when no available building positions).  0% chance to hold defensive positions in combat unless specified differently.
Parameters
_group	the group <GROUP, OBJECT>
_position	centre of area to defend <ARRAY, OBJECT, LOCATION, GROUP> (Default: _group)
_radius	radius of area to defend <NUMBER> (Default: 50)
_threshold	minimum building positions required to be considered for garrison <NUMBER> (Default: 3)
_patrol	chance for each unit to patrol instead of garrison, true for default, false for 0% <NUMBER, BOOLEAN> (Default: 0.1)
_hold	chance for each unit to hold their garrison in combat, true for 100%, false for 0% <NUMBER, BOOLEAN> (Default: 0)
Returns

None
Examples

    [this] call CBA_fnc_taskDefend

*/
