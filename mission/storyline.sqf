if (!isServer && hasInterface) exitWith {};

if !(isServer || hasInterface) then {WGR_headless = 1;};
if (isServer) then {WGR_headless = 0;};
publicVariable "WGR_headless";

//lines underneath here probably unnecessary on dedi server
if (isNil "WGR_taskVar") then { WGR_taskVar = 0; };
publicVariable "WGR_taskVar";
if (isNil "Completed_TaskVars") then { Completed_TaskVars = []; };
publicVariable "Completed_TaskVars";

#include "groups.hpp"

// INTRO TEMPORARILY DISABLED SO THAT THE SCRIPT DIRECTLY STARTS THE <SPAWN> PART
/*
waitUntil {sleep 3; WGR_taskVar == 1};

hint "taskvar = 1";

//"LeadTrack01a_F_EXP" remoteExec ["playMusic"];

sleep 20;

[{["<img size='4' image='images\logo.paa'/> <br /> <br />
<t align = 'center' color='#ffffff' shadow = '1' size = '.8'>Operation Olympus<br />
By<br />
Task Force Wolf</t>",0,0.2,10,1,0,789] spawn BIS_fnc_dynamicText;},"BIS_fnc_spawn",true] call BIS_fnc_MP;
*/

_newVar = 2;
if (!(_newVar in Completed_TaskVars))then{
  _spawnhandel = [] spawn
  {
    waitUntil {sleep 3; WGR_taskVar == 2};
        ["z2_1",west, selectRandom groups_wmb,50] spawn WGR_fnc_groupcamp;
        ["z2_2",west, selectRandom groups_wmb,50] spawn WGR_fnc_groupcamp;
        ["z2_3",west, selectRandom groups_wms,600] spawn WGR_fnc_grouppatrol;
        ["z2_4",west, selectRandom groups_wms,600] spawn WGR_fnc_grouppatrol;
        Completed_TaskVars pushback 2 ;
        publicVariable "Completed_TaskVars";
  };
};

_newVar = 3;
if (!(_newVar in Completed_TaskVars))then{
  _spawnhandel = [] spawn
  {
    waitUntil {sleep 3; WGR_taskVar == 3};
        ["z3_1",west, selectRandom groups_wmb,50] spawn WGR_fnc_groupcamp;
        ["z3_2",west, selectRandom groups_wms,750] spawn WGR_fnc_grouppatrol;
        ["z3_3",west, selectRandom groups_wms,750] spawn WGR_fnc_grouppatrol;
        Completed_TaskVars pushback 3;
        publicVariable "Completed_TaskVars";
  };
};

_newVar = 4;
if (!(_newVar in Completed_TaskVars))then{
  _spawnhandel = [] spawn
  {
    waitUntil {sleep 3; WGR_taskVar == 4};
        ["z4_1",west, selectRandom groups_wms,50] spawn WGR_fnc_groupcamp;
        Completed_TaskVars pushback 4;
        publicVariable "Completed_TaskVars";
  };
};

_newVar = 5;
if (!(_newVar in Completed_TaskVars))then{
  _spawnhandel = [] spawn
  {
    waitUntil {sleep 3; WGR_taskVar == 5};
        ["z5_1",west, selectRandom groups_wmb,50] spawn WGR_fnc_groupcamp;
        Completed_TaskVars pushback 5;
        publicVariable "Completed_TaskVars";
  };
};

_newVar = 8;
if (!(_newVar in Completed_TaskVars))then{
  _spawnhandel = [] spawn
  {
      waitUntil {sleep 3; WGR_taskVar == 8};
          hint "WGR_taskvar = 999, Zone 8";
          ["z8_1",west, selectRandom groups_wms,50,"z8_2"] spawn WGR_fnc_groupguard;
          ["z8_2",west, selectRandom groups_wms,50,"z8_1"] spawn WGR_fnc_groupguard;
        Completed_TaskVars pushback 8 ;
        publicVariable "Completed_TaskVars";
  };
};


_spawnhandel = [] spawn
{
};

_spawnhandel = [] spawn
{
};

