		_arr_veh = ["LIB_OpelBlitz_Open_Y_Camo","LIB_OpelBlitz_Tent_Y_Camo","LIB_OpelBlitz_Open_Y_Camo","LIB_OpelBlitz_Tent_Y_Camo","LIB_OpelBlitz_Open_Y_Camo","LIB_OpelBlitz_Tent_Y_Camo","LIB_Kfz1_Hood_sernyt"];
		// opel fuel + opel repair
		_dir = getDir convoy_start;
		_pos1 = getpos convoy_start;
		_pos2 = getpos convoy_end;
		//[148.293,1292.73,3.8147e-006]
//		_pos2 = getpos convoy_test;
		_crew = "LIB_GER_unequip";
		_crew2 = "LIB_GER_smgunner";

#include "mission\groups.hpp"

/*
		groups_wmb = [
		["LIB_GER_unterofficer","LIB_GER_smgunner","LIB_GER_mgunner","LIB_GER_medic","LIB_GER_ober_rifleman","LIB_GER_ober_rifleman","LIB_GER_rifleman","LIB_GER_LAT_Rifleman","LIB_GER_ober_grenadier","LIB_GER_Soldier3"],
		["LIB_GER_unterofficer","LIB_GER_smgunner","LIB_GER_mgunner","LIB_GER_medic","LIB_GER_ober_rifleman","LIB_GER_Soldier2","LIB_GER_rifleman","LIB_GER_LAT_Rifleman","LIB_GER_ober_grenadier","LIB_GER_Soldier2"],
		["LIB_GER_unterofficer","LIB_GER_smgunner","LIB_GER_mgunner2","LIB_GER_medic","LIB_GER_Soldier2","LIB_GER_Soldier3","LIB_GER_Soldier3","LIB_GER_ober_grenadier","LIB_GER_ober_grenadier"],
		["LIB_GER_unterofficer","LIB_GER_smgunner","LIB_GER_mgunner2","LIB_GER_medic","LIB_GER_Soldier2","LIB_GER_ober_rifleman","LIB_GER_Soldier3","LIB_GER_Soldier3","LIB_GER_ober_grenadier","LIB_GER_ober_grenadier"]
		];
*/

		_i = 0;
		_iMax = 2 + random 5;
		diag_log format["_iMax = %1",_iMax];

		_grp = str random 1;
		//_grp = "testgroep";
		_grp = createGroup west;
		_grp setFormation "COLUMN";

		while {_i<_iMax} do{
				_convoyvehicle = selectRandom _arr_veh createVehicle [(_pos1 select 0)+10*_i, (_pos1 select 1)+20*_i, 0];
			_convoyvehicle setDir _dir;

			if(_i==0) then{_handle = [_grp, 40, 5] spawn TOV_fnc_SimpleConvoy};

			_unit = _grp createunit [_crew , [0,0,0], [], 0, "FORM"];
			_unit2 = _grp createunit [_crew2 , [0,0,0], [], 0, "FORM"];
			_unit moveIndriver _convoyvehicle;
			_unit2 moveInCargo vehicle _convoyvehicle;

			switch (typeOf _convoyvehicle) do {
				case "LIB_OpelBlitz_Open_Y_Camo": {
						_passengers = [[0,0,0],west,selectRandom wmb,[],[],[0.8,0.8]] call BIS_fnc_spawnGroup;
						{
						    _x enableSimulationGlobal true;
								_x moveInCargo _convoyvehicle;
						} forEach units _passengers;
				};
			};

			sleep 0.2;
			_i=_i+1;
		};

		_grp setBehaviour "SAFE";

		sleep 1;

		_wp =_grp addWaypoint[[(_pos2 select 0), (_pos2 select 1),0], 0];
		_wp setWaypointType "MOVE";
		_wp setWaypointStatements ["true","{_y = _x;{_y deleteVehicleCrew _x;} forEach crew _y;deleteVehicle _y;}forEach vehicles in _grp"];


/*
private _group = createGroup ["EAST",true]; // why is there a 1 in your script?
_id = time; //(or sth similar to identify it)
_groupVarName = format ["EastGroup:%1",_id];
missionNamespace setVariable [_groupVarName,_group];
// access it later again:
_groupVarName = format ["EastGroup:%1",_id];
_group = missionNamespace getVariable [_groupVarName,grpNull];
//if (!isNull _group) then {group exists};





//		sleep 45;


/*
{(vehicle _x) limitSpeed 5000} forEach (units _grp);
{_y=_x;
	{deleteVehicle _x;
	}foreach (crew _y + [_y]);
}foreach (vehicles _grp);


{_y=_x;
	{deletevehicle _x
	}foreach allCrew _y;
	deletevehicle _y;
}foreach vehicles _grp;


*/


/*
- convoyGroup : the group you want to be the convoy
- convoySpeed : Maximum speed of the convoy in km/h (default 50 km/h)
- convoySeparation : distance between each vehicle of the convoy (default 50m)

//Also note the script won't exit itself !
//You can end it this way once you don't need it anymore (last waypoint reached or custom condition) :

terminate convoyScript;
{(vehicle _x) limitSpeed 5000} forEach (units convoyGroup);

*/

/*

//_wp setWaypointStatements ["true", "cleanUpveh = vehicle leader this; {deleteVehicle _x} forEach crew cleanUpveh + [cleanUpveh]; deleteGroup this;"];
//_wp setWaypointStatements ["true", "vehicle leader this; {deleteVehicle _x} forEach crew cleanUpveh + [cleanUpveh]; deleteGroup this;"];


//_wp setWaypointStatements ["true", "cleanUpveh = vehicle leader this; {deleteVehicle _x} forEach crew cleanUpveh + [cleanUpveh]; deleteGroup this;"];


//[_grp,0] setWaypointScript "cleanUpveh = vehicle leader this; {deleteVehicle _x} forEach crew cleanUpveh + [cleanUpveh]; deleteGroup this;";
//[_grp,_wp] setWaypointScript "{ deleteVehicle _x } forEach (crew heli); deleteVehicle heli;";
//_wp setWaypointStatements [condition, statement]
//cleanUpveh = vehicle leader this; {deleteVehicle _x} forEach crew cleanUpveh + [cleanUpveh]; deleteGroup this;
//{ deleteVehicle _x } forEach (crew heli); deleteVehicle heli;

//(_pos1 select 0), (_pos1 select 1)
//_wp =_grp addWaypoint [getpos, 0];

/*
