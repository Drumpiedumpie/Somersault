//============ GRENADIER ============//
//16,3 kg

_unit = _this select 0;

// ============= Basic stuff ================= //
[_unit,2] call wgr_fnc_ukparas_basics;


// =========== Items ============ //
// Grenades
//[_unit] call wgr_fnc_loadoutgranaten ;
for "_i" from 1 to 2 do {_unit addItemToBackpack "LIB_30Rnd_770x56";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "twc_2inch_he_1rnd";};


// =========== Waffen verteilen ============ //
// Primär Waffe und Munition
_waffenarray = selectRandom [["LIB_LeeEnfield_No4_CUP","LIB_10Rnd_770x56"]];
_waffe = _waffenarray select 0;
_munition = _waffenarray select 1;

_unit addWeapon _waffe;
_unit addPrimaryWeaponItem "LIB_ACC_GL_Enfield_CUP_Empty";
_unit addPrimaryWeaponItem _munition;
for "_i" from 1 to 15 do {_unit addItem _munition;};
for "_i" from 1 to 14 do {_unit addItem "LIB_1Rnd_G_MillsBomb";};


//sleep 5;
_unit action ["SwitchWeapon", _unit, _unit, -1];
