//============ FOOD ============//

_unit = _this select 0;


_foodarray = ["ACE_MRE_BeefStew","ACE_MRE_ChickenTikkaMasala","ACE_MRE_ChickenHerbDumplings","ACE_MRE_CreamChickenSoup","ACE_MRE_CreamTomatoSoup","ACE_MRE_LambCurry","ACE_MRE_MeatballsPasta","ACE_MRE_SteakVegetables"];
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_Canteen";};
for "_i" from 1 to 2 do {_unit addItemToVest (selectRandom _foodarray);};
//_unit addItemToVest (selectRandom _foodarray);
//_unit addItemToVest (selectRandom _foodarray);

_unit addItem "US_Facepaint";
for "_i" from 1 to 2 do {_unit addItem "immersion_pops_poppack";};
_unit addItem "murshun_cigs_cigpack";
for "_i" from 1 to 2 do {_unit addItem "murshun_cigs_matches";};
