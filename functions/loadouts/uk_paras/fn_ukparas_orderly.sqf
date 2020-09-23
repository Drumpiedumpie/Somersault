//============ RIFLEMAN/REPAIR ============//

_unit = _this select 0;

// ============= Basic stuff ================= //
[_unit,1] call wgr_fnc_ukparas_basics;


// =========== Items ============ //
//Grenades
//[_unit] call wgr_fnc_loadoutgranaten ;
for "_i" from 1 to 2 do {_unit addItemToVest "LIB_MillsBomb";};
for "_i" from 1 to 2 do {_unit addItemToVest "LIB_No77";};


// =========== Waffen verteilen ============ //

// Primär Waffe und Munition
_waffenarray = selectRandom [["LIB_LeeEnfield_No4","LIB_10Rnd_770x56"]];
_waffe = _waffenarray select 0;
_munition = _waffenarray select 1;

_unit addWeapon _waffe;
_unit addPrimaryWeaponItem "LIB_10rnd_MUZZLE_FAKEMAG";
_unit addPrimaryWeaponItem _munition;
for "_i" from 1 to 11 do {_unit addItem _munition;};

//_unit addItemToBackpack "Toolkit";
for "_i" from 1 to 1 do {_unit addItemToBackpack "twc_2inch_he_1rnd";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "twc_2inch_smoke_1rnd";};
for "_i" from 1 to 1 do {_unit addItemToBackpack "twc_2inch_illum_1rnd";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "LIB_30Rnd_770x56";};


//sleep 5;
_unit action ["SwitchWeapon", _unit, _unit, -1];
