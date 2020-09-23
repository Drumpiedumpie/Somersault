/* ================ init.sqf =============== */
// JIP Check (This code should be placed first line of init.sqf file)
//if (!isServer && isNull player) then {isJIP=true;} else {isJIP=false;};

west setFriend [resistance, 0];
resistance setFriend [west, 0];

enableSaving [false, false];

// 0 preloadObject "Land_Hospital";


setViewDistance 3500; //Max. Sichtweite setzen

// Storyline
_hcvar = "param_hc" call BIS_fnc_getParamValue;

if ( _hcvar == 1 ) then {
    // Run on the HC only
    if !(isServer or hasInterface) then {
        execVM "mission\storyline.sqf";
    };
} else {
    // Run on the server only
    if isServer then {
        execVM "mission\storyline.sqf";
    };
};


_fnc_makeCarrayble = {
    params ["_object"];
    diag_log text format ["Making %1 [%2] Carrable", _object, typeOf _object];
    [_object, true, [0,0.5,1], 0] call ace_dragging_fnc_setCarryable;
};


//////////////////////////////////////////
//Disable chat channels
//////////////////////////////////////////
0 enableChannel false;
1 enableChannel false;
3 enableChannel false;

/*
Channel / Number correspondence:

    0 = Global
    1 = Side
    2 = Command
    3 = Group (cannot be disabled with enableChannel nor Description.ext/disableChannels[])
    4 = Vehicle
    5 = Direct
    6-15 = Custom Radio
*/


//Airport
shed_1 animate ["door_1_rot", 1];shed_1 animate ["door_2_rot", 0.2];
shed_2 animate ["door_1_rot", 0.8];shed_2 animate ["door_2_rot", 0.5];
shed_3 animate ["door_1_rot", 0];shed_3 animate ["door_2_rot", 0.9];
shed_4 animate ["door_1_rot", 1];shed_4 animate ["door_2_rot", 1];
shed_5 animate ["door_1_rot", 1];shed_5 animate ["door_2_rot", 1];
shed_6 animate ["door_1_rot", 1];shed_6 animate ["door_2_rot", 1];
[kist_1,102] execVM "loadcrates.sqf";
[kist_2,103] execVM "loadcrates.sqf";
[kist_3,104] execVM "loadcrates.sqf";
[kist_4,112] execVM "loadcrates.sqf";
[kist_5,101] execVM "loadcrates.sqf";


{[_x, 8] call ace_cargo_fnc_setSpace;} forEach ["c47_1","c47_2","c47_3","c47_4","c47_5","c47_6","c47_7","c47_8","c47_9","c47_10",];

flag_1 setFlagTexture "\A3\Data_F\Flags\flag_uk_CO.paa";
