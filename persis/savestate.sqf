hint "saving state";
diag_log format["PST savestate started, %1",name player];

if (isMultiplayer && ((getpos player select 2) < 4)) then {
	_MissionID = (missionNamespace getVariable ["Mission_Session_ID", 0]);
//_MissionID = (missionNamespace getVariable ["Mission_Session_ID", 0]);

//save location

		_Mypos = getPosATL player;
		_MyDir = getDir player;




//save loadout

		_Myloadout = getUnitLoadout player;


//save  medical data

		_Mydammage = getDammage player;
		_Mylegs = player getHit "legs";

		_pain = player getVariable ["ace_medical_pain", 0];
		_morphine = player getVariable ["ace_medical_morphine", 0];
		_bloodVolume = player getVariable ["ace_medical_bloodVolume", 100];

		// tourniquets
		_tourniquets = player getVariable ["ace_medical_tourniquets", [0,0,0,0,0,0]];

		// wounds and injuries
		_openWounds = player getVariable ["ace_medical_openWounds", []];
		_bandagedWounds = player getVariable ["ace_medical_bandagedWounds", []];
		_internalWounds = player getVariable ["ace_medical_internalWounds", []];

		// vitals
		_heartRate = player getVariable ["ace_medical_heartRate", 80];
		_heartRateAdjustments = player getVariable ["ace_medical_heartRateAdjustments", []];
		_bloodPressure = player getVariable ["ace_medical_bloodPressure", [80, 120]];
		_peripheralResistance = player getVariable ["ace_medical_peripheralResistance", 100];

		// fractures
		_fractures = player getVariable ["ace_medical_fractures", [0,0,0,0,0,0]];


		// damage storage
		_bodyPartStatus = player getVariable ["ace_medical_bodyPartStatus", [0,0,0,0,0,0]];

		// airway
		_airwayStatus = player getVariable ["ace_medical_airwayStatus", 100];
		_airwayOccluded = player getVariable ["ace_medical_airwayOccluded", false];
		_airwayCollapsed = player getVariable ["ace_medical_airwayCollapsed", false];

		// generic medical admin
		_inCardiacArrest = player getVariable ["ace_medical_inCardiacArrest", false];
		_inReviveState = player getVariable ["ace_medical_inReviveState", false];
		_isUnconscious = player getVariable ["ACE_isUnconscious", false];
		_hasLostBlood = player getVariable ["ace_medical_hasLostBlood", 0];
		_isBleeding = player getVariable ["ace_medical_isBleeding", false];
		_hasPain = player getVariable ["ace_medical_hasPain", false];
		_painSuppress = player getVariable ["ace_medical_painSuppress", 0];

		// medication
		_allUsedMedication = player getVariable ["ace_medical_allUsedMedication", []];

		//hunger & thrist
		_hunger = player getVariable ["acex_field_rations_hunger",0];
		_thirst = player getVariable ["acex_field_rations_thirst",0];

		//Earplugs
		_earplugs = player getVariable ["ACE_hasEarPlugsin", false];

		//Ace States
		_is_engineer = player getVariable ["ACE_IsEngineer", 0];
		_is_engineer = player getVariable ["ACE_medical_medicClass", 0];
/*
_unit setVariable ["ACE_IsEngineer", 0];
_unit setVariable ["ACE_medical_medicClass", 0];
*/


		profilenamespace setVariable ["WHp_Mission_Session_ID", _MissionID];

		profilenamespace setVariable ["WHp_Mypos", _Mypos];
		profilenamespace setVariable ["WHp_Mydir", _MyDir];

		profilenamespace setVariable ["WHp_Myloadout", _Myloadout];

		profilenamespace setVariable ["WHp_Mydammage", _Mydammage];
		profilenamespace setVariable ["WHp_Mylegs", _Mylegs];
		profilenamespace setVariable ["WHp_Pain", _pain];
		profilenamespace setVariable ["WHp_morphine", _morphine];
		profilenamespace setVariable ["WHp_bloodVolume", _bloodVolume];
		profilenamespace setVariable ["WHp_tourniquets", _tourniquets];
		profilenamespace setVariable ["WHp_openWounds", _openWounds];
		profilenamespace setVariable ["WHp_bandagedWounds", _bandagedWounds];
		profilenamespace setVariable ["WHp_internalWounds", _internalWounds];
		profilenamespace setVariable ["WHp_heartRate", _heartRate];
		profilenamespace setVariable ["WHp_heartRateAdjustments", _heartRateAdjustments];
		profilenamespace setVariable ["WHp_bloodPressure", _bloodPressure];
		profilenamespace setVariable ["WHp_peripheralResistance", _peripheralResistance];
		profilenamespace setVariable ["WHp_fractures", _fractures];
		//profilenamespace setVariable ["WHp_ivBags", _ivBags];
		profilenamespace setVariable ["WHp_bodyPartStatus", _bodyPartStatus];
		profilenamespace setVariable ["WHp_airwayStatus", _airwayStatus];
		profilenamespace setVariable ["WHp_airwayOccluded", _airwayOccluded];
		profilenamespace setVariable ["WHp_airwayCollapsed", _airwayCollapsed];
		profilenamespace setVariable ["WHp_inCardiacArrest", _inCardiacArrest];
		profilenamespace setVariable ["WHp_inReviveState", _inReviveState];
		profilenamespace setVariable ["WHp_isUnconscious", _isUnconscious];
		profilenamespace setVariable ["WHp_hasLostBlood", _hasLostBlood];
		profilenamespace setVariable ["WHp_isBleeding", _isBleeding];
		profilenamespace setVariable ["WHp_hasPain", _hasPain];
		profilenamespace setVariable ["WHp_painSuppress", _painSuppress];
		profilenamespace setVariable ["WHp_allUsedMedication", _allUsedMedication];
		profilenamespace setVariable ["WHp_hunger", _hunger];
		profilenamespace setVariable ["WHp_thirst", _thirst];
		profilenamespace setVariable ["WHp_earplugs", _earplugs];


	saveprofilenamespace;

};

sleep 5;
hint "";
