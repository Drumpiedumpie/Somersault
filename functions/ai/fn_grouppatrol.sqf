//////////////////////////////////////////////////////////
/*
GROUPPATROL - LAMBS

WIP

[["sp1","sp2"],east,["rhs_vdv_flora_efreitor","rhs_vdv_flora_grenadier_rpg","rhs_vdv_flora_machinegunner","rhs_vdv_flora_machinegunner_assistant"],50] spawn wgr_fnc_grouppatrol;

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
[_grp, _posi, _radius] call lambs_wp_fnc_taskPatrol;

/*
[getPos aPos, east, ["TK_INS_Bonesetter_EP1", "TK_INS_Soldier_2_EP1"],[],[],[],[],[],180] call BIS_fnc_spawnGroup
[pos,side,group,relative positions,ranks,skillrange,ammorange,randomControls,dir,precisePos,Max vehicles] call BIS_fnc_spawnGroup

-	position: Position - group's starting position
-	side: Side - group's side
-	toSpawn - Can be one of:
		Array - list of character types
		Number - amount of characters to spawn
		Config - CfgGroups entry
-	relPositions: Array of Positions (Optional, default []) a list of relative positions
-	ranks: Array of Strings/Numbers - (Optional, default []) ranks (see BIS_fnc_setRank) - must be same size as toSpawn's array
-	skillRange: Array of Numbers - (Optional, default []) skill range format [min, max]
-	ammoRange: Array of Numbers - (Optional, default []) ammunition range (0..1) format [min, max]
-	randomControls: Array of Numbers - (Optional, default [-1, 1]) to format [minUnits, chance]:
			*	minUnits: Number - (Optional, default -1) amount of mandatory units
			*	chance: Number - (Optional, default -1) spawn chance for remaining units (0..1)
-		azimuth: Number - (Optional, default 0) azimuth/direction
-	precisePos: Boolean - (Optional, default true) forces precise position placement
-	maxVehicles: Number - (Optional, default 10e10) vehicle number limit
*/


/*
taskPatrol

Simple dynamic patrol script by nkenny Suitable for infantry units (not so much vehicles, boats or air-- that will have to wait!)
Arguments:

0: Group performing action, either unit <OBJECT> or group <GROUP>
1: Position being searched, default group position <OBJECT or ARRAY>
2: Range of tracking, default is 200 meters <NUMBER>
3: Waypoint Count, default 4 <NUMBER>
4: Area the AI Camps in, default [] <ARRAY> 5: Dynamic patrol pattern, default false <BOOL>

[bob, bob, 500] call lambs_wp_fnc_taskPatrol;

taskReset
*/
