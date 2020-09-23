//============ SERGEANT ============//

_unit = _this select 0;

//diag_log ["full_sergeant 01"];

// ============= Basic stuff ================= //
[_unit,3] call wgr_fnc_ukparas_basics;

// =========== Items ============ //
// Grenades
//[_unit] call wgr_fnc_loadoutgranaten ;
for "_i" from 1 to 2 do {_unit addItemToVest "LIB_MillsBomb";};
for "_i" from 1 to 2 do {_unit addItemToVest "LIB_No77";};
for "_i" from 1 to 2 do {_unit addItem "immersion_cigs_cigar0";};


// =========== Waffen verteilen ============ //

// Primär Waffe und Munition
_waffenarray = selectRandom [["LIB_Sten_Mk5","LIB_32Rnd_9x19_Sten"]];
_waffe = _waffenarray select 0;
_munition = _waffenarray select 1;

_unit addWeapon _waffe;
//_unit addPrimaryWeaponItem "LIB_10rnd_MUZZLE_FAKEMAG";
_unit addPrimaryWeaponItem _munition;
for "_i" from 1 to 8 do {_unit addItem _munition;};

// =========== Extras ============ //
for "_i" from 1 to 2 do {_unit addMagazine "twc_2inch_smoke_1rnd";};
for "_i" from 1 to 1 do {_unit addMagazine "twc_2inch_illum_1rnd";};

_unit addItemToBackpack "ACE_wirecutter";

//sleep 5;
_unit action ["SwitchWeapon", _unit, _unit, -1];
