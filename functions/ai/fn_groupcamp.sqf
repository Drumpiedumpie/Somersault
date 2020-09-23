//////////////////////////////////////////////////////////
/*
GROUPCAMP - LAMBS

WIP
[marker,side,unit,radius] spawn WGR_fnc_groupgarrison;
["z2_1",west, selectRandom groups_fjb,50] spawn WGR_fnc_groupcamp;

[<marker>,<side>,<group>,<radius>] spawn wgr_fnc_groupattack;

*/
//////////////////////////////////////////////////////////


_spawn = _this select 0;
_side = _this select 1;
_unit = _this select 2;
//_ziel = _this select 3;
_radius = _this select 3;
_posi = getMarkerPos _spawn;
_arrSkills =[];


if (_unit find "LIB_GER_soldier_camo_base" != -1) then {
  _arrSkills = [0.8,0.8];
} else {
  _arrSkills = [0.65,0.65];
};

_grp  = [_posi,_side,_unit,[],[],_arrSkills] call BIS_fnc_spawnGroup;

[_grp, _posi, _radius] call lambs_wp_fnc_taskCamp;
_grp setGroupIdGlobal 
_grp;

/*
taskCamp

Sets the team in camp like behaviour, Larger groups will set out patrols, Turrets may be manned, and Some buildings may be garrisoned
Arguments:

0: Group performing action, either unit <OBJECT> or group <GROUP>
1: Central position camp should be made, <ARRAY>
2: Range of patrols and turrets found, default is 50 meters <NUMBER>
3: Area the AI Camps in, default [] <ARRAY>
4: Teleport Units to Position <BOOL>
5: Partial group Patrols the Area <BOOL>


*/