/*
_spawnhandel = [] spawn
{
//  waitUntil {sleep 3; WGR_taskVar == 3};
  waitUntil {sleep 3; WGR_taskVar == 999};
      hint "WGR_taskvar = 999, Zone 3";
      ["z3_1",west, selectRandom groups_fjb,50] spawn WGR_fnc_groupcamp;
      ["z3_2",west, selectRandom groups_wms,600] spawn WGR_fnc_grouppatrol;
};

_spawnhandel = [] spawn
{
//  waitUntil {sleep 3; WGR_taskVar == 3};
  waitUntil {sleep 3; WGR_taskVar == 999};
      hint "WGR_taskvar = 999, Zone 3";
      ["z3_1",west, selectRandom groups_fjb,50] spawn WGR_fnc_groupcamp;
      ["z3_2",west, selectRandom groups_wms,600] spawn WGR_fnc_grouppatrol;
};




/*
_spawnhandel = [] spawn
{
	waitUntil {sleep 3; WGR_taskVar == 3};
  ["sp10",west, selectRandom groups_aaf,100] spawn WGR_fnc_grouppatrol;
  ["sp11",west, selectRandom groups_aaf,100] spawn WGR_fnc_grouppatrol;
  ["sp12",west, selectRandom groups_aaf,100] spawn WGR_fnc_grouppatrol;
  ["sp13",west, selectRandom groups_aaf,100] spawn WGR_fnc_grouppatrol;
  ["sp14",west, selectRandom groups_aaf,100] spawn WGR_fnc_grouppatrol;
  ["sp13",west, selectRandom groups_aaf,50,false] spawn WGR_fnc_groupdefens;
sleep 5;
  ["sp15",west, selectRandom groups_aaf,100] spawn WGR_fnc_grouppatrol;
  ["sp16",west, selectRandom groups_aaf,100] spawn WGR_fnc_grouppatrol;
  ["sp15",west, selectRandom groups_aaf,50,false] spawn WGR_fnc_groupdefens;
  sleep 5;
  ["sp18",west,["I_MBT_03_cannon_F"],"sp17",100] spawn WGR_fnc_groupattack;
  ["sp50",west,["I_MBT_03_cannon_F"],"sp17",100] spawn WGR_fnc_groupattack;
  ["sp51",west,["I_MBT_03_cannon_F"],"sp17",100] spawn WGR_fnc_groupattack;


};

_spawnhandel = [] spawn
{
	waitUntil {sleep 3; WGR_taskVar == 4};

  ["sp25",west, selectRandom groups_aaf,100] spawn WGR_fnc_grouppatrol;
  ["sp26",west, selectRandom groups_aaf,100] spawn WGR_fnc_grouppatrol;
  ["sp24",west, selectRandom groups_aaf,100] spawn WGR_fnc_grouppatrol;
  ["sp27",west, selectRandom groups_aaf,100] spawn WGR_fnc_grouppatrol;

sleep 5;

  ["sp28",west, selectRandom groups_aaf,100] spawn WGR_fnc_grouppatrol;
  ["sp29",west, selectRandom groups_aaf,100] spawn WGR_fnc_grouppatrol;
  ["sp30",west, selectRandom groups_aaf,100] spawn WGR_fnc_grouppatrol;
  ["sp31",west, selectRandom groups_aaf,100] spawn WGR_fnc_grouppatrol;
  ["sp32",west, selectRandom groups_aaf,100] spawn WGR_fnc_grouppatrol;
  ["sp33",west, selectRandom groups_aaf,100] spawn WGR_fnc_grouppatrol;
  ["sp34",west, selectRandom groups_aaf,100] spawn WGR_fnc_grouppatrol;



};

_spawnhandel = [] spawn
{
	waitUntil {sleep 3; WGR_taskVar == 5};

  ["sp35",west, selectRandom groups_aaf,400] spawn WGR_fnc_grouppatrol;
  ["sp36",west, selectRandom groups_aaf,400] spawn WGR_fnc_grouppatrol;

sleep 5;

  ["sp37",west, selectRandom groups_aaf,100] spawn WGR_fnc_grouppatrol;
  ["sp39",west, selectRandom groups_aaf,100] spawn WGR_fnc_grouppatrol;
  ["sp40",west, selectRandom groups_aaf,100] spawn WGR_fnc_grouppatrol;
  ["sp38",west, selectRandom groups_aaf,50,false] spawn WGR_fnc_groupdefens;



};
_spawnhandel = [] spawn
{
	waitUntil {sleep 3; WGR_taskVar == 6};

  ["sp41",west, selectRandom groups_aaf,100] spawn WGR_fnc_grouppatrol;
  ["sp43",civilian, ["C_man_w_worker_F","C_man_w_worker_F","C_man_w_worker_F","C_man_w_worker_F","C_man_w_worker_F"],10] spawn WGR_fnc_grouppatrol;

sleep 5;

  ["sp42",west, selectRandom groups_aaf,100] spawn WGR_fnc_grouppatrol;
  ["sp44",west, selectRandom groups_aaf,100] spawn WGR_fnc_grouppatrol;
  ["sp45",west, selectRandom groups_aaf,100] spawn WGR_fnc_grouppatrol;
  ["sp46",west, selectRandom groups_aaf,100] spawn WGR_fnc_grouppatrol;
  ["sp47",west, selectRandom groups_aaf,100] spawn WGR_fnc_grouppatrol;
  ["sp48",west, selectRandom groups_aaf,100] spawn WGR_fnc_grouppatrol;
  ["sp49",west, selectRandom groups_aaf,100] spawn WGR_fnc_grouppatrol;

sleep 5;

  ["sp46",west, selectRandom groups_aaf,50,false] spawn WGR_fnc_groupdefens;
  ["sp47",west, selectRandom groups_aaf,50,false] spawn WGR_fnc_groupdefens;

};
