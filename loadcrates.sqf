_crate = _this select 0;
_suppliestype = _this select 1;
_crateclass = typeOf _crate;

// [CLE_1,"ammo"] execVM "loadcrates.sqf";
// [this,1] execVM "loadcrates.sqf";

//UNI_UK_Willys_MB_MM1 (jeep_1)
//jeep_1 animateDoor ['windshield_rotate',1];

//hint _crateclass;
//hint format["running 222\n %1", _suppliestype];
//hint "running 888";

clearMagazineCargoGlobal _crate;
clearWeaponCargoGlobal _crate;
clearBackpackCargoGlobal _crate;
clearItemCargoGlobal _crate;

switch (_suppliestype) do
  {
    //Ammo
    case "ammo": {
      //LIB_BasicWeaponsBox_UK (CLE_1
      //LIB_BasicAmmunitionBox_US (lbox_1)
      //LIB_AmmoCrate_Mortar_SU (mbox_1)
      //LIB_BasicWeaponsBox_US (sbox_1)
      //this addItemToBackpack "LIB_10Rnd_770x56_MkVIII";
      //this addItemToBackpack "LIB_30Rnd_770x56_MKVIII";

      _crate addItemCargoGlobal ["LIB_10Rnd_770x56", 100];
      _crate addItemCargoGlobal ["LIB_10Rnd_770x56_MkVIII", 100];
      _crate addItemCargoGlobal ["LIB_32Rnd_9x19_Sten", 20];
      _crate addItemCargoGlobal ["LIB_30Rnd_770x56", 40];
      _crate addItemCargoGlobal ["LIB_30Rnd_770x56_MKVIII", 40];
    };
    //Grenades
    case "grenade": {
      _crate addItemCargoGlobal ["LIB_MillsBomb", 60];
      _crate addItemCargoGlobal ["LIB_No77", 60];
      _crate addItemCargoGlobal ["LIB_1Rnd_G_MillsBomb", 50];
    };
    //Food
    case "food": {
      _crate addItemCargoGlobal ["ACE_MRE_BeefStew", 15];
      _crate addItemCargoGlobal ["ACE_MRE_ChickenTikkaMasala", 15];
      _crate addItemCargoGlobal ["ACE_MRE_ChickenHerbDumplings", 15];
      _crate addItemCargoGlobal ["ACE_MRE_CreamChickenSoup", 15];
      _crate addItemCargoGlobal ["ACE_MRE_CreamTomatoSoup", 15];
      _crate addItemCargoGlobal ["ACE_MRE_LambCurry", 15];
      _crate addItemCargoGlobal ["ACE_MRE_MeatballsPasta", 15];
      _crate addItemCargoGlobal ["ACE_MRE_SteakVegetables", 15];
      _crate addItemCargoGlobal ["ACE_Canteen", 150];
      _crate addItemCargoGlobal ["immersion_pops_poppack", 50];
      _crate addItemCargoGlobal ["murshun_cigs_cigpack", 15];
      _crate addItemCargoGlobal ["murshun_cigs_matches", 20];
    };
    //Medical
    case "medic": {
//      _crate addItemCargoGlobal ["ACE_salineIV", 20];
      _crate addItemCargoGlobal ["ACE_salineIV_500", 80];
      _crate addItemCargoGlobal ["ACE_elasticBandage", 200];
      _crate addItemCargoGlobal ["ACE_packingBandage", 200];
      _crate addItemCargoGlobal ["ACE_quikclot", 200];
      _crate addItemCargoGlobal ["ACE_tourniquet", 50];
      _crate addItemCargoGlobal ["ACE_epinephrine", 50];
      _crate addItemCargoGlobal ["ACE_morphine", 100];
      _crate addItemCargoGlobal ["ACE_splint", 50];
      _crate addItemCargoGlobal ["immersion_pops_poppack", 20];
      _crate addItemCargoGlobal ["ACE_bodyBag", 10];
      _crate addItemCargoGlobal ["ACE_Canteen", 50];
      _crate addItemCargoGlobal ["H_LIB_UK_Para_Helmet_Mk2", 5];
      _crate addItemCargoGlobal ["B_LIB_UK_HSack_Blanco", 5];
      _crate addItemCargoGlobal ["V_LIB_UK_P37_Rifleman_Blanco", 5];
    };
    //Platoon
    case "platoon": {
      _crate addItemCargoGlobal ["LIB_10Rnd_770x56", 40];
      _crate addItemCargoGlobal ["LIB_32Rnd_9x19_Sten", 20];
      _crate addItemCargoGlobal ["LIB_30Rnd_770x56", 20];
      _crate addItemCargoGlobal ["LIB_6Rnd_455", 10];
      _crate addItemCargoGlobal ["LIB_MillsBomb", 20];
      _crate addItemCargoGlobal ["LIB_No77", 20];
      _crate addItemCargoGlobal ["ACE_wirecutter", 1];
      _crate addItemCargoGlobal ["ACE_EntrenchingTool", 1];
      _crate addItemCargoGlobal ["ACE_DefusalKit", 1];
      _crate addItemCargoGlobal ["LIB_Bren_Mk2", 1];
      _crate addItemCargoGlobal ["LIB_PIAT", 1];
      _crate addItemCargoGlobal ["LIB_1Rnd_89m_PIAT", 5];
      _crate addItemCargoGlobal ["murshun_cigs_matches", 20];
      _crate addItemCargoGlobal ["murshun_cigs_cigpack", 10];
      _crate addItemCargoGlobal ["immersion_cigs_cigar0", 5];
    };
    //Explosives
    case "explosive": {
      _crate addItemCargoGlobal ["LIB_1Rnd_89m_PIAT", 5];
      _crate addItemCargoGlobal ["twc_2inch_he_1rnd", 40];
      _crate addItemCargoGlobal ["twc_2inch_smoke_1rnd", 20];
      _crate addItemCargoGlobal ["twc_2inch_illum_1rnd", 20];
      _crate addItemCargoGlobal ["LIB_Ladung_Small_MINE_mag", 8];
    };
    case "flare": {
      _crate addItemCargoGlobal ["LIB_FLARE_PISTOL", 5];
      _crate addItemCargoGlobal ["LIB_1Rnd_flare_white", 40];
      _crate addItemCargoGlobal ["LIB_1Rnd_flare_red", 20];
      _crate addItemCargoGlobal ["LIB_1Rnd_flare_green", 20];
      _crate addItemCargoGlobal ["LIB_1Rnd_flare_yellow", 20];
    };
    //Vehicle stuff
    case "parts": {
      _crate addItemCargoGlobal ["ACE_Wheel", 4];
      _crate addItemCargoGlobal ["Land_CanisterFuel_F", 10];
      _crate addItemCargoGlobal ["ACE_Banana", 16];
    };
    //empty
    case "empty": {
    };
    case 1: {
     _crate addItemCargoGlobal ["ToolKit", 10];
     _crate addItemCargoGlobal ["LIB_ToolKit", 10];
     _crate addItemCargoGlobal ["LIB_1Rnd_flare_white", 10];
     _crate addItemCargoGlobal ["LIB_1Rnd_flare_red", 10];
     _crate addItemCargoGlobal ["LIB_1Rnd_flare_green", 10];
     _crate addItemCargoGlobal ["LIB_1Rnd_flare_yellow", 10];
     _crate addItemCargoGlobal ["LIB_6Rnd_9x19_Welrod", 10];
     _crate addItemCargoGlobal ["LIB_7Rnd_765x17", 10];
     _crate addItemCargoGlobal ["LIB_10Rnd_770x56", 10];
     _crate addItemCargoGlobal ["LIB_1Rnd_89m_G_PIAT", 10];
     _crate addItemCargoGlobal ["LIB_30Rnd_770x56", 10];
     _crate addItemCargoGlobal ["LIB_1Rnd_G_MillsBomb", 10];
     _crate addItemCargoGlobal ["LIB_Ladung_Small_MINE_mag", 10];
     _crate addItemCargoGlobal ["LIB_Ladung_Big_MINE_mag", 10];
     _crate addItemCargoGlobal ["LIB_TROTIL_MINE_mag", 10];
     _crate addItemCargoGlobal ["LIB_US_TNT_4pound_mag", 10];
     _crate addItemCargoGlobal ["LIB_PM_MINE_mag", 10];
     _crate addItemCargoGlobal ["LIB_PM_Provod_50", 10];
     _crate addItemCargoGlobal ["LIB_PM_Provod_75", 10];
     _crate addItemCargoGlobal ["LIB_PM_Provod_10", 10];
   };
     case 2: {
     _crate addItemCargoGlobal ["LIB_Ladung_PM_MINE_mag", 10];
     _crate addItemCargoGlobal ["LIB_MARKER_MINE_mag", 10];
     _crate addItemCargoGlobal ["LIB_FLARE_PISTOL", 10];
     _crate addItemCargoGlobal ["LIB_Webley_mk6", 10];
     _crate addItemCargoGlobal ["LIB_Welrod_mk1", 10];
     _crate addItemCargoGlobal ["LIB_Sten_Mk2", 10];
     _crate addItemCargoGlobal ["LIB_Sten_Mk5", 10];
     _crate addItemCargoGlobal ["LIB_Sten_Mk5_Bayonet", 10];
     _crate addItemCargoGlobal ["LIB_DELISLE", 10];
     _crate addItemCargoGlobal ["LIB_LeeEnfield_No4", 10];
     _crate addItemCargoGlobal ["LIB_PIAT_Rifle", 10];
     _crate addItemCargoGlobal ["LIB_LeeEnfield_No4_Bayonet", 10];
     _crate addItemCargoGlobal ["LIB_LeeEnfield_No4_CUP", 10];
     _crate addItemCargoGlobal ["LIB_LeeEnfield_No1", 10];
     _crate addItemCargoGlobal ["LIB_LeeEnfield_No1_Bayonet", 10];
     _crate addItemCargoGlobal ["LIB_LeeEnfield_No1_CUP", 10];
     _crate addItemCargoGlobal ["LIB_Bren_Mk2", 10];
     _crate addItemCargoGlobal ["LIB_LeeEnfield_No4_Scoped", 10];
     _crate addItemCargoGlobal ["LIB_LeeEnfield_No4_Scoped_CUP", 10];
     _crate addItemCargoGlobal ["LIB_PIAT", 10];
   };
     case 3: {
     _crate addItemCargoGlobal ["LIB_6Rnd_455", 10];
     _crate addItemCargoGlobal ["LIB_6Rnd_9x19_Welrod", 10];
     _crate addItemCargoGlobal ["LIB_7Rnd_765x17", 10];
     _crate addItemCargoGlobal ["LIB_32Rnd_9x19_Sten", 10];
     _crate addItemCargoGlobal ["LIB_7Rnd_45ACP", 10];
     _crate addItemCargoGlobal ["LIB_1Rnd_89m_G_PIAT", 10];
     _crate addItemCargoGlobal ["LIB_1Rnd_89m_PIAT", 10];
     _crate addItemCargoGlobal ["LIB_30Rnd_770x56", 10];
     _crate addItemCargoGlobal ["LIB_10Rnd_770x56", 10];
     _crate addItemCargoGlobal ["LIB_LeeEnfield_No4_RG", 10];
     _crate addItemCargoGlobal ["B_LIB_US_Radio", 10];
     _crate addItemCargoGlobal ["B_LIB_US_Radio_ACRE2", 10];
     _crate addItemCargoGlobal ["LIB_FLARE_PISTOL", 10];
     _crate addItemCargoGlobal ["LIB_1Rnd_flare_white", 10];
     _crate addItemCargoGlobal ["LIB_1Rnd_flare_red", 10];
     _crate addItemCargoGlobal ["LIB_1Rnd_flare_green", 10];
     _crate addItemCargoGlobal ["LIB_1Rnd_flare_yellow", 10];
   };
   case 4: {
     _crate addItemCargoGlobal ["lib_m392", 10];
     _crate addItemCargoGlobal ["LIB_US_M18", 10];
     _crate addItemCargoGlobal ["LIB_US_M18_Green", 10];
     _crate addItemCargoGlobal ["LIB_US_M18_Red", 10];
     _crate addItemCargoGlobal ["LIB_US_M18_Yellow", 10];
     _crate addItemCargoGlobal ["LIB_RDG", 10];
     _crate addItemCargoGlobal ["LIB_US_M18", 10];
     _crate addItemCargoGlobal ["LIB_US_M18_Green", 10];
     _crate addItemCargoGlobal ["LIB_US_M18_Red", 10];
     _crate addItemCargoGlobal ["LIB_US_M18_Yellow", 10];
     _crate addItemCargoGlobal ["ifa3_TS_Small", 10]; //throwable satchel
     _crate addItemCargoGlobal ["ifa3_TS_BIG", 10]; //throwable satchel
     _crate addItemCargoGlobal ["SmokeShell", 10];
     _crate addItemCargoGlobal ["SmokeShellYellow", 10];
     _crate addItemCargoGlobal ["SmokeShellRed", 10];
     _crate addItemCargoGlobal ["SmokeShellPurple", 10];
     _crate addItemCargoGlobal ["SmokeShellOrange", 10];
     _crate addItemCargoGlobal ["SmokeShellGreen", 10];
   };
   case 5: {
     _crate addItemCargoGlobal ["SmokeShellBlue", 10];
     _crate addItemCargoGlobal ["G_Bandanna_blk", 10];
     _crate addItemCargoGlobal ["G_Bandanna_khk", 10];
     _crate addItemCargoGlobal ["G_Bandanna_oli", 10];
     _crate addItemCargoGlobal ["G_Bandanna_tan", 10];
     _crate addItemCargoGlobal ["G_LIB_Scarf_B", 10];
     _crate addItemCargoGlobal ["G_LIB_Scarf_G", 10];
     _crate addItemCargoGlobal ["G_LIB_Scarf2_B", 10];
     _crate addItemCargoGlobal ["G_LIB_Scarf2_G", 10];
   };
    /*
    case rifles: {
      _crate addItemCargoGlobal ["ACE_Banana", 6];
    };
    case 7: {
      _crate addItemCargoGlobal ["ACE_Banana", 7];
    };
    */
    case 101: {
    //Medical@the base
    _crate addItemCargoGlobal ["ACE_adenosine", 50];
    _crate addItemCargoGlobal ["ACE_EarPlugs", 50];
    _crate addItemCargoGlobal ["ACE_elasticBandage", 250];
    _crate addItemCargoGlobal ["ACE_epinephrine", 50];
    _crate addItemCargoGlobal ["ACE_fieldDressing", 250];
    _crate addItemCargoGlobal ["ACE_morphine", 100];
    _crate addItemCargoGlobal ["ACE_packingBandage", 250];
    _crate addItemCargoGlobal ["ACE_quikclot", 250];
    _crate addItemCargoGlobal ["ACE_splint", 50];
    _crate addItemCargoGlobal ["ACE_tourniquet", 50];
    _crate addItemCargoGlobal ["ACE_salineIV_250", 50];
    _crate addItemCargoGlobal ["ACE_salineIV_500", 50];
    _crate addItemCargoGlobal ["ACE_salineIV", 50];
    };
    case 102: {
      //Accessories@the base
//      _crate addItemCargoGlobal ["G_Aviator", 20];
      _crate addItemCargoGlobal ["G_Bandanna_", 20];
//      _crate addItemCargoGlobal ["G_Bandanna_aviator", 20];
      _crate addItemCargoGlobal ["G_Bandanna_blk", 20];
      _crate addItemCargoGlobal ["G_Bandanna_oli", 20];
      _crate addItemCargoGlobal ["G_Bandanna_tan", 20];
//      _crate addItemCargoGlobal ["G_LIB_Binoculars", 20]; //alleen optisch--voor officieren?
      _crate addItemCargoGlobal ["G_LIB_Dienst_Brille", 20];
      _crate addItemCargoGlobal ["G_LIB_Dust_Goggles", 20];
      _crate addItemCargoGlobal ["G_LIB_GER_Gloves", 20];
      _crate addItemCargoGlobal ["G_LIB_GER_Gloves1//wol groen", 20];
      _crate addItemCargoGlobal ["G_LIB_GER_Gloves2//wol grijs", 20];
      _crate addItemCargoGlobal ["G_LIB_GER_Gloves3//wol khaki", 20];
      _crate addItemCargoGlobal ["G_LIB_GER_Gloves4 //leader", 20];
      _crate addItemCargoGlobal ["G_LIB_GER_Gloves5 //US Airborne", 20];
      _crate addItemCargoGlobal ["G_LIB_Scarf1", 20];
      _crate addItemCargoGlobal ["G_LIB_Scarf2_B", 20];
      _crate addItemCargoGlobal ["G_LIB_Scarf2_G", 20];
      _crate addItemCargoGlobal ["G_LIB_Watch1", 20];
      _crate addItemCargoGlobal ["G_LIB_Watch2", 20];
    };
    case 103: {
      //Weapons@the base
      _crate addItemCargoGlobal ["LIB_Bren_Mk2", 20];
      _crate addItemCargoGlobal ["LIB_DELISLE", 20];
      _crate addItemCargoGlobal ["LIB_LeeEnfield_No1", 20];
      _crate addItemCargoGlobal ["LIB_LeeEnfield_No1_Bayonet", 20];
      _crate addItemCargoGlobal ["LIB_LeeEnfield_No1_CUP", 20];
      _crate addItemCargoGlobal ["LIB_LeeEnfield_No4", 20];
      _crate addItemCargoGlobal ["LIB_LeeEnfield_No4_Bayonet", 20];
      _crate addItemCargoGlobal ["LIB_LeeEnfield_No4_CUP", 20];
      _crate addItemCargoGlobal ["LIB_LeeEnfield_No4_RG", 20];
      _crate addItemCargoGlobal ["LIB_LeeEnfield_No4_Scoped", 20];
      _crate addItemCargoGlobal ["LIB_LeeEnfield_No4_Scoped_CUP", 20];
      _crate addItemCargoGlobal ["LIB_Sten_Mk2", 20];
      _crate addItemCargoGlobal ["LIB_Sten_Mk5", 20];
      _crate addItemCargoGlobal ["LIB_Sten_Mk5_Bayonet", 20];
      _crate addItemCargoGlobal ["LIB_Webley_mk6", 20];
//      _crate addItemCargoGlobal ["LIB_Welrod_mk1", 20];
    };
    case 104: {
      //Magazines@the base
      _crate addItemCargoGlobal ["LIB_10Rnd_770x56", 500];
//      _crate addItemCargoGlobal ["LIB_10Rnd_770x56_MkVIII", 500];
      _crate addItemCargoGlobal ["LIB_30Rnd_770x56", 200];
//      _crate addItemCargoGlobal ["LIB_30Rnd_770x56_MKVIII", 500];
//      _crate addItemCargoGlobal ["LIB_32Rnd_9x19", 500];
      _crate addItemCargoGlobal ["LIB_32Rnd_9x19_Sten", 200];
      _crate addItemCargoGlobal ["LIB_32rnd_9x19_t", 200];
      _crate addItemCargoGlobal ["LIB_6Rnd_455", 100];
//      _crate addItemCargoGlobal ["LIB_6Rnd_9x19_Welrod", 100];
      _crate addItemCargoGlobal ["LIB_7Rnd_45ACP", 100];
      _crate addItemCargoGlobal ["LIB_7Rnd_765x17", 100];
    };
    case 105: {
      //Projectiles@the base
//      _crate addItemCargoGlobal ["LIB_PIAT_Rifle", 5];
      _crate addItemCargoGlobal ["LIB_PIAT", 5];
//      _crate addItemCargoGlobal ["LIB_1Rnd_89m_G_PIAT", 50];
      _crate addItemCargoGlobal ["LIB_1Rnd_89m_PIAT", 50];
      _crate addItemCargoGlobal ["twc_2inch_bag", 5];
      _crate addItemCargoGlobal ["twc_2inch_he_1rnd", 50];
      _crate addItemCargoGlobal ["twc_2inch_smoke_1rnd", 50];
      _crate addItemCargoGlobal ["twc_2inch_illum_1rnd", 50];
    };
    case 106: {
      //Grenades@the base
      _crate addItemCargoGlobal ["LIB_1Rnd_G_MillsBomb", 250];
      _crate addItemCargoGlobal ["LIB_MillsBomb", 250];
      _crate addItemCargoGlobal ["LIB_No77", 250];
      _crate addItemCargoGlobal ["LIB_No82", 250];
      _crate addItemCargoGlobal ["LIB_US_M18", 250];
      _crate addItemCargoGlobal ["LIB_US_M18_Green", 250];
      _crate addItemCargoGlobal ["LIB_US_M18_Red", 250];
      _crate addItemCargoGlobal ["LIB_US_M18_Yellow", 250];
    };
    case 107: {
      //Explosives@the base
      _crate addItemCargoGlobal ["LIB_Ladung_Big_MINE_mag", 20];
      _crate addItemCargoGlobal ["LIB_Ladung_PM_MINE_mag", 20];
      _crate addItemCargoGlobal ["LIB_Ladung_Small_MINE_mag", 20];
      _crate addItemCargoGlobal ["LIB_MARKER_MINE_mag", 20];
      _crate addItemCargoGlobal ["LIB_PM_MINE_mag", 20];
      _crate addItemCargoGlobal ["LIB_PM_Provod_10", 21];
      _crate addItemCargoGlobal ["LIB_PM_Provod_50", 20];
      _crate addItemCargoGlobal ["LIB_PM_Provod_75", 20];
      _crate addItemCargoGlobal ["LIB_TROTIL_MINE_mag", 20];
      _crate addItemCargoGlobal ["LIB_US_TNT_4pound_mag", 20];
    };
    case 108: {
      //Clothing@the base
      _crate addBackpackCargoGlobal ["B_LIB_US_Radio_ACRE2", 2];
//      _crate addBackpackCargoGlobal ["B_LIB_US_Radio", 5];
      _crate addBackpackCargoGlobal ["B_W3_LIB_UK_HSack_Blanco", 5];
//      _crate addBackpackGlobal ["B_LIB_US_Radio_ACRE2", 10];
//      _crate addBackpackGlobal  ["B_LIB_US_Radio", 20];
//      _crate addBackpackGlobal  ["B_W3_LIB_UK_HSack_Blanco", 10];
      _crate addItemCargoGlobal ["U_LIB_UK_DenisonSmock", 5];
      _crate addItemCargoGlobal ["V_LIB_UK_P37_Rifleman_Blanco", 5];
      _crate addItemCargoGlobal ["H_LIB_UK_Para_Beret", 50];
      _crate addItemCargoGlobal ["H_LIB_UK_Para_Helmet_Mk2", 50];
//      _crate addItemCargoGlobal ["ItemRadioAcreFlagged", 20];
    };
    case 109: {
      //Miscellaneous@the base
      _crate addItemCargoGlobal ["MRH_Map", 20];
      _crate addItemCargoGlobal ["US_Facepaint", 20];
      _crate addItemCargoGlobal ["acex_intelitems_notepad", 20];
      _crate addItemCargoGlobal ["ACE_SpareBarrel", 20];
      _crate addItemCargoGlobal ["G_LIB_GER_Headset", 20];
      _crate addItemCargoGlobal ["ACE_Flashlight_MX991", 20];
      _crate addItemCargoGlobal ["ItemMap", 20];
      _crate addItemCargoGlobal ["ItemCompass", 20];
      _crate addItemCargoGlobal ["ItemWatch", 20];
    };
    case 110: {
      //Flares@the base
      _crate addItemCargoGlobal ["LIB_FLARE_PISTOL", 10];
      _crate addItemCargoGlobal ["LIB_Webley_Flare", 10];
      _crate addItemCargoGlobal ["LIB_1Rnd_flare_green", 500];
      _crate addItemCargoGlobal ["LIB_1Rnd_flare_red", 500];
      _crate addItemCargoGlobal ["LIB_1Rnd_flare_white", 500];
      _crate addItemCargoGlobal ["LIB_1Rnd_flare_yellow", 500];

    };
    case 111: {
      //Specialty@the base
      _crate addItemCargoGlobal ["murshun_cigs_matches", 20];
      _crate addItemCargoGlobal ["murshun_cigs_cigpack", 20];
      _crate addItemCargoGlobal ["murshun_cigs_lighter", 20];
      _crate addItemCargoGlobal ["LIB_GER_Headset", 5];
      _crate addItemCargoGlobal ["Toolkit", 5];
      _crate addItemCargoGlobal ["ACE_surgicalKit", 5];
      _crate addItemCargoGlobal ["LIB_Binocular_UK", 20];
      _crate addItemCargoGlobal ["ACE_DefusalKit", 5];
      _crate addItemCargoGlobal ["ACE_EntrenchingTool", 20];
      _crate addItemCargoGlobal ["immersion_cigs_cigar0", 5];
    };
    case 112: {
      //Food@the base
      _crate addItemCargoGlobal ["immersion_pops_poppack", 75];
      _crate addItemCargoGlobal ["ACE_Canteen", 250];
      _crate addItemCargoGlobal ["ACE_MRE_BeefStew", 75];
      _crate addItemCargoGlobal ["ACE_MRE_ChickenTikkaMasala", 75];
      _crate addItemCargoGlobal ["ACE_MRE_ChickenHerbDumplings", 75];
      _crate addItemCargoGlobal ["ACE_MRE_CreamChickenSoup", 75];
      _crate addItemCargoGlobal ["ACE_MRE_CreamTomatoSoup", 75];
      _crate addItemCargoGlobal ["ACE_MRE_LambCurry", 75];
      _crate addItemCargoGlobal ["ACE_MRE_MeatballsPasta", 75];
      _crate addItemCargoGlobal ["ACE_MRE_SteakVegetables", 75];
    };
    case 113: {
      //###@the base
    };
    case 114: {
      //###@the base
    };
    case 115: {
      //###@the base
    };
    case 116: {
      //###@the base
    };
    case 117: {
      //###@the base
    };
    case 118: {
      //###@the base
    };
    case 119: {
      //###@the base
    };
    case 120: {
      //###@the base
    };


    /*
    };
    */

    default {
      _crate addItemCargoGlobal ["ACE_Banana", 999];
    };

  };

