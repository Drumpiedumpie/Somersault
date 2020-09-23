//============ MEDIC ============//

_unit = _this select 0;

// ============= Basic stuff ================= //
[_unit,1] call wgr_fnc_ukparas_basics;


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

//Assign medic
for "_i" from 1 to 9 do {_unit addItemToVest "ACE_salineIV_500";};
[_unit] call wgr_fnc_loadoutmedicpack;
_unit setVariable ["ACE_medical_medicClass", 1];


//sleep 5;
_unit action ["SwitchWeapon", _unit, _unit, -1];
