//////////////////////////////////////////////////////////
/*

[["sp1","sp2"],east,["rhs_vdv_flora_efreitor","rhs_vdv_flora_grenadier_rpg","rhs_vdv_flora_machinegunner","rhs_vdv_flora_machinegunner_assistant"],at1,100] spawn wgr_fnc_groupattack;

[<marker>,<side>,<group>,<target>,<radius>] spawn wgr_fnc_groupattack;

*/
//////////////////////////////////////////////////////////


_spawn = _this select 0;
_side = _this select 1;
_unit = _this select 2;
_ziel = _this select 3;
_radius = _this select 4;
//_posi = getPos _spawn;
_posi = getMarkerPos _spawn;
_posis = getpos _ziel;
_arrSkills =[];


if (_unit find "LIB_GER_soldier_camo_base" != -1) then {
  _arrSkills = [0.8,0.8];
} else {
  _arrSkills = [0.65,0.65];
};

_grp  = [_posi,_side,_unit,[],[],_arrSkills] call BIS_fnc_spawnGroup;

[_grp, _posis, _radius] call CBA_fnc_taskAttack;
_grp;