[_crate, true, [0, 2, 0], 60] call ace_dragging_fnc_setDraggable;
[_crate, true, [0, 0.7, 1], 0] call ace_dragging_fnc_setCarryable;
_crate allowDamage false;


//      _crate addItemCargoGlobal ["LIB_MillsBomb", 20];
//      _crate addItemCargoGlobal ["LIB_No77", 20];
//      _crate addItemCargoGlobal ["LIB_1Rnd_G_MillsBomb", 20];
//      _crate addItemCargoGlobal ["LIB_LeeEnfield_No4", 2];
//      _crate addItemCargoGlobal ["LIB_LeeEnfield_No4", 2];
//      _crate addItemCargoGlobal ["LIB_FLARE_PISTOL", 5];
//      _crate addItemCargoGlobal ["LIB_1Rnd_flare_white", 30];
//      _crate addItemCargoGlobal ["LIB_1Rnd_flare_red", 15];
//      _crate addItemCargoGlobal ["LIB_1Rnd_flare_green", 15];
//      _crate addItemCargoGlobal ["LIB_Bren_Mk2", 1];
//      _crate addItemCargoGlobal ["LIB_30Rnd_770x56", 30];
//      _crate addItemCargoGlobal ["LIB_PIAT", 1];
//      _crate addItemCargoGlobal ["LIB_1Rnd_89m_PIAT", 5];
//      _crate addItemCargoGlobal ["immersion_cigs_cigar0", 5];
//      _crate addItemCargoGlobal ["murshun_cigs_matches", 20];
//      _crate addItemCargoGlobal ["murshun_cigs_cigpack", 10];
//      _crate addItemCargoGlobal ["LIB_FLARE_PISTOL", 5];
//      _crate addItemCargoGlobal ["LIB_1Rnd_flare_white", 40];
//      _crate addItemCargoGlobal ["LIB_1Rnd_flare_red", 20];
//      _crate addItemCargoGlobal ["LIB_1Rnd_flare_green", 20];
//      _crate addItemCargoGlobal ["LIB_1Rnd_flare_yellow", 20];
//      _crate addItemCargoGlobal ["LIB_PIAT", 1];
//      _crate addItemCargoGlobal ["LIB_US_TNT_4pound_mag", 2];




