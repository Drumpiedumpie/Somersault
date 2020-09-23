////////////////////////////////////////////////////////
//	Object Persistency
////////////////////////////////////////////////

//diag_log "PST loadbjects.sqf started";
diag_log format["PST loadobjects started, %1",name player];
// restore stuff

_objectsarray = _this select 0;

	//CLEAR THE BOXES
	{clearWeaponCargoGlobal _x, clearMagazineCargoGlobal _x, clearItemCargoGlobal _x, clearBackpackCargoGlobal _x} foreach _objectsarray;
	_content = (profilenamespace getvariable ["WHp_persistentobjects",[]]);
	{
		//FILL THE BOXES
		_x setposworld ((_content select 0) select 1);
		_x setdir ((_content select 0) select 2);
		_x setdammage ((_content select 0) select 3);
		{_x addItemCargoGlobal [
				_x,
			   ((((_content select 0) select 4) select 1) select _forEachIndex )
			   ]
		} foreach (((_content select 0) select 4) select 0);
		_x setfuel ((_content select 0) select 5);
		{_x addWeaponCargoGlobal [
				_x,
			   ((((_content select 0) select 6) select 1) select _forEachIndex )
			   ]
		} foreach (((_content select 0) select 6) select 0);
		{_x addMagazineAmmoCargo [
				(((_content select 0) select 7) select _forEachIndex) select 0,
				1,
				(((_content select 0) select 7) select _forEachIndex) select 1
			   ]
		} foreach ((_content select 0) select 7);
		{_x addBackpackCargoGlobal [
				_x,
			   ((((_content select 0) select 8) select 1) select _forEachIndex )
			   ]
		} foreach (((_content select 0) select 8) select 0);
	} foreach _objectsarray;
