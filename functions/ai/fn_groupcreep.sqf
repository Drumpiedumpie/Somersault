//////////////////////////////////////////////////////////
/*
GROUPCREEP - LAMBS

WIP

[["sp1","sp2"],east,["rhs_vdv_flora_efreitor","rhs_vdv_flora_grenadier_rpg","rhs_vdv_flora_machinegunner","rhs_vdv_flora_machinegunner_assistant"],50] spawn wgr_fnc_grouppatrol;

[<marker>,<side>,<group>,<radius>] spawn wgr_fnc_groupcreep;

*/
//////////////////////////////////////////////////////////

_spawn = _this select 0;
_side = _this select 1;
_unit = _this select 2;
_radius = _this select 3;
_posi = getMarkerPos _spawn;
_arrSkills =[];


if (_unit find "LIB_GER_soldier_camo_base" != -1) then {
  _arrSkills = [0.8,0.8];
} else {
  _arrSkills = [0.65,0.65];
};

_grp  = [_posi,_side,_unit,[],[],_arrSkills] call BIS_fnc_spawnGroup;
//	[_grp, _posi, _radius, 7, "MOVE", "AWARE", "YELLOW", "LIMITED", "COLUMN", "_grp call CBA_fnc_searchNearby", [30,60,90]] call CBA_fnc_taskPatrol;
//[_grp, _radius,,,false] spawn lambs_wp_fnc_taskCreep;

/*
taskCreep

Have the AI stalk, raptor style, the player forces. The group will attempt to move as close as possible before unleashing a hailstorm of fire. Sneaky, stealthy and quite scary.
Arguments:

0: Group performing action, either unit <OBJECT> or group <GROUP>
1: Range of tracking, default is 500 meters <NUMBER>
2: Delay of cycle, default 15 seconds <NUMBER>
3: Area the AI Camps in, default [] <ARRAY>
4: Center Position, if no position or Empty Array is given it uses the Group as Center and updates the position every Cycle, default [] <ARRAY>
5: Only Players, default true <BOOL>

[bob, 500] spawn lambs_wp_fnc_taskCreep;
*/
