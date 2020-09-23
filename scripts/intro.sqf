_introX = 0.8;
_introY = 0;
_introDuration = 5;
_introFadeIn = 1;
_introScroll = 0;
_introLayer = 0;
_fontsize = 1;
_introSleep = 8;
_introOffset = 0.15;

["June 8th 1944", _introX, _introY, _introDuration, _introFadeIn, _introScroll, _introLayer] spawn BIS_fnc_dynamicText;
sleep _introSleep;
_introY = _introY + _introOffset;
["Two days ago allied forces landed <br /> on the beaches of Normandy", _introX, _introY, _introDuration, _introFadeIn, _introScroll, _introLayer] spawn BIS_fnc_dynamicText;
sleep _introSleep;
_introY = _introY + _introOffset;
["In support of that British 6th Airborne <br /> landed near Caen to secure critical objectives", _introX, _introY, _introDuration, _introFadeIn, _introScroll, _introLayer] spawn BIS_fnc_dynamicText;
sleep _introSleep;
_introY = _introY + _introOffset;
["The Wehrmacht is relocating troops to <br /> Normandy to fight off Allied forces", _introX, _introY, _introDuration, _introFadeIn, _introScroll, _introLayer] spawn BIS_fnc_dynamicText;
sleep _introSleep;
_introY = _introY + _introOffset;
["To secure victory we will be deployed to <br /> France as well.", _introX, _introY, _introDuration, _introFadeIn, _introScroll, _introLayer] spawn BIS_fnc_dynamicText;
sleep _introSleep;
[
	["TARGET:",1,1],
	["Neaville area:",1,1],
	["",0,0],
	["CURRENT OBJECTIVES:",1,1],
	["1. Prevent further enemy reinforcements coming through Neaville",1,1],
	["2. Eliminate Nazi presence in the area",1,1],
	["3. Hold Neaville until other Allied forces have reached the area",3,5,5]
] spawn BIS_fnc_EXP_camp_SITREP;

/**/

/*
["Our objectives are:", _introX, _introY, _introDuration, _introFadeIn, _introScroll, _introLayer] spawn BIS_fnc_dynamicText;
sleep _introSleep;
["1. Prevent further enemy reinforcements through Neaville"] spawn BIS_fnc_infoText;
sleep _introSleep;
["2. Eliminate Nazi presence in the area"] spawn BIS_fnc_infoText;
sleep _introSleep;
["3. Hold Neaville until Allied forces have reached the area"] spawn BIS_fnc_infoText;
sleep _introSleep;
["June 8th 1944", _introX, _introY, _introDuration, _introFadeIn, _introScroll, _introLayer] spawn BIS_fnc_dynamicText;
*/

sleep 20;
_introX = 0;
_introY = 0;
["Welcome To", _introX, _introY, 20, _introFadeIn, _introScroll, 0] spawn BIS_fnc_dynamicText;
sleep 4;
[" <br /><img size='4' image='images\placeholder.jpg'/> <br /> <br /> Yet Another WW2 Mission", _introX, _introY, 16, _introFadeIn, _introScroll, 1] spawn BIS_fnc_dynamicText;

//sleep 4;
//["<img size='6' image='images\placeholder.jpg'/> <br /> <br />Heyhey", 0, 0, 4, 10, 1, 1] spawn BIS_fnc_dynamicText;
//sleep _introSleep;

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
