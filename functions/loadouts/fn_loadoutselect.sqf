
_unit = _this select 0;
_playerclass = typeOf _unit;
_loadoutfraktion = "param_loadout" call BIS_fnc_getParamValue;

//diag_log ["00 - loadoutselect started"];


//format ["%1, %2, %3kg",player, typeof player, parseNumber ((((loadAbs player)*0.1)/2.2) toFixed 2)]

//=================================================== Vanilla Nato ================================================================//

    if(_loadoutfraktion == 0) then
    {

            switch (_playerclass) do
            {

                    case "B_Soldier_F": { [_unit] call wgr_fnc_nato_riflemann; };

                    case "B_Soldier_GL_F": { [_unit] call wgr_fnc_nato_grenadier; };

                    case "B_soldier_LAT_F": { [_unit] call wgr_fnc_nato_riflemannpanzer; };

                    case "B_soldier_AR_F": { [_unit] call wgr_fnc_nato_lmg; };

                    case "B_Soldier_TL_F": { [_unit] call wgr_fnc_nato_teamleader; };

                    case "B_Soldier_SL_F": { [_unit] call wgr_fnc_nato_squadleader; };

                    case "B_medic_F": { [_unit] call wgr_fnc_nato_medic; };

                    case "B_officer_F": { [_unit] call wgr_fnc_nato_offizier; };

                    case "B_soldier_M_F": { [_unit] call wgr_fnc_nato_marksman; };

                    case "B_crew_F": { [_unit] call wgr_fnc_nato_crewman; };

                    case "B_Helipilot_F": { [_unit] call wgr_fnc_nato_helipilot; };

                    case "B_helicrew_F": { [_unit] call wgr_fnc_nato_helicrew; };

                    case "B_soldier_repair_F": { [_unit] call wgr_fnc_nato_logistiker; };

                    case "B_HeavyGunner_F": { [_unit] call wgr_fnc_nato_mmg; };

                    case "B_soldier_AAR_F": { [_unit] call wgr_fnc_nato_mmgassist; };

                    case "B_soldier_AT_F": { [_unit] call wgr_fnc_nato_atsoldier; };

                    case "B_soldier_AAT_F": { [_unit] call wgr_fnc_nato_atassist; };

                    case "B_soldier_AA_F": { [_unit] call wgr_fnc_nato_aasoldier; };

                    case "B_soldier_AAA_F": { [_unit] call wgr_fnc_nato_aaassist; };

                    case "B_soldier_UAV_F": { [_unit] call wgr_fnc_nato_uav; };

                    case "B_soldier_exp_F": { [_unit] call wgr_fnc_nato_eod; };

                    case "B_Fighter_Pilot_F": { [_unit] call wgr_fnc_nato_jetpilot; };

                    case "B_sniper_F": { [_unit] call wgr_fnc_nato_sniper; };

                    case "B_spotter_F": { [_unit] call wgr_fnc_nato_spotter; };

                    case "B_recon_JTAC_F": { [_unit] call wgr_fnc_nato_jtac; };

//                    default { [_unit] call wgr_fnc_loadoutentfernen ; };
            };

    };

//=================================================== UK Paras Full ================================================================//

    if(_loadoutfraktion == 1) then
    {

            switch (_playerclass) do
            {

                case "I_soldier_F": { [_unit] call wgr_fnc_ukparas_rifleman; };    //Rifleman
                case "I_Soldier_SL_F": { [_unit] call wgr_fnc_ukparas_sergeant; };    //Sergeant
                case "I_Soldier_TL_F": { [_unit] call wgr_fnc_ukparas_rifleman; };    //Corporal
                case "I_Soldier_AA_F": { [_unit] call wgr_fnc_ukparas_mortar; };    //Mortar
                case "I_Soldier_M_F": { [_unit] call wgr_fnc_ukparas_marksman; };    //Sniper
                case "I_Soldier_AR_F": { [_unit] call wgr_fnc_ukparas_bren1; };    //Bren #1
                case "I_Soldier_AAR_F": { [_unit] call wgr_fnc_ukparas_bren2; };    //Bren #2
                case "I_officer_F": { [_unit] call wgr_fnc_ukparas_lieutenant; };    //Lieutenant
                case "I_soldier_UAV_F": { [_unit] call wgr_fnc_ukparas_radio; };    //Radio operator/Repair/Orderly
                case "I_soldier_UAV_06_F": { [_unit] call wgr_fnc_ukparas_orderly; };    //Repair
                case "I_medic_F": { [_unit] call wgr_fnc_ukparas_medic; };    //Medic
                case "I_soldier_UAV_06_medical_F": { [_unit] call wgr_fnc_ukparas_cls; };    //Combat Life Saver
                case "I_Soldier_GL_F": { [_unit] call wgr_fnc_ukparas_grenadier; };    //Grenadier
                case "I_Soldier_exp_F": { [_unit] call wgr_fnc_ukparas_eod; };    //EOD
                case "I_Soldier_LAT_F": { [_unit] call wgr_fnc_ukparas_piat; };    //PIAT
                case "I_pilot_F": { [_unit] call wgr_fnc_ukparas_pilot; };    //Pilot

                default { hint "fallback"; [_unit] call wgr_fnc_loadoutentfernen ;

                        };

            };

    };
