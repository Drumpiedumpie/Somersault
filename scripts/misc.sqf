format ["%1, %2, %3, %4 kg",player, typeOf player, name player, ((loadabs player)/22)tofixed 2]
format ["%1, %2, %3, %4",cursorTarget, typeof cursorTarget,  [cursorTarget] call ace_dragging_fnc_getweight]
Completed_TaskVars


format ["M:%5, W:%6 # De:%1, Red:%2, UK:%3, Civ:%4 # %7",west countside allUnits,east countside allUnits,resistance countside allUnits,civilian countside allUnits,(missionNamespace getVariable ["Mission_Session_ID",0]),(profileNamespace getVariable ["WHp_Mission_Session_ID",0]),Completed_TaskVars]

Give an AI Camoface:
Put in Unit-Init:
faceunit = (face this + "_cfaces_Black");
this setVariable ["JgKp_Face", faceunit, true];

Possible: _cfaces_BWTarn, _cfaces_BWStripes, _cfaces_Black, _cfaces_Serbian, _cfaces_USStripes, _cfaces_USStains, _cfaces_USFlash


US_Facepaint

Goggles//Glasses etc
G_Bandanna_blk
G_Bandanna_aviator
G_Bandanna_
G_Bandanna_oli
G_Bandanna_tan
G_Aviator
G_LIB_Binoculars//alleen optisch--voor officieren?
G_LIB_Dienst_Brille
G_LIB_Dust_Goggles

G_LIB_Scarf1
G_LIB_Scarf2_B
G_LIB_Scarf2_G

G_LIB_Watch1
G_LIB_Watch2



Goggles //NVG
G_LIB_GER_Headset

G_LIB_GER_Gloves1//wol groen
G_LIB_GER_Gloves2//wol grijs
G_LIB_GER_Gloves3//wol khaki
G_LIB_GER_Gloves4 //leader
G_LIB_GER_Gloves5 //US Airborne
G_LIB_GER_Gloves

comment "Add items to containers";
this addItem "ACE_EarPlugs";
this addItem "ACE_epinephrine";
this addItem "MRH_Map";
this addItem "ACE_morphine";
this addItem "ACE_splint";
this addItem "ACE_tourniquet";
this addItem "ACE_elasticBandage";
this addItem "ACE_packingBandage";
this addItem "ACE_quikclot";
this addItem "ACE_EarPlugs";
this addItem "ACE_SpareBarrel";
this addItem "LIB_MillsBomb";
this addItem "LIB_No77";
this addItem "ACE_adenosine";
this addItem "ACE_fieldDressing";
this addItem "ACE_elasticBandage";
this addItem "LIB_10Rnd_770x56";
this addItem "LIB_10Rnd_770x56_MkVIII";
this addItem "LIB_30Rnd_770x56";
this addItem "LIB_30Rnd_770x56_MKVIII";
this addItem "LIB_6Rnd_455";
this addItem "LIB_32Rnd_9x19_Sten";
this addItem "LIB_32rnd_9x19_t";
this addItem "LIB_32Rnd_9x19";
this addItem "murshun_cigs_cigpack";
this addItem "LIB_1Rnd_flare_green";
this addItem "LIB_1Rnd_flare_red";
this addItem "LIB_1Rnd_flare_white";
this addItem "LIB_1Rnd_flare_yellow";
this addItem "murshun_cigs_lighter";
this addItem "immersion_pops_poppack";
this addItem "murshun_cigs_matches";
this addItem "LIB_1Rnd_G_MillsBomb";
this addItem "acex_intelitems_notepad";
this addItem "ifa3_1Rnd_signalflare_red";
this addItem "LIB_No82";
this addItem "LIB_Ladung_Small_MINE_mag";










comment "Exported from Arsenal by Drum (Wieger)";

comment "[!] UNIT MUST BE LOCAL [!]";
if (!local this) exitWith {};

comment "Remove existing items";
removeAllWeapons this;
removeAllItems this;
removeAllAssignedItems this;
removeUniform this;
removeVest this;
removeBackpack this;
removeHeadgear this;
removeGoggles this;

