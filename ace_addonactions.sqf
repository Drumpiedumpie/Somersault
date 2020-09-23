//GET LOADOUTS OVER ACE

//boo="[this] call compile preprocessFileLineNumbers 'ace_loadouts.sqf'";

//this execVM "ace_loadouts.sqf";

//this = this select 0;

get_br1_lo = ["br1_lo", "Bren #1 loadout","",{[_player] call wgr_fnc_ukparas_bren1;},{true}] call ace_interact_menu_fnc_createAction;
[this,0,["ACE_MainActions"],get_br1_lo] call ace_interact_menu_fnc_addActionToObject;
get_br2_lo = ["br_lo", "Bren #2 loadout","",{[_player] call wgr_fnc_ukparas_bren2;},{true}] call ace_interact_menu_fnc_createAction;
[this,0,["ACE_MainActions"],get_br2_lo] call ace_interact_menu_fnc_addActionToObject;
get_cpl_lo = ["cpl_lo", "Corporal loadout","",{[_player] call wgr_fnc_ukparas_rifleman;},{true}] call ace_interact_menu_fnc_createAction;
[this,0,["ACE_MainActions"],get_cpl_lo] call ace_interact_menu_fnc_addActionToObject;
get_gren_lo = ["gren_lo", "Grenadier loadout","",{[_player] call wgr_fnc_ukparas_grenadier;},{true}] call ace_interact_menu_fnc_createAction;
[this,0,["ACE_MainActions"],get_gren_lo] call ace_interact_menu_fnc_addActionToObject;
get_lt_lo = ["lt_lo", "Lieutenant loadout","",{[_player] call wgr_fnc_ukparas_lieutenant;},{true}] call ace_interact_menu_fnc_createAction;
[this,0,["ACE_MainActions"],get_lt_lo] call ace_interact_menu_fnc_addActionToObject;
get_mm_lo = ["mm_lo", "Marksman loadout","",{[_player] call wgr_fnc_ukparas_marksman;},{true}] call ace_interact_menu_fnc_createAction;
[this,0,["ACE_MainActions"],get_mm_lo] call ace_interact_menu_fnc_addActionToObject;
get_medic_lo = ["medic_lo", "Medic loadout","",{[_player] call wgr_fnc_ukparas_medic;},{true}] call ace_interact_menu_fnc_createAction;
[this,0,["ACE_MainActions"],get_medic_lo] call ace_interact_menu_fnc_addActionToObject;
get_medicass_lo = ["medicass_lo", "Medic Assisant loadout","",{[_player] call wgr_fnc_ukparas_cls;},{true}] call ace_interact_menu_fnc_createAction;
[this,0,["ACE_MainActions"],get_medicass_lo] call ace_interact_menu_fnc_addActionToObject;
get_pilot_lo = ["pilot_lo", "Pilot loadout","",{[_player] call wgr_fnc_ukparas_pilot;},{true}] call ace_interact_menu_fnc_createAction;
[this,0,["ACE_MainActions"],get_pilot_lo] call ace_interact_menu_fnc_addActionToObject;
get_rm_lo = ["rm_lo", "Rifleman loadout","",{[_player] call wgr_fnc_ukparas_rifleman;},{true}] call ace_interact_menu_fnc_createAction;
[this,0,["ACE_MainActions"],get_rm_lo] call ace_interact_menu_fnc_addActionToObject;
get_rme_lo = ["rme_lo", "Rifleman/Explosives loadout","",{[_player] call wgr_fnc_ukparas_eod;},{true}] call ace_interact_menu_fnc_createAction;
[this,0,["ACE_MainActions"],get_rme_lo] call ace_interact_menu_fnc_addActionToObject;
get_mort_lo = ["mor_lo", "Rifleman/Mortar loadout","",{[_player] call wgr_fnc_ukparas_mortar;},{true}] call ace_interact_menu_fnc_createAction;
[this,0,["ACE_MainActions"],get_mort_lo] call ace_interact_menu_fnc_addActionToObject;
get_rmo_lo = ["rmo_lo", "Rifleman/Orderly loadout","",{[_player] call wgr_fnc_ukparas_orderly;},{true}] call ace_interact_menu_fnc_createAction;
[this,0,["ACE_MainActions"],get_rmo_lo] call ace_interact_menu_fnc_addActionToObject;
get_piat_lo = ["piat_lo", "Rifleman/PIAT loadout","",{[_player] call wgr_fnc_ukparas_piat;},{true}] call ace_interact_menu_fnc_createAction;
[this,0,["ACE_MainActions"],get_piat_lo] call ace_interact_menu_fnc_addActionToObject;
get_rdo_lo = ["rdo_lo", "Rifleman/Signals loadout","",{[_player] call wgr_fnc_ukparas_radio;},{true}] call ace_interact_menu_fnc_createAction;
[this,0,["ACE_MainActions"],get_rdo_lo] call ace_interact_menu_fnc_addActionToObject;
get_sgt_lo = ["sgt_lo", "Sergeant loadout","",{[_player] call wgr_fnc_ukparas_sergeant;},{true}] call ace_interact_menu_fnc_createAction;
[this,0,["ACE_MainActions"],get_sgt_lo] call ace_interact_menu_fnc_addActionToObject;

//medical
get_patched_up = ["patchup", "Fix Me Please?","",{[_player] execvm "scripts\patchup.sqf";},{true}] call ace_interact_menu_fnc_createAction;
[this,0,["ACE_MainActions"],get_patched_up] call ace_interact_menu_fnc_addActionToObject;
