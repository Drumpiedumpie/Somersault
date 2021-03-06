_array =
[["Land_Sleeping_bag_blue_F",[-3.02823,-2.85629,4.2005],[0.258819,-0.965926,-0.000156726],[0.000167478,-0.000117379,1]],["Land_Tableware_01_cup_F",[-3.55948,-1.95053,1.05783],[0.258819,0.965926,-7.60192e-008],[-1.81724e-007,1.27358e-007,1]],["Land_Can_V1_F",[-3.5712,-2.14926,1.04889],[0.866025,0.5,9.36852e-008],[-1.81724e-007,1.27358e-007,1]],["Land_PlasticBucket_01_closed_F",[-3.48819,0.013335,4.39755],[-0.965926,0.25882,0.000192151],[0.000167478,-0.000117379,1]],["Land_Icebox_F",[-3.36515,-2.23886,1.04449],[-1,1.2219e-006,-1.81666e-007],[-1.81705e-007,1.27386e-007,1]],["Land_Pillow_old_F",[-2.60636,-3.65805,4.23043],[1.40965e-005,0.999969,0.00786188],[0.00713742,-0.00786178,0.999944]],["Land_BarrelWater_grey_F",[-3.36417,-0.73813,4.57952],[-0.965926,0.25882,0.000192151],[0.000167478,-0.000117379,1]],["Fridge_01_open_F",[-3.02628,1.40274,4.69314],[-0.719339,0.694659,0.000202012],[0.000167478,-0.000117379,1]],["Land_Can_V3_F",[1.76474,0.0282276,0.442959],[0.707106,-0.707107,0.000760376],[-0.000632228,0.000443107,1]],["Land_Can_Rusty_F",[1.76181,0.0135791,1.7919],[-0.707106,0.707107,-0.000760376],[-0.000632228,0.000443107,1]],["Land_Can_V1_F",[1.76181,-1.48593,1.79],[0.707107,0.707107,0.000133729],[-0.000632228,0.000443107,1]],["Land_Tableware_01_stackOfNapkins_F",[1.71981,-1.33969,1.78881],[-0.258818,0.965926,-0.00059164],[-0.000632228,0.000443107,1]],["Land_WaterBottle_01_full_F",[1.74423,-0.484956,1.42978],[-0.866026,-0.5,-0.000325972],[-0.000632228,0.000443107,1]],["Land_FlowerPot_01_F",[-1.57511,-5.63339,0.46957],[2.98023e-008,1,-1.27358e-007],[-1.81724e-007,1.27358e-007,1]],["Land_MetalBarrel_empty_F",[1.38485,-1.36313,4.59658],[-1,1.2219e-006,-0.00014251],[-0.00014251,9.98804e-005,1]],["Land_BottlePlastic_V2_F",[1.78622,-0.609712,1.43594],[-2.98023e-008,-1,0.000443107],[-0.000632228,0.000443107,1]],["Land_Can_V1_F",[1.76181,0.013335,0.885708],[-2.98023e-008,-1,0.000443107],[-0.000632228,0.000443107,1]],["Land_Can_V2_F",[1.76962,-1.20908,0.894161],[-0.866026,-0.5,-0.000325972],[-0.000632228,0.000443107,1]],["Land_Can_V3_F",[1.76278,-1.11118,0.894039],[-2.98023e-008,-1,0.000443107],[-0.000632228,0.000443107,1]],["Land_PlasticBucket_01_open_F",[1.53329,1.63663,0.525814],[-0.965926,-0.258819,-5.23677e-005],[-6.67505e-005,4.67831e-005,1]],["Land_Metal_rack_F",[1.75888,-0.240571,1.20309],[1,-5.96046e-008,6.67505e-005],[-6.67505e-005,4.67831e-005,1]],["Land_Metal_rack_F",[1.75888,-1.49008,1.20309],[1,-5.96046e-008,6.67505e-005],[-6.67505e-005,4.67831e-005,1]],["Land_PowderedMilk_F",[1.74911,-1.91416,0.867641],[-2.98023e-008,-1,0.000443107],[-0.000632228,0.000443107,1]]]
;



//_house = screenToWorld getMousePosition nearestObject "House_F";
_house = screenToWorld getMousePosition nearestObject "House";
collect3DENHistory {
  {
    _x params ["_type", "_pos", "_dir", "_up"];
    _obj = create3DENEntity ["Object", _type, [0,0,0]];
    _dir = _house vectorModelToWorld _dir;
    _up = _house vectorModelToWorld _up;
    //Calculations to turn vector dir and up into eden rotation
    _cross = _dir vectorCrossProduct _up;
    _rotX = (_up#1) atan2 (_up#2);
    _rotY = asin (_up#0);
    _rotZ = (_dir#0) atan2 (_cross#0);
    _rotX = [360+_rotX] call CBA_fnc_simplifyAngle;
    _rotY = [360-_rotY] call CBA_fnc_simplifyAngle;
    _rotZ = [360+_rotZ] call CBA_fnc_simplifyAngle;
    _pos = _pos vectorDiff (boundingCenter _house);

    //We set the position first as translating it to eden space is tricky
    _obj setPosWorld (_house modelToWorldWorld _pos);
    //Position first, then rotation
    _obj set3DENAttribute ["Position", getPosATL _obj];
    _obj set3DENAttribute ["Rotation", [_rotX, _rotY, _rotZ]];
  } foreach _array;
}
