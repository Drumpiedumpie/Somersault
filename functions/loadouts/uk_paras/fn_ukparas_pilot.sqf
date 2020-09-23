//============ RIFLEMAN ============//

_unit = _this select 0;

// ============= Basic stuff ================= //
//[_unit,1] call wgr_fnc_ukparas_basics;


// ========== Remove gear =============== //
[_unit] call wgr_fnc_loadoutentfernen ;


// Helmet
_helmet = selectRandom ["H_LIB_US_Helmet_Pilot","H_LIB_US_Helmet_Pilot_Glasses_Up"];
_unit addHeadgear _helmet;
_unit forceAddUniform "U_LIB_US_Pilot";
_unit addVest "V_LIB_US_LifeVest";
_unit addBackpack "B_LIB_US_TypeA3";


// =========== Items ============ //
//Grenades
//[_unit] call wgr_fnc_loadoutgranaten ;


// Sekundär Waffe und Munition
_sekwaffenarray = selectRandom [["LIB_WaltherPPK","LIB_7Rnd_765x17_PPK"]];
_sekwaffe = _sekwaffenarray select 0;
_sekmunition = _sekwaffenarray select 1;

_unit addMagazine _sekmunition;
_unit addWeapon _sekwaffe ;
for "_i" from 1 to 2 do {_unit addMagazine _sekmunition;};


// Sonstiges - Zusatzausrüstung
_unit addItemToUniform "ACE_Flashlight_MX991";


// Medikit
[_unit] call wgr_fnc_loadoutfirstaidkit ;
[_unit] call wgr_fnc_loadoutfood ;

_unit addItemToVest "LIB_US_M18";
_unit addItemToVest "LIB_US_M18_Yellow";


// =========== Link Items ============ //
// Map
_unit linkItem "ItemMap";
// Compass
_unit linkItem "ItemCompass";
// Watch
_unit linkItem "ItemWatch";

_unit action ["SwitchWeapon", _unit, _unit, -1];
