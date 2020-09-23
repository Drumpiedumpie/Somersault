//============ PIAT ============//

_unit = _this select 0;

// ============= Basic stuff ================= //
[_unit,2] call wgr_fnc_ukparas_basics;


// =========== Items ============ //
// Grenades
//[_unit] call wgr_fnc_loadoutgranaten ;


// =========== Waffen verteilen ============ //

// Primär Waffe und Munition
_waffenarray = selectRandom [["LIB_LeeEnfield_No4","LIB_10Rnd_770x56"]];
_waffe = _waffenarray select 0;
_munition = _waffenarray select 1;

_unit addWeapon _waffe;
_unit addPrimaryWeaponItem "LIB_10rnd_MUZZLE_FAKEMAG";
_unit addPrimaryWeaponItem _munition;
for "_i" from 1 to 7 do {_unit addItem _munition;};


// Sekundär Waffe und Munition
_sekwaffenarray = selectRandom [["LIB_PIAT","LIB_1Rnd_89m_PIAT"]];
_sekwaffe = _sekwaffenarray select 0;
_sekmunition = _sekwaffenarray select 1;

_unit addWeapon _sekwaffe ;
for "_i" from 1 to 3 do {_unit addItemToBackpack _sekmunition;};


//sleep 5;
_unit action ["SwitchWeapon", _unit, _unit, -1];
