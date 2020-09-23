_debug = 1;
//Mission Persistency SessionID
//This belongs in initServer in on a dedicated server, only here for testing purposes
Mission_Session_ID = 7701;
publicVariable "Mission_Session_ID";



// Briefing

//[player] execVM "mission\briefing.sqf";
//Ace SETTINGS
ACE_maxweightdrag = 1000;


// Loadout Auswahl
//[player] call WGR_fnc_loadoutselect ;


//initialize player
if(_debug==1)then{diag_log format["PST initPlayerLocal.sqf started, (%1)",name player];};

if ((paramsArray select 0) == 1) then {
  _MIdCheck = (missionNamespace getVariable ["Mission_Session_ID",0]) - (profileNamespace getVariable ["WHp_Mission_Session_ID",0]);

  if(_debug==1)then{diag_log format["PST going to compare missionIDs (player:%1,mission:%2), %3",profileNamespace getVariable ["WHp_Mission_Session_ID",0],missionNamespace getVariable ["Mission_Session_ID",0], name player];};
  if(_debug==1)then{diag_log format["%1(MId)-%2(WHp)=%3",(missionNamespace getVariable ["Mission_Session_ID",0]),(profileNamespace getVariable ["WHp_Mission_Session_ID",0]),_MIdCheck];};

  //  if ((profileNamespace getVariable ["WHp_Mission_Session_ID",0]) == (missionNamespace getVariable ["Mission_Session_ID",0])) then {
  hint format["%1(MId)-%2(WHp)=%3",(missionNamespace getVariable ["Mission_Session_ID",0]),(profileNamespace getVariable ["WHp_Mission_Session_ID",0]),_MIdCheck];
  //  if ((profileNamespace getVariable ["WHp_Mission_Session_ID",0]) - (missionNamespace getVariable ["Mission_Session_ID",0])<=1) then {
//  if (((missionNamespace getVariable ["Mission_Session_ID",0]) - (profileNamespace getVariable ["WHp_Mission_Session_ID",0]))<=1) then {
  if (_MIdCheck<=1&&_MIdCheck>=0) then {
    if(_debug==1)then{diag_log "PST loading player state";};
  sleep 2;
	if(_debug==1)then{diag_log "Going to tp player to position";};
		player setPosATL (profileNamespace getVariable "WHp_Mypos");
		player setdir (profileNamespace getVariable "WHp_Mydir");

		player setunitloadout (profileNamespace getVariable "WHp_Myloadout");

		player setDammage (profileNamespace getVariable "WHp_Mydammage");
		player sethit ["legs", (profileNamespace getVariable "WHp_Mylegs")];

		player setVariable ["ace_medical_pain", (profileNamespace getVariable "WHp_Pain"), true];
		player setVariable ["ace_medical_morphine", (profileNamespace getVariable "WHp_morphine"), true];
		player setVariable ["ace_medical_bloodVolume", (profileNamespace getVariable "WHp_bloodVolume"), true];

		// tourniquets
		player setVariable ["ace_medical_tourniquets", (profileNamespace getVariable "WHp_tourniquets"), true];

		// wounds and injuries
		player setVariable ["ace_medical_openWounds", (profileNamespace getVariable "WHp_openWounds"), true];
		player setVariable ["ace_medical_bandagedWounds", (profileNamespace getVariable "WHp_bandagedWounds"), true];
		player setVariable ["ace_medical_internalWounds", (profileNamespace getVariable "WHp_internalWounds"), true];

		// vitals
		player setVariable ["ace_medical_heartRate", (profileNamespace getVariable "WHp_heartRate")];
		//player setVariable ["ace_medical_heartRateAdjustments", (profileNamespace getVariable "WHp_heartRateAdjustments")];
		player setVariable ["ace_medical_bloodPressure", (profileNamespace getVariable "WHp_bloodPressure")];
		player setVariable ["ace_medical_peripheralResistance", (profileNamespace getVariable "WHp_peripheralResistance")];
		[player, ((profileNamespace getVariable "WHp_heartRateAdjustments")) select 0, 5, {}] call ace_medical_fnc_addHeartRateAdjustment;

		// fractures
		player setVariable ["ace_medical_fractures", (profileNamespace getVariable "WHp_fractures"), true];

		// IVs
		player setVariable ["ace_medical_ivBags", (profileNamespace getVariable "WHp_ivBags"), true];

		// damage storage
		player setVariable ["ace_medical_bodyPartStatus", (profileNamespace getVariable "WHp_bodyPartStatus"), true];

		// airway
		player setVariable ["ace_medical_airwayStatus", (profileNamespace getVariable "WHp_airwayStatus"), true];
		player setVariable ["ace_medical_airwayOccluded", (profileNamespace getVariable "WHp_airwayOccluded"), true];
		player setVariable ["ace_medical_airwayCollapsed", (profileNamespace getVariable "WHp_airwayCollapsed"), true];

		// generic medical admin
		player setVariable ["ace_medical_inCardiacArrest", (profileNamespace getVariable "WHp_inCardiacArrest"), true];
		player setVariable ["ace_medical_inReviveState", (profileNamespace getVariable "WHp_inReviveState"), true];
		//player setVariable ["ACE_isUnconscious", (profileNamespace getVariable "WHp_isUnconscious"), true];
		if ((profileNamespace getVariable "WHp_isUnconscious")) then {
			[player, true, (round(random(300)+150))] call ace_medical_fnc_setUnconscious;
			player switchmove "AidlPpneMstpSnonWnonDnon_AI";
		};

		player setVariable ["ace_medical_hasLostBlood", (profileNamespace getVariable "WHp_hasLostBlood"), true];
		player setVariable ["ace_medical_isBleeding", (profileNamespace getVariable "WHp_isBleeding"), true];
		player setVariable ["ace_medical_hasPain", (profileNamespace getVariable "WHp_hasPain"), true];
		player setVariable ["ace_medical_painSuppress", (profileNamespace getVariable "WHp_painSuppress"), true];

		// medication
		private _allUsedMedication = player getVariable ["ace_medical_allUsedMedication", (profileNamespace getVariable "WHp_allUsedMedication")];

		//set hunger/thrist
		player setVariable ["acex_field_rations_hunger", (profileNamespace getVariable "WHp_hunger"), true];
		player setVariable ["acex_field_rations_thirst", (profileNamespace getVariable "WHp_thirst"), true];

		//set earplugs
		player setVariable ["ACE_hasEarPlugsin", (profileNamespace getVariable "WHp_earplugs"), true];
		//start save loop
	} else {
      [player] call WGR_fnc_loadoutselect;
  };
		_save = [player] execvm "persis\save_loop.sqf";
} else {
    [player] call WGR_fnc_loadoutselect;
};


//_________________________ Disabling the move map to player location _________________________
h = [] spawn {
disableSerialization;
while {true} do {
	waitUntil { visibleMap };
	_display = uiNamespace getVariable "RSCDiary";
	_ctrl = _display displayCtrl 1202;
	_ctrl ctrlEnable false;
	_ctrl ctrlsettextcolor [0,0,0,0];
	_ctrl ctrlSetTooltip "";
	_ctrl ctrlCommit 0;
	waitUntil { !visibleMap };
	};
};



if ((str player) == "zeus_1") then { _ret = [true] call acre_api_fnc_setSpectator};
if ((str player) == "zeus_2") then { _ret = [true] call acre_api_fnc_setSpectator};
