//============ RIFLEMAN/EOD ============//
//16,3kg

_unit = _this select 0;

// ============= Basic stuff ================= //
[_unit,2] call wgr_fnc_ukparas_basics;


// =========== Items ============ //
//Grenades
[_unit] call wgr_fnc_loadoutgranaten ;

// =========== Waffen verteilen ============ //

// Primär Waffe und Munition
_waffenarray = selectRandom [["LIB_LeeEnfield_No4","LIB_10Rnd_770x56"]];
_waffe = _waffenarray select 0;
_munition = _waffenarray select 1;

_unit addWeapon _waffe;
_unit addPrimaryWeaponItem "LIB_10rnd_MUZZLE_FAKEMAG";
_unit addPrimaryWeaponItem _munition;
for "_i" from 1 to 15 do {_unit addItem _munition;};

_unit addItemToBackpack "ACE_DefusalKit";

for "_i" from 1 to 2 do {_unit addItemToBackpack "LIB_Ladung_Small_MINE_mag";};

//sleep 5;
_unit action ["SwitchWeapon", _unit, _unit, -1];