/*
if (isServer) then {
clearItemCargo this;
ClearWeaponCargo this;
ClearMagazineCargo this;
this addItemCargoGlobal ["ToolKit", 10];
this addItemCargoGlobal ["LIB_ToolKit", 10];
this addItemCargoGlobal ["LIB_1Rnd_flare_white", 10];
this addItemCargoGlobal ["LIB_1Rnd_flare_red", 10];
this addItemCargoGlobal ["LIB_1Rnd_flare_green", 10];
this addItemCargoGlobal ["LIB_1Rnd_flare_yellow", 10];
this addItemCargoGlobal ["LIB_6Rnd_455", 10];
this addItemCargoGlobal ["LIB_6Rnd_9x19_Welrod", 10];
this addItemCargoGlobal ["LIB_7Rnd_765x17", 10];
this addItemCargoGlobal ["LIB_32Rnd_9x19_Sten", 10];
this addItemCargoGlobal ["LIB_10Rnd_770x56", 10];
this addItemCargoGlobal ["LIB_1Rnd_89m_G_PIAT", 10];
this addItemCargoGlobal ["LIB_1Rnd_89m_PIAT", 10];
this addItemCargoGlobal ["LIB_30Rnd_770x56", 10];
this addItemCargoGlobal ["LIB_MillsBomb", 10];
this addItemCargoGlobal ["LIB_No82", 10];
this addItemCargoGlobal ["LIB_No77", 10];
this addItemCargoGlobal ["LIB_1Rnd_G_MillsBomb", 10];
this addItemCargoGlobal ["LIB_Ladung_Small_MINE_mag", 10];
this addItemCargoGlobal ["LIB_Ladung_Big_MINE_mag", 10];
this addItemCargoGlobal ["LIB_TROTIL_MINE_mag", 10];
this addItemCargoGlobal ["LIB_US_TNT_4pound_mag", 10];
this addItemCargoGlobal ["LIB_PM_MINE_mag", 10];
this addItemCargoGlobal ["LIB_PM_Provod_50", 10];
this addItemCargoGlobal ["LIB_PM_Provod_75", 10];
this addItemCargoGlobal ["LIB_PM_Provod_10", 10];
this addItemCargoGlobal ["LIB_Ladung_PM_MINE_mag", 10];
this addItemCargoGlobal ["LIB_MARKER_MINE_mag", 10];
this addItemCargoGlobal ["LIB_FLARE_PISTOL", 10];
this addItemCargoGlobal ["LIB_Webley_mk6", 10];
this addItemCargoGlobal ["LIB_Welrod_mk1", 10];
this addItemCargoGlobal ["LIB_Sten_Mk2", 10];
this addItemCargoGlobal ["LIB_Sten_Mk5", 10];
this addItemCargoGlobal ["LIB_Sten_Mk5_Bayonet", 10];
this addItemCargoGlobal ["LIB_DELISLE", 10];
this addItemCargoGlobal ["LIB_LeeEnfield_No4", 10];
this addItemCargoGlobal ["LIB_PIAT_Rifle", 10];
this addItemCargoGlobal ["LIB_LeeEnfield_No4_Bayonet", 10];
this addItemCargoGlobal ["LIB_LeeEnfield_No4_CUP", 10];
this addItemCargoGlobal ["LIB_LeeEnfield_No1", 10];
this addItemCargoGlobal ["LIB_LeeEnfield_No1_Bayonet", 10];
this addItemCargoGlobal ["LIB_LeeEnfield_No1_CUP", 10];
this addItemCargoGlobal ["LIB_Bren_Mk2", 10];
this addItemCargoGlobal ["LIB_LeeEnfield_No4_Scoped", 10];
this addItemCargoGlobal ["LIB_LeeEnfield_No4_Scoped_CUP", 10];
this addItemCargoGlobal ["LIB_PIAT", 10];
this addItemCargoGlobal ["LIB_1Rnd_flare_white", 10];
this addItemCargoGlobal ["LIB_1Rnd_flare_red", 10];
this addItemCargoGlobal ["LIB_1Rnd_flare_green", 10];
this addItemCargoGlobal ["LIB_1Rnd_flare_yellow", 10];
this addItemCargoGlobal ["LIB_6Rnd_455", 10];
this addItemCargoGlobal ["LIB_6Rnd_9x19_Welrod", 10];
this addItemCargoGlobal ["LIB_7Rnd_765x17", 10];
this addItemCargoGlobal ["LIB_32Rnd_9x19_Sten", 10];
this addItemCargoGlobal ["LIB_7Rnd_45ACP", 10];
this addItemCargoGlobal ["LIB_1Rnd_89m_G_PIAT", 10];
this addItemCargoGlobal ["LIB_1Rnd_89m_PIAT", 10];
this addItemCargoGlobal ["LIB_30Rnd_770x56", 10];
this addItemCargoGlobal ["LIB_10Rnd_770x56", 10];
this addItemCargoGlobal ["LIB_LeeEnfield_No4_RG", 10];
this addItemCargoGlobal ["B_LIB_US_Radio", 10];
this addItemCargoGlobal ["B_LIB_US_Radio_ACRE2", 10];
}

if (isServer) then {
clearItemCargo this;
ClearWeaponCargo this;
ClearMagazineCargo this;
this addItemCargoGlobal ["ToolKit", 10];
this addItemCargoGlobal ["LIB_ToolKit", 10];
this addItemCargoGlobal ["LIB_1Rnd_flare_white", 10];
this addItemCargoGlobal ["LIB_1Rnd_flare_red", 10];
this addItemCargoGlobal ["LIB_1Rnd_flare_green", 10];
this addItemCargoGlobal ["LIB_1Rnd_flare_yellow", 10];
this addItemCargoGlobal ["LIB_6Rnd_455", 10];
this addItemCargoGlobal ["LIB_6Rnd_9x19_Welrod", 10];
this addItemCargoGlobal ["LIB_7Rnd_765x17", 10];
this addItemCargoGlobal ["LIB_32Rnd_9x19_Sten", 10];
this addItemCargoGlobal ["LIB_10Rnd_770x56", 10];
this addItemCargoGlobal ["LIB_1Rnd_89m_G_PIAT", 10];
this addItemCargoGlobal ["LIB_1Rnd_89m_PIAT", 11];
this addItemCargoGlobal ["LIB_30Rnd_770x56", 10];
this addItemCargoGlobal ["LIB_MillsBomb", 10];
this addItemCargoGlobal ["LIB_No82", 10];
this addItemCargoGlobal ["LIB_No77", 10];
this addItemCargoGlobal ["LIB_1Rnd_G_MillsBomb", 10];
this addItemCargoGlobal ["LIB_Ladung_Small_MINE_mag", 10];
this addItemCargoGlobal ["LIB_Ladung_Big_MINE_mag", 10];
this addItemCargoGlobal ["LIB_TROTIL_MINE_mag", 10];
this addItemCargoGlobal ["LIB_US_TNT_4pound_mag", 10];
this addItemCargoGlobal ["LIB_PM_MINE_mag", 10];
this addItemCargoGlobal ["LIB_PM_Provod_50", 10];
this addItemCargoGlobal ["LIB_PM_Provod_75", 10];
this addItemCargoGlobal ["LIB_PM_Provod_10", 10];
this addItemCargoGlobal ["LIB_Ladung_PM_MINE_mag", 10];
this addItemCargoGlobal ["LIB_MARKER_MINE_mag", 10];
this addItemCargoGlobal ["LIB_FLARE_PISTOL", 10];
this addItemCargoGlobal ["LIB_Webley_mk6", 10];
this addItemCargoGlobal ["LIB_Welrod_mk1", 10];
this addItemCargoGlobal ["LIB_Sten_Mk2", 10];
this addItemCargoGlobal ["LIB_Sten_Mk5", 10];
this addItemCargoGlobal ["LIB_Sten_Mk5_Bayonet", 10];
this addItemCargoGlobal ["LIB_DELISLE", 10];
this addItemCargoGlobal ["LIB_LeeEnfield_No4", 10];
this addItemCargoGlobal ["LIB_PIAT_Rifle", 10];
this addItemCargoGlobal ["LIB_LeeEnfield_No4_Bayonet", 10];
this addItemCargoGlobal ["LIB_LeeEnfield_No4_CUP", 10];
this addItemCargoGlobal ["LIB_LeeEnfield_No1", 10];
this addItemCargoGlobal ["LIB_LeeEnfield_No1_Bayonet", 10];
this addItemCargoGlobal ["LIB_LeeEnfield_No1_CUP", 10];
this addItemCargoGlobal ["LIB_Bren_Mk2", 10];
this addItemCargoGlobal ["LIB_LeeEnfield_No4_Scoped", 10];
this addItemCargoGlobal ["LIB_LeeEnfield_No4_Scoped_CUP", 10];
this addItemCargoGlobal ["LIB_PIAT", 11];
this addItemCargoGlobal ["LIB_1Rnd_flare_white", 10];
this addItemCargoGlobal ["LIB_1Rnd_flare_red", 10];
this addItemCargoGlobal ["LIB_1Rnd_flare_green", 10];
this addItemCargoGlobal ["LIB_1Rnd_flare_yellow", 10];
this addItemCargoGlobal ["LIB_6Rnd_455", 10];
this addItemCargoGlobal ["LIB_6Rnd_9x19_Welrod", 10];
this addItemCargoGlobal ["LIB_7Rnd_765x17", 10];
this addItemCargoGlobal ["LIB_32Rnd_9x19_Sten", 10];
this addItemCargoGlobal ["LIB_7Rnd_45ACP", 10];
this addItemCargoGlobal ["LIB_1Rnd_89m_G_PIAT", 10];
this addItemCargoGlobal ["LIB_1Rnd_89m_PIAT", 10];
this addItemCargoGlobal ["LIB_30Rnd_770x56", 10];
this addItemCargoGlobal ["LIB_10Rnd_770x56", 10];
this addItemCargoGlobal ["LIB_LeeEnfield_No4_RG", 10];
this addItemCargoGlobal ["B_LIB_US_Radio", 10];
this addItemCargoGlobal ["B_LIB_US_Radio_ACRE2", 10];
}

if (isServer) then {
clearItemCargo this;
ClearWeaponCargo this;
ClearMagazineCargo this;
this addItemCargoGlobal ["B_LIB_US_Radio", 10];
this addItemCargoGlobal ["B_LIB_US_Radio_ACRE2", 10];
}

if (isServer) then {
clearItemCargo this;
ClearWeaponCargo this;
ClearMagazineCargo this;
this addItemCargoGlobal ["LIB_1Rnd_89m_G_PIAT", 10];
this addItemCargoGlobal ["LIB_1Rnd_89m_PIAT", 11];
this addItemCargoGlobal ["LIB_MillsBomb", 10];
this addItemCargoGlobal ["LIB_No82", 10];
this addItemCargoGlobal ["LIB_No77", 10];
this addItemCargoGlobal ["LIB_1Rnd_G_MillsBomb", 11];
this addItemCargoGlobal ["LIB_Ladung_Small_MINE_mag", 10];
this addItemCargoGlobal ["LIB_Ladung_Big_MINE_mag", 10];
this addItemCargoGlobal ["LIB_TROTIL_MINE_mag", 11];
this addItemCargoGlobal ["LIB_US_TNT_4pound_mag", 10];
this addItemCargoGlobal ["LIB_PM_MINE_mag", 10];
this addItemCargoGlobal ["LIB_PM_Provod_50", 10];
this addItemCargoGlobal ["LIB_PM_Provod_75", 10];
this addItemCargoGlobal ["LIB_PM_Provod_10", 10];
this addItemCargoGlobal ["LIB_Ladung_PM_MINE_mag", 10];
this addItemCargoGlobal ["LIB_MARKER_MINE_mag", 10];
this addItemCargoGlobal ["LIB_FLARE_PISTOL", 10];
this addItemCargoGlobal ["B_LIB_US_Radio", 10];
this addItemCargoGlobal ["B_LIB_US_Radio_ACRE2", 10];
}
*/
