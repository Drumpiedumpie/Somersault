// EXAMPLE
//saveit = [mybox_1, mybox_2, mycar_1] execvm "saveobjects.sqf"

diag_log format["PST savobjects started, %1",name player];
//diag_log "PST savobjects.sqf started";

if (true) then {

	_list = [];
	_myobjects = _this;

	{
		_itemCargo =[];
		{
			_itemCargo pushback getItemCargo _x
		} foreach (everyBackpack _x);

		_weaponCargo =[];
		{
			_weaponCargo pushback getweaponcargo _x
		} foreach (everyBackpack _x);

		_magazineCargo =[];
		{
			_magazineCargo pushback magazinesAmmoCargo _x
		} foreach (everyBackpack _x);

		_backpackCargo =[];
		{
			_backpackCargo pushback getBackpackCargo _x
		} foreach (everyBackpack _x);


		_list pushback [
						str _x,
						getposworld _x,
						getdir _x,
						getDammage _x,
						getItemCargo _x,
						fuel _x,
						getweaponcargo _x,
						magazinesAmmoCargo _x,
						getBackpackCargo _x,
						_itemCargo,
						_weaponCargo,
						_magazineCargo,
						_backpackCargo
						];
	} foreach _myobjects;



	profilenamespace setvariable ["WHp_persistentobjects", _list];
	saveprofilenamespace;
};
