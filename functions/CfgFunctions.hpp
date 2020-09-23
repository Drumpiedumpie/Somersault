class WGR
{

	tag = "WGR";

	class server
	{
		file = "functions\server";
		class drohnspawn {};
		class radiochatter {};
		class ambient_sounds {};
	};

	class ai
	{
		file = "functions\ai";
		class groupattack {};
		class groupdefens {};
		class grouppatrol {};
		class hunting {};
		class spawnjet {};
		class farming {};
		class groupcreep {};
		class groupgarrison {};
		class groupcamp {};
	};

/*
	class client
	{
		file = "functions\client";
		class disco {};
		class aircommander {};
		class fpszeus {};
		class teleport_to_group {};
	};
*/

	class loadouts
	{
		file = "functions\loadouts";
		class loadoutselect {};
		class loadoutentfernen {};
		class loadoutfirstaidkit {};
		class loadoutfood {};
		class loadoutgranaten {};
		class loadoutmedicpack {};
		class loadoutchest {};

	};

	class nato_vanilla
	{
		file = "functions\loadouts\nato_vanilla";
		class nato_riflemann {};
		class nato_grenadier {};
		class nato_riflemannpanzer {};
		class nato_lmg {};
		class nato_teamleader {};
		class nato_squadleader {};
		class nato_medic {};
		class nato_offizier {};
		class nato_marksman {};
		class nato_crewman {};
		class nato_helipilot {};
		class nato_helicrew {};
		class nato_logistiker {};
		class nato_mmg {};
		class nato_mmgassist {};
		class nato_atsoldier {};
		class nato_atassist {};
		class nato_aasoldier {};
		class nato_aaassist {};
		class nato_uav {};
		class nato_eod {};
		class nato_jetpilot {};
		class nato_sniper {};
		class nato_spotter {};
		class nato_jtac {};

	};

	class uk_paras_full
	{
		file = "functions\loadouts\uk_paras";
		class ukparas_basics {};
		class ukparas_rifleman {};
		class ukparas_sergeant {};
		class ukparas_marksman {};
		class ukparas_mortar {};
		class ukparas_bren1 {};
		class ukparas_bren2 {};
		class ukparas_grenadier {};
		class ukparas_lieutenant {};
		class ukparas_radio {};
		class ukparas_orderly {};
		class ukparas_medic {};
		class ukparas_cls {};
		class ukparas_eod {};
		class ukparas_piat {};
		class ukparas_pilot {};

	};

/*
	class logistic
	{
		file = "functions\logistic"
		class al6_spawn {};
		class al6_init {};
		class clearcargo {};
		class sto_init {};
		class sto_spawn {};
		class airlog_init {};
		class airlog_spawn {};
		class kistelog_init {};
		class kistelog_spawn {};

	};

	class al_6
	{
		file = "functions\logistic\al_6"
		class al6_munition {};
		class al6_medizin {};
		class al6_mgmunition {};
		class al6_granaten {};
		class al6_sprengstoff {};
		class al6_support {};
		class al6_fruchtkorb {};

	};

		class sto
	{
		file = "functions\logistic\sto"
		class sto_munition {};
		class sto_medizin {};
		class sto_atmunition {};
		class sto_granaten {};
		class sto_sprengstoff {};
		class sto_support {};

	};

		class airlog
	{
		file = "functions\logistic\airlog"
		class airlog_munition {};
		class airlog_medizin {};
		class airlog_atmunition {};
		class airlog_granaten {};
		class airlog_sprengstoff {};
		class airlog_support {};
		class airlog_fob {};
		class airlog_lazarett {};
		class airlog_repair {};

	};

		class kistelog
	{
		file = "functions\logistic\kistelog"
		class kistelog_munition {};
		class kistelog_medizin {};
		class kistelog_atmunition {};
		class kistelog_mgmunition {};
		class kistelog_granaten {};
		class kistelog_sprengstoff {};
		class kistelog_support {};
		class kistelog_zigarette {};

	};
*/


};

class ADV
{

	tag = "ADV"

	class adv
	{
		file = "functions\adv";
		class zeusObjects {};
		class fpszeus {};
	}
};
