//==============================================//
//Mission Made By:(AOW)Recon                    //
//WAI Made By:                                  //
//Developer f3cuk                               //  
//Developer Jossy                               //
//Helping hand nerdalertdk                      //
//Sever Ip:162.255.138.42:2502                  //
//WebSite:www.AOWGameing.com                    //
//==============================================//

if(isServer) then {

	private			["_complete","_dir","_rndnum","_crate_type","_mission","_position","_vehclass3","_vehclass2","_vehicle3","_vehicle2","_playerPresent","_vehicle","_vehclass","_crate"];

	_position		= [40] call find_position;
	_mission		= [_position,"extreme","Large Convoy","MainHero",true] call mission_init;

	diag_log 		format["WAI: [Mission:[Hero] Large Convoy]: Starting... %1",_position];

	//Setup the crate
	_crate_type 	= crates_large call BIS_fnc_selectRandom;
	_crate 			= createVehicle [_crate_type,[(_position select 0),(_position select 1),0], [], 0, "CAN_COLLIDE"];
	
	//Troops
	_rndnum = 5 + round (random 3);
	[[_position select 0,_position select 1,0],_rndnum,"extreme","Random",4,"Random","Bandit","Random","Bandit",_mission] call spawn_group;
	[[_position select 0,_position select 1,0],_rndnum,"extreme","Random",4,"Random","Bandit","Random","Bandit",_mission] call spawn_group;
	[[_position select 0,_position select 1,0],4,"extreme","Random",4,"Random","Bandit","Random","Bandit",_mission] call spawn_group;
	[[_position select 0,_position select 1,0],4,"Random","Random",4,"Random","Bandit","Random","Bandit",_mission] call spawn_group;
	[[_position select 0,_position select 1,0],4,"Random","Random",4,"Random","Bandit","Random","Bandit",_mission] call spawn_group;
	[[_position select 0,_position select 1,0],4,"extreme","Random",4,"Random","Bandit","Random","Bandit",_mission] call spawn_group;
	[[_position select 0,_position select 1,0],4,"Random","Random",4,"Random","Bandit","Random","Bandit",_mission] call spawn_group;
	[[_position select 0,_position select 1,0],4,"Random","Random",4,"Random","Bandit","Random","Bandit",_mission] call spawn_group;

	//Static Guns
	[[
		[(_position select 0) + 25, (_position select 1) + 25, 0],
		[(_position select 0) - 25, (_position select 1) + 25, 0],
		[(_position select 0) - 25, (_position select 1) - 25, 0],
		[(_position select 0) + 25, (_position select 1) - 25, 0]
	],"M2StaticMG","Hard","Bandit","Bandit",1,2,"Random","Random",_mission] call spawn_static;
	
	//HMMWV
	[[(_position select 0) + 100, _position select 1, 0],[(_position select 0) + 100, _position select 1, 0],50,2,"HMMWV_Armored","random","bandit","bandit",_mission] call vehicle_patrol;

	//Heli Para Drop
	[[(_position select 0),(_position select 1),0],[0,0,0],400,"BAF_Merlin_HC3_D",10,"Random","Random",4,"Random","Bandit","Random","Bandit",false,_mission] spawn heli_para;
	[[(_position select 0),(_position select 1),0],[0,0,0],500,"BAF_Merlin_HC3_D",10,"Random","Random",4,"Random","Bandit","Random","Bandit",false,_mission] spawn heli_para;
	[[(_position select 0),(_position select 1),300],[0,0,0],200,"UH60M_EP1_DZ",6,"extreme","4",4,"Random","Bandit","Random","Bandit",true,_mission] spawn heli_para;

	// Spawn Vehicles
	_dir 			= floor(round(random 360));

	_vehclass 		= cargo_trucks 		call BIS_fnc_selectRandom;		// Cargo Truck
	_vehclass2 		= refuel_trucks 	call BIS_fnc_selectRandom;		// Refuel Truck
	_vehclass3 		= military_unarmed 	call BIS_fnc_selectRandom;		// Military Unarmed
	_vehclass4 		= cargo_trucks 		call BIS_fnc_selectRandom;		// Cargo Truck

	_vehicle		= [_vehclass,_position,false,_dir] 	call custom_publish;
	_vehicle2		= [_vehclass2,_position,false,_dir] call custom_publish;
	_vehicle3		= [_vehclass3,_position,false,_dir] call custom_publish;
	_vehicle4		= [_vehclass4,_position,false,_dir] call custom_publish;
	
	if(debug_mode) then {
		diag_log format["WAI: [Hero] Large_convoy spawned a %1",_vehclass];
		diag_log format["WAI: [Hero] Large_convoy spawned a %1",_vehclass3];
		diag_log format["WAI: [Hero] Large_convoy spawned a %1",_vehclass2];
	};
	
	//Condition
	_complete = [
		[_mission,_crate],				// mission number and crate
		["crate"], 						// ["crate"], or ["kill",wai_kill_percent], or ["assassinate", _unitGroup],
		[_vehicle,_vehicle2,_vehicle3],	// cleanup objects
		"An Ikea delivery has been hijacked by bandits, take over the Large Convoy and the building supplies are yours!",	// mission announcement
		"Survivors have secured the building supplies!",															// mission success
		"Survivors did not secure the Large Convoy in time"																// mission fail
	] call mission_winorfail;

	if(_complete) then {
		[_crate,[4,crate_weapons_buildables],[20,crate_tools_buildable],[70,crate_items_buildables_large],4] call dynamic_crate;
	};

	diag_log format["WAI: [Mission:[Hero] Large Convoy]: Ended at %1",_position];
	
	h_missionrunning = false;
};