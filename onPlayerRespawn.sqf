// Player's old unit is the second parameter passed to the script.
_newunit = _this select 0;
_oldunit = _this select 1;

//_strRole = str _oldunit select [0,5];

switch (str _oldunit select [0,5]) do
  {
    case "p1_s1": {_newunit setposasl getposasl respawn_loc_s1;};
    case "p1_s2": {_newunit setposasl getposasl respawn_loc_s2;};
    case "p1_s3": {_newunit setposasl getposasl respawn_loc_s3;};
    case "p1_s4": {_newunit setposasl getposasl respawn_loc_s4;};
    case "p1_s5": {_newunit setposasl getposasl respawn_loc_s5;};
    case "p1_s6": {_newunit setposasl getposasl respawn_loc_s6;};
    default {_newunit setposasl getposasl respawn_loc;};
  };

[_newunit] call WGR_fnc_loadoutselect ;
