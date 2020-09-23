_unit = _this select 0;


removeBackpack _unit;
_unit addBackpack "B_W3_LIB_UK_HSack_Blanco_Medic";

for "_i" from 1 to 8 do {_unit addItemToBackpack "ACE_salineIV_500";};
for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_quikclot";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_tourniquet";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 30 do {_unit addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 30 do {_unit addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_splint";};
