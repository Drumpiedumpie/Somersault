//============ Lieutenant ============//
_unit = _this select 0;
//diag_log ["lieutenant 01"];

// ============= Basic stuff ================= //
[_unit,4] call wgr_fnc_ukparas_basics;


// =========== Items ============ //
// Grenades
[_unit] call wgr_fnc_loadoutgranaten ;
for "_i" from 1 to 2 do {_unit addItem "immersion_cigs_cigar0";};

// =========== Waffen verteilen ============ //
// Primär Waffe und Munition
_waffenarray = selectRandom [["LIB_Sten_Mk5","LIB_32Rnd_9x19_Sten"]];
_waffe = _waffenarray select 0;
_munition = _waffenarray select 1;

_unit addWeapon _waffe;
_unit addPrimaryWeaponItem _munition;
for "_i" from 1 to 8 do {_unit addItem _munition;};

// Sekundär Waffe und Munition
_sekwaffenarray = selectRandom [["LIB_Webley_mk6","LIB_6Rnd_455"]];
_sekwaffe = _sekwaffenarray select 0;
_sekmunition = _sekwaffenarray select 1;

_unit addMagazine _sekmunition;
_unit addWeapon _sekwaffe ;
for "_i" from 1 to 2 do {_unit addMagazine _sekmunition;};

// Binocular
_unit addWeapon "LIB_Binocular_UK";

//sleep 5;
_unit action ["SwitchWeapon", _unit, _unit, -1];
