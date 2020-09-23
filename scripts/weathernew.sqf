//if (isServer) then {_nil = [] execVM "weather.sqf"};

// Script by Zonekiller  -- http://www.zonekiller.net --    -- zonekiller@live.com.au --


//Set All the weather settings to manual and full in the mission editor of your mission

hint "";
sleep 1;

//  ARRAY SETTINGS [fog,gusts,(wind dir),(wind force),overcast,rain]

// Weather Types


_weathertypes = ["clear","clearwindy","windy","drizzle","stillrain","storm"];
_weatherpattern = [_clear,_clearwindy,_windy,_drizzle, _stillrain,_storm];
_weatherchances = [1,1,1,1,1,1,1,1,1,1,1,2,2,2,2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3,4,4,4,4,4,4,5,5,5,6];

_transition = 1680; //How long the transition to new weather roughly takes
_duration = 120; //How long between transitions

_clear = [(Random 1),0,0,0,0,0];
_clearwindy = [(Random 1),(.5 + (Random .5)),(Random 360),(.5 + (Random .5)),0,0];
_windy = [(Random 1),(.5 + (Random .5)),(Random 360),(.5 + (Random .5)),(.1 + (Random .9)),0];
_drizzle = [	(Random 1),	0,	0,	0,	(.45 + (Random .55)),	(.1 + (Random .5))];
_stillrain = [(Random 1),0,0,0,(.45 + (Random .55)),(.1 + (Random .9))];
_storm = [(Random 1),(.5 + (Random .5)),(Random 360),(.5 + (Random .5)),(.5 + (Random .5)),(.5 + (Random .5))];


//for missionstart
if ((daytime > 1) && (daytime < 3)) then {waituntil {daytime > 3}};


// Starting weather
_weather = (_weatherpattern select (floor(random (count _weatherpattern))));
hint str _weather;

_fog = (_weather select 0);
_gust = (_weather select 1);
_dir = (_weather select 2);
_force = (_weather select 3);
_oc = (_weather select 4);
_rain = (_weather select 5);


// only foggy in the mornings
if ((daytime > 3) && (daytime < 10)) then
{
0 setFog 0.5 * _fog;
}else{0 setFog 0};

0 setGusts _gust;
0 setWindDir _dir;
0 setWindForce _force;
0 setOvercast _oc;
0 setRain _rain;
forceWeatherChange;

_foggy = 0;
//sleep 120;
//sleep 1200; //(20 minutes)
sleep 10;
hint "Loop would come after this";
/*
//private "nextWthr";
publicVariable "nextWthr";

if (!isNil missionNamespace getVariable "nextWthr") then {
      currWthr = (missionNamespace getVariable "nextWthr") splitString " " select 0;
      //1=1;
    } else {
      currWthr = _weatherchances selectRandom _weatherchances;
      1=1;
    };
*/
//private "currWthr";

currWthr = selectRandom _weatherchances;
diag_log format ["currWthr = %1", str currWthr];
_weather = _weatherpattern select (currWthr -1);

_fog = (_weather select 0);
_gust = (_weather select 1);
_dir = (_weather select 2);
_force = (_weather select 3);
_oc = (_weather select 4);
_rain = (_weather select 5);

0 setGusts _gust;
0 setWindDir _dir;
0 setWindForce _force;
0 setOvercast _oc;
0 setRain _rain;
forceWeatherChange;

hint format["currWthr = %1 %2",str currWthr, _weathertypes select (currWthr -1)];

/*
nextWthr = _weatherpattern selectRandom (_weatherchances)
nextWthr = format["%1 %2",str nextWthr, ] _weatherpattern selectRandom (_weatherchances -1)
*/


//while {true} do
while {false} do
{
/*
  if (!isNil nextWthr) then {
      currWthr = nextWthr splitString " " select 0;
      } else {
        currWthr = _weatherpattern selectRandom (_weathernumber -1)
      };
*/

_weather = (_weatherpattern select (floor(random (count _weatherpattern))));

/*
//debug code
_weathernumber = floor(random (count _weatherpattern));
_weather = _weatherpattern select _weathernumber;
_arrWList =["clear","clearwindy","windy","stillrain","storm"];

diag_log format["New weather is %1",str _weather];
diag_log format["New weather is %1",_arrWList select _weathernumber];
*/

_fog = (_weather select 0);
_gust = (_weather select 1);
_dir = (_weather select 2);
_force = (_weather select 3);
_oc = (_weather select 4);
_rain = (_weather select 5);

0 setGusts _gust;
0 setWindDir _dir;
0 setWindForce _force;
0 setOvercast _oc;
0 setRain _rain;
forceWeatherChange;

/*
if ((daytime > 4) && (daytime < 10)) then
{
(200 + (Random 1000)) setFog _fog;
_foggy = 0;
}else{
if (_foggy == 0) then {_foggy = 1;(120 + (Random 1680)) setFog 0};
};
*/

(0.5 * _transition + (Random _transition)) setGusts _gust;
(0.5 * _transition + (Random _transition)) setWindDir _dir;
(0.5 * _transition + (Random _transition)) setWindForce _force;
(0.5 * _transition + (Random _transition)) setOvercast _oc;
(0.5 * _transition + (Random _transition)) setRain _rain;

sleep _duration

/*
(120 + (Random 1680)) setGusts _gust;
(120 + (Random 1680)) setWindDir _dir;
(120 + (Random 1680)) setWindForce _force;
(120 + (Random 1680)) setOvercast _oc;
(120 + (Random 1680)) setRain _rain;

sleep 1800;

};
*/
