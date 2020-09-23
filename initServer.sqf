//Mission Persistency SessionID
Mission_Session_ID = 7601;
publicVariable "Mission_Session_ID";
publicVariable "Completed_TaskVars";

enableDynamicSimulationSystem true;

////////////////////////////
// Headless client
////////////////////////////
//[] execvm "init_HC.sqf";


if (isServer) then {_nil = [] execVM "scripts\weather.sqf"};
//if (isServer) then {_nil = [] execVM "scripts\weathernew.sqf"};


{
    if (!isnull (getassignedcuratorunit _x)) then {
    	_unit = getassignedcuratorunit _x;
    	if (isnull (getassignedcuratorlogic _unit)) then {
    		unassignCurator _x;
    		sleep 1;
    		_unit assignCurator _x;
    	};
    };
} foreach allcurators;
