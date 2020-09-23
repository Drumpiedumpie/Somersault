_unit = _this select 0;

removeHeadgear _unit;
_unit addItemToBackpack "H_LIB_UK_Para_Beret";
//player addBackpackCargoGlobal ["H_LIB_UK_Para_Beret",1];

//_unit addItemToBackpack



/*
_spawnparachute = "ParachuteWest";

//_vehicleclasses = "B_Heli_Transport_03_unarmed_F"; //test chinook

/*
_tempMrkr = dz_1;
_minX = (getpos(_tempMrkr) select 0) - _tempMrkr getMarkerSize select 0;
_minY = (getpos(_tempMrkr) select 1) - _tempMrkr getMarkerSize select 1;

_debug = true;

_grp = createGroup resistance;

_i=0;
while{_i < 5} do{
		_jumparea= selectRandom _arrAreas;
		_newX = round(random (_Xrange)*1.9) + (getpos _jumparea select 0);
		_newY = round(random (_Yrange)*1.9) + (getpos _jumparea select 1);
		_dir = floor random[0,120,360];
		_i = _i+1;

		if (_debug) then {
				hint format[ "%1 spawned",str(_i+1)];
				_mrkr= str (_i);
				createMarker [_mrkr, [_newX,_newY]];
				_mrkr setMarkerType "hd_arrow";
				_mrkr setMarkerColor "Colorred";
				_mrkr setMarkerDir _dir;
		};

		_unit = _grp createunit [_paraunit ,[_newX,_newY], [], 0, "FORM"];
		_chute = _spawnparachute createVehicle [0,0,0];
		_chute setPosATL [_newX,_newY,_alt];
		_chute setDir _dir;
		_unit moveIndriver _chute;

		sleep 0.5;
};


sleep 1;

hint "Time for the player";
//[player] call zade_boc_fnc_actionOnChest;
sleep 1;

_jumparea= selectRandom _arrAreas;
_newX = round(random (_Xrange)*1.9) + (getpos _jumparea select 0);
_newY = round(random (_Yrange)*1.9) + (getpos _jumparea select 1);
_dir = floor random[0,100,360];

_chute = _spawnparachute createVehicle [0,0,0];
_chute setPosATL [_newX,_newY,_alt];
_chute setDir _dir;
player moveIndriver _chute;

hint "player done";

// array van alle spelers die in de cargo van een of meerdere voertuigen (classname v/d dakota) zich bevinden
// stap de array door met tussenpozen van 2-3 sec
// wijs de speler een random bereik toe
// Wijs de speler een random x coord toe
// Wijs de speler een random y coord toe
// Wijs de speler een z coord toe (binnen een vooraf vastgesteld bereik)
// Wijs de speler een random heading toe
// Teleport de player naar de coordinaten
// Activeer zijn parachute


/*
//Vanuit IFA script moveTarget

private["_counter","_unit","_para","_plane","_xgrp1"];

_counter = _this select 0;
_plane = _this select 1;

_xgrp1 = creategroup east;

for [{_x=1},{_x<=_counter},{sleep 0.3 + (random 0.4); _x=_x+1}] do {

_para = "ParachuteWest" createvehicle [50,50,50];
_para setpos (_plane modeltoworld [-5,0,-2.5]);
_unit = _xgrp1 createUnit ["LIB_SOV_rifleman", [50,50,50], [], 0, "FORM"];
_unit allowfleeing 0;
_unit moveindriver _para;

};
*/