comment "Add weapons";
this addWeapon "LIB_Sten_Mk5";
this addPrimaryWeaponItem "LIB_32Rnd_9x19_Sten";
this addWeapon "LIB_Webley_Flare";
this addHandgunItem "LIB_1Rnd_flare_yellow";

comment "Add containers";
this forceAddUniform "U_LIB_UK_DenisonSmock";
this addVest "V_LIB_UK_P37_Rifleman_Blanco";
this addBackpack "B_W3_LIB_UK_HSack_Blanco";

comment "Add items to containers";
this addItemToUniform "ACE_EarPlugs";
this addItemToUniform "ACE_epinephrine";
this addItemToUniform "ACE_morphine";
this addItemToUniform "ACE_splint";
this addItemToUniform "ACE_tourniquet";
for "_i" from 1 to 4 do {this addItemToUniform "ifa3_1Rnd_signalflare_red";};
this addItemToVest "ACE_elasticBandage";
this addItemToVest "ACE_packingBandage";
this addItemToVest "ACE_quikclot";
this addItemToVest "ACE_EarPlugs";
this addItemToBackpack "LIB_1Rnd_flare_white";
this addItemToBackpack "LIB_1Rnd_flare_red";
this addItemToBackpack "LIB_1Rnd_flare_green";
this addItemToBackpack "LIB_1Rnd_flare_yellow";
for "_i" from 1 to 2 do {this addItemToBackpack "ifa3_1Rnd_signalflare_red";};
this addItemToBackpack "LIB_US_M18";
this addItemToBackpack "LIB_US_M18_Green";
this addItemToBackpack "LIB_US_M18_Red";
this addItemToBackpack "LIB_US_M18_Yellow";
this addHeadgear "H_LIB_UK_Para_Beret";

comment "Add items";
this linkItem "ItemRadioAcreFlagged";

comment "Set identity";
[this,"LIB_WhiteHead_13_Dirt","male01engb"] call BIS_fnc_setIdentity;



//////////////////////////////////////////////////////////
/*
[["sp1","sp2"],east,["rhs_vdv_flora_efreitor","rhs_vdv_flora_grenadier_rpg","rhs_vdv_flora_machinegunner","rhs_vdv_flora_machinegunner_assistant"],at1,100] spawn TFW_fnc_groupattack;
*/
//////////////////////////////////////////////////////////

 _spawnstart = selectRandom ["civ1","civ2","civ3","civ4","civ5","civ6","civ7","civ8","civ9","civ10","civ11","civ12","civ13","civ14","civ15","civ16","civ17","civ18","civ19","civ20","civ21","civ22","civ23","civ24","civ25","civ26","civ27","civ28","civ29","civ30","civ31","civ32","civ33","civ34"];
 _cars = selectRandom ["C_Van_02_medevac_F","C_Van_02_vehicle_F","C_Offroad_02_unarmed_F","C_Hatchback_01_F","C_SUV_01_F","C_Van_01_transport_F","C_Van_02_service_F","RDS_MMT_Civ_01","RDS_Old_bike_Civ_01","RDS_JAWA353_Civ_01","RDS_Lada_Civ_02","RDS_tt650_Civ_01","RDS_Zetor6945_Base","RDS_Gaz24_Civ_03","RDS_Gaz24_Civ_01","RDS_Gaz24_Civ_02","C_IDAP_Truck_02_F","C_Van_02_transport_F","C_IDAP_Offroad_02_unarmed_F","C_IDAP_Offroad_01_F"];
 _spawnend = selectRandom ["civ1","civ2","civ3","civ4","civ5","civ6","civ7","civ8","civ9","civ10","civ11","civ12","civ13","civ14","civ15","civ16","civ17","civ18","civ19","civ20","civ21","civ22","civ23","civ24","civ25","civ26","civ27","civ28","civ29","civ30","civ31","civ32","civ33","civ34"];


 _civcar = _cars createVehicle getMarkerPos _spawnstart ;
 createVehicleCrew _civcar ;

_civgroup = group _civcar ;

[_civgroup , ( getMarkerPos _spawnend ), 2, "MOVE", "AWARE", "YELLOW", "NORMAL", "STAG COLUMN", "deleteVehicle (vehicle this); deleteVehicle this;  call TFW_fnc_civtraffic;", [3,6,9]] call CBA_fnc_addWaypoint;
