// ============= Basic loadout ================= //
//[_unit,1] call wgr_fnc_ukparas_basics; };

_unit = _this select 0;
_vest = _this select 1;


// ========== Remove gear =============== //
[_unit] call wgr_fnc_loadoutentfernen ;


// =========== Equipment verteilen ============ //
// Uniform
_uniformarray = selectRandom ["U_LIB_UK_DenisonSmock"];
_unit forceAddUniform _uniformarray ;


//Vests
// 1 = V_LIB_UK_P37_Rifleman_Blanco  -- Standard vest (also when defaulting)
// 2 = V_LIB_UK_P37_Heavy_Blanco     -- Bren1, Bren2, Grenadier, Mortar, PIAT
// 3 = V_LIB_UK_P37_Sten_Blanco      -- Sgt
// 4 = V_LIB_UK_P37_Officer_Blanco   -- Lt

    switch (_vest) do
    {
        case 1: { _unit addVest "V_LIB_UK_P37_Rifleman_Blanco"; };
        case 2: { _unit addVest "V_LIB_UK_P37_Heavy_Blanco"; };
        case 3: { _unit addVest "V_LIB_UK_P37_Sten_Blanco"; };
        case 4: { _unit addVest "V_LIB_UK_P37_Officer_Blanco"; };
        case 5: { _unit addVest "V__W3_LIB_UK_P37_Medic_Blanco"; };
        default { _unit addVest "V_LIB_UK_P37_Rifleman_Blanco"; };

    };


//Backpack
//_rucksackearray = selectRandom ["B_LIB_UK_HSack_Blanco","B_LIB_UK_HSack_Blanco_Cape","B_LIB_UK_HSack_Blanco_Tea"];
_rucksackearray = selectRandom ["B_W3_LIB_UK_HSack_Blanco","B_W3_LIB_UK_HSack_Blanco_Cape","B_W3_LIB_UK_HSack_Blanco_Tea"];
_unit addBackpack _rucksackearray ;


// Helmet
_helmet = selectRandom ["H_LIB_UK_Para_Helmet_Mk2","H_LIB_UK_Para_Helmet_Mk2_Camo","H_LIB_UK_Para_Helmet_Mk2_Net"];
//_unit addHeadgear "H_LIB_UK_Para_Beret";
//_unit addHeadgear "H_W3_LIB_UK_Para_Beret";
//[_unit, _helmet] call GRAD_slingHelmet_fnc_addSlungHelmet;

_unit addHeadgear _helmet;


// Brillen
//_brillenarray = selectRandom [ "" ];
//_unit addGoggles _brillenarray;

// Sonstiges - Zusatzausrüstung
_unit addItemToUniform "ACE_Flashlight_MX991";

// Medikit
[_unit] call wgr_fnc_loadoutfirstaidkit ;
[_unit] call wgr_fnc_loadoutfood ;

// =========== Link Items ============ //
// Map
_unit linkItem "ItemMap";
// Compass
_unit linkItem "ItemCompass";
// Watch
_unit linkItem "ItemWatch";
