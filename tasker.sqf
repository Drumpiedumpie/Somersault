if (!isServer && hasInterface) exitWith {};

//[_s_Object] spawn WGR_fnc_tasker;
//  [_s_Object, _s_Side, _s_Order, _s_Group, _s_] spawn WGR_fnc_tasker;

//_s_Order ="";// att/cmp/crp/def/gar/grd/pat


_s_Object = _this select 0;

_arrName = _s_Object splitString "_";
_i = _arrName find "west";
_s_Side = _arrName select _i;

_s_Patrol = 0.1;
_s_Order = toLower (_arrName select _i+1);
_s_Group = _arrName select _i+2;
_s_Radius = _arrName select _i+3;
_s_Target = _arrName select _i+4;

#include "..\missions\groups.hpp"


hint format["%1, %2, %3, %4", _arrName, _i, _s_Group, str (parseNumber _s_Radius) + 5)];

//att/cmp/crp/def/gar/grd/pat

switch (_s_Order) do {
  case "att": {
      // _grp = [<marker>,<side>,<group>,<target>,<radius>] spawn wgr_fnc_groupattack;
      _grp = [_s_Object,_s_Side, selectRandom _s_Group,_s_Target,_s_Radius] spawn wgr_fnc_groupattack;
      };
  case "cmp": {
      // _grp = [<marker>,<side>,<group>,<target>,<radius>] spawn wgr_fnc_groupattack;
      ["z2_1",west, selectRandom groups_fjb,50] spawn WGR_fnc_groupcamp;
      _grp = [_s_Object,_s_Side,_s_Group,_s_Target,_s_Radius] spawn wgr_fnc_groupattack;
      };
  case "crp": {
      // _grp = [<marker>,<side>,<group>,<target>,<radius>] spawn wgr_fnc_groupattack;
      _grp = [_s_Object,_s_Side,_s_Group,_s_Target,_s_Radius] spawn wgr_fnc_groupattack;
      };
  case "def": {
      // _grp = [<marker>,<side>,<group>,<target>,<radius>] spawn wgr_fnc_groupattack;
      _grp = [_s_Object,_s_Side,_s_Group,_s_Target,_s_Radius] spawn wgr_fnc_groupattack;
      };
  case "gar": {
      // _grp = [<marker>,<side>,<group>,<target>,<radius>] spawn wgr_fnc_groupattack;
      _grp = [_s_Object,_s_Side,_s_Group,_s_Target,_s_Radius] spawn wgr_fnc_groupattack;
      };
  case "grd": {
      // _grp = [<marker>,<side>,<group>,<target>,<radius>] spawn wgr_fnc_groupattack;
      _grp = [_s_Object,_s_Side,_s_Group,_s_Target,_s_Radius] spawn wgr_fnc_groupattack;
      };
  case "pat": {
      // _grp = [<marker>,<side>,<group>,<target>,<radius>] spawn wgr_fnc_groupattack;
      _grp = [_s_Object,_s_Side,_s_Group,_s_Target,_s_Radius] spawn wgr_fnc_groupattack;
      };
};

_groupname = format["g_%1",name _s_Object];
_grp setGroupIdGlobal [_groupname];
if ((_s_Order != "pat") && (_s_Order != "crp"))then {
    sleep 30;
    _grp enableDynamicSimulation true;
    };

/*
["z2_2",west, selectRandom groups_wmb,50] spawn WGR_fnc_groupcamp;


[<marker>] spawn WGR_fnc_spawncontroller


<naam opbouw>
<marker>,<side>,type>,<grouptype>,
z1_1    , west , att , wmb       ,


<side>


<marker>
Variable Name of marker

<_s_Order>
attack   : att
camp     : cmp
creep    : crp
defens   : def
garrison : gar
guard    : grd
patrol   : pat

<marker>,<side>,<group>,<target>,<radius>
z2_1_west_fjb_
<marker>,<side>,<group>,<radius>
<marker>,<side>,<group>,<radius>,<patrol>

["z2_2",west, selectRandom groups_wmb,50] spawn WGR_fnc_groupcamp;
["z2_3",west, selectRandom groups_wms,600] spawn WGR_fnc_grouppatrol;


WGR_fnc_groupattack
[<marker>,<side>,<group>,<target>,<radius>] spawn WGR_fnc_groupattack;
WGR_fnc_groupcamp
[<marker>,<side>,<group>,<radius>] spawn WGR_fnc_groupcamp;
WGR_fnc_groupcreep
[<marker>,<side>,<group>,<radius>] spawn WGR_fnc_groupcreep;
WGR_fnc_groupdefens
[<marker>,<side>,<group>,<radius>,<patrol>] spawn WGR_fnc_groupdefens;
WGR_fnc_groupgarrison
[<marker>,<side>,<group>,<radius>] spawn WGR_fnc_groupgarrison;
WGR_fnc_groupguard
WIP
WGR_fnc_patrol
[<marker>,<side>,<group>,<radius>] spawn WGR_fnc_grouppatrol;

grouptype //



splitstring [input]





//laatste handeling; met de waarde die de functie teruggeeft:
_grp setGroupIdGlobal format["g_%1", name <marker>];
