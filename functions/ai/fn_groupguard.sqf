//////////////////////////////////////////////////////////
/*

["sp1",east,["rhs_vdv_flora_efreitor","rhs_vdv_flora_grenadier_rpg","rhs_vdv_flora_machinegunner","rhs_vdv_flora_machinegunner_assistant"],50,true] spawn wgr_fnc_groupdefens;

*/
//////////////////////////////////////////////////////////

WIP

_spawn = _this select 0;
_side = _this select 1;
_unit = _this select 2;
_radius = _this select 3;
_guardedpoint = _this select 4;
_posi = getMarkerPos _spawn;
_posi2 = getMarkerPos _guardedpoint;
_arrSkills =[];


if (_unit find "LIB_GER_soldier_camo_base" != -1) then {
  _arrSkills = [0.8,0.8];
} else {
  _arrSkills = [0.65,0.65];
};

_grp  = [_posi,_side,_unit,[],[],_arrSkills] call BIS_fnc_spawnGroup;
[_grp, _posi, _radius] call lambs_wp_fnc_taskCamp;
_wp =_grp addWaypoint [_posi, 0];
_wp setWaypointType "GUARD";

createGuardedPoint [_side, _posi2, -1];
// OF: tweede groep nemen, zodra de eerste groep in contact met de vijand is heeft die een seek and destroy waypoint geven van de groep
// zodra de leader zijn behaviour naar combat switched
//combatMode
