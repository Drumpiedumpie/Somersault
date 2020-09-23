//Completed_TaskVars = [2,4,6,8];
//publicVariable "Completed_TaskVars";



//["<img size='4' image='images\placeholder.jpg'/> <br />Hallo daar <br /> TEST 1234567890 <br /> AbCdEfGhIjKlM", 0, 0, 4, 10, 1, 0] spawn BIS_fnc_dynamicText;


//["<img size='4' image='images\placeholder.jpg'/> <br />Hallo daar <br /> TEST 1234567890 <br /> AbCdEfGhIjKlM", 0.8, 0.1, 5, 5, 1, 0] spawn BIS_fnc_dynamicText;


_introX = 0.8;
_introY = 0.1;
_introDuration = 5;
_introFadeIn = 1;
_introScroll = 0;
_introLayer = 0;
_fontsize = 1;
/*
["June 8th 1944", _introX, _introY, _introDuration, _introFadeIn, _introScroll, _introLayer] spawn BIS_fnc_dynamicText;
sleep 8;
["Two days ago allied forces landed <br /> on the beaches of Normandy", _introX, _introY, _introDuration, _introFadeIn, _introScroll, _introLayer] spawn BIS_fnc_dynamicText;
sleep 8;
["In support of that British 6th Airborne <br /> landed near Caen to secure critical objectives", _introX, _introY, _introDuration, _introFadeIn, _introScroll, _introLayer] spawn BIS_fnc_dynamicText;
sleep 8;
["The Wehrmacht is relocating troops to <br /> Normandy to fight off the Allied forces", _introX, _introY, _introDuration, _introFadeIn, _introScroll, _introLayer] spawn BIS_fnc_dynamicText;
sleep 8;
["To secure victory we will be deployed to <br /> France as well.", _introX, _introY, _introDuration, _introFadeIn, _introScroll, _introLayer] spawn BIS_fnc_dynamicText;
sleep 8;
[["Our objectives are:",4,5],["1. Prevent further enemy reinforcements through Neaville",4,5],["2. Eliminate Nazi presence in the area",4,5],["3. Hold Neaville until Allied forces have reached the area",3,5,8]] spawn BIS_fnc_EXP_camp_SITREP;

*/

/*
["Our objectives are:", _introX, _introY, _introDuration, _introFadeIn, _introScroll, _introLayer] spawn BIS_fnc_dynamicText;
sleep 8;
["1. Prevent further enemy reinforcements through Neaville"] spawn BIS_fnc_infoText;
sleep 8;
["2. Eliminate Nazi presence in the area"] spawn BIS_fnc_infoText;
sleep 8;
["3. Hold Neaville until Allied forces have reached the area"] spawn BIS_fnc_infoText;
*/

["June 8th 1944", _introX, _introY, _introDuration, _introFadeIn, _introScroll, _introLayer] spawn BIS_fnc_dynamicText;
sleep 8;
_introX = 0;
_introY = 0;
["Welcome To", _introX, _introY, 20, _introFadeIn, _introScroll, 0] spawn BIS_fnc_dynamicText;
sleep 4;
[" <br /><img size='4' image='images\placeholder.jpg'/> <br />Hallo daar <br /> TEST 1234567890 <br /> AbCdEfGhIjKlM", _introX, _introY, 16, _introFadeIn, _introScroll, 1] spawn BIS_fnc_dynamicText;
//sleep 4;
//["<img size='6' image='images\placeholder.jpg'/> <br /> <br />Heyhey", 0, 0, 4, 10, 1, 1] spawn BIS_fnc_dynamicText;
//sleep 8;

//[text, x, y, duration, fadeInTime, deltaY, rscLayer] spawn BIS_fnc_dynamicText
//[["line1",4,5],["line2",3,5,8]] spawn BIS_fnc_EXP_camp_SITREP;



//["Hallo daar","TEST 1234567890", " AbCdEfGhIjKlM"] spawn BIS_fnc_infoText;
//sleep 5;
//["Nogmaals hallo daar", "AbCdEfGhIjKlM","TEST 1234567890"] spawn BIS_fnc_infoText;

/*
[{
  ["<img size='4' image='images\logo.paa'/> <br />
  <br />
  <t align = 'center' color='#ffffff' shadow = '1' size = '.8'>Operation Olympus<br />
  By<br />
  Task Force Wolf</t>",0,0.2,10,1,0,789
  ] spawn BIS_fnc_dynamicText;},"BIS_fnc_spawn",true] call BIS_fnc_MP;
*/






_grp="testgroep";

/*
{
	_y = _x;
  {deleteVehicle _x} forEach crew _y;
  deleteVehicle _y;
} forEach vehicles _grp;
*/
//hint format["%1 || %2", str typeName _grp, str typename vehicles _grp];
//_setje = vehicles group _grp;
/*
{
    _y = _x;
    {
      _y deleteVehicleCrew _x;
    } forEach crew _y;
  hint "boe";
  deleteVehicle _y;
}forEach vehicles in _grp;





/*
_newVar = 2;


if (_newVar in Completed_TaskVars)then{
  hint "Al Aanwezig";
}else{
  Completed_TaskVars pushback _newVar;
  publicVariable "Completed_TaskVars";
  hint "Aan array toegevoegd";
};
*/

/*
{
		if (typeOf _x == _vehicleclass) then{
				_arrvehlist pushBack _x
		};
}foreach vehicles;

call{
    WGR_taskVar = 2;
    publicVariable ""WGR_taskVar"";
  };
*/







west setFriend [resistance, 0];








//f
