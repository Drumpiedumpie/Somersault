_gateStuff = [this] SPAWN {
	params ["_gate"];
	while {alive _gate} do {
		waitUntil {sleep 1; count (_gate nearEntities [["Car", "Motorcycle", "Tank"], 50] select {side _x isEqualTo west}) > 0};
		_gate animate ["door_1", 1];
		waitUntil {sleep 1; count (_gate nearEntities [["Car", "Motorcycle", "Tank"], 50] select {side _x isEqualTo west}) == 0};
		_gate animate ["door_1", 0];
	};
};
