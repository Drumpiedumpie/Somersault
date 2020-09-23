//////////////////////////////////////////////////////////
/*
GROUPGARRISON - LAMBS

WIP
[marker,side,unit,radius] spawn WGR_fnc_groupgarrison;
[<marker>,west, <side>,<group>,<radius>] spawn WGR_fnc_groupgarrison;
["z2_1",west, selectRandom groups_fjb,50] spawn WGR_fnc_groupgarrison;
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
//	[bob, bob, 50] call lambs_wp_fnc_taskGarrison;
[_grp, _posi, _radius] call lambs_wp_fnc_taskGarrison;

sleep 30;
_grp enableDynamicSimulation true;

/*
taskGarrison

The AI will take up building positions and man static weapons within a set range. Units will remain static until a triggered, the trigger may be taking damage, shooting weapons, or being near an enemy fire.
Arguments:

0: Group performing action, either unit <OBJECT> or group <GROUP>
1: Position to occupy, default group location <ARRAY or OBJECT>
2: Range of tracking, default is 50 meters <NUMBER>
3: Area the AI Camps in, default [] <ARRAY>
4: Teleport Units to Position <BOOL>
5: Sort Based on Height <BOOL>
6: Exit Conditions that breaks a Unit free (-2 Random, -1 All, 0 Hit, 1 Fired, 2 FiredNear), default -2 <NUMBER>
7: Partial group Patrols the Area <BOOL>

[bob, bob, 50] call lambs_wp_fnc_taskGarrison;



[["sp1","sp2"],east,["rhs_vdv_flora_efreitor","rhs_vdv_flora_grenadier_rpg","rhs_vdv_flora_machinegunner","rhs_vdv_flora_machinegunner_assistant"],50] spawn wgr_fnc_grouppatrol;
[bob, bob, 50] call lambs_wp_fnc_taskGarrison;
Lambs:
[ObjMyUnit, ObjMarker, Range] call lambs_wp_fnc_taskGarrison;

*/
