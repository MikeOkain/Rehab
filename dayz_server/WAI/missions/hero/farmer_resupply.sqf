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

	private			["_baserunover2","_baserunover1","_complete","_crate_type","_mission","_vehname","_vehicle","_position","_vehclass","_crate","_baserunover","_rndnum"];

	_position		= [30] call find_position;
	_mission		= [_position,"Hard","Farmer Resupply","MainHero",true] call mission_init;
	
	diag_log 		format["WAI: [Mission:[Hero] Farmer Resupply]: Starting... %1",_position];

	//Setup the crate
	_crate_type 	= crates_large call BIS_fnc_selectRandom;
	_crate 			= createVehicle [_crate_type,[(_position select 0) - 20,(_position select 1) - 20,0], [], 0, "CAN_COLLIDE"];
	
	//Farmer's Barn
	_baserunover1 	= createVehicle ["Land_Farm_Cowshed_a",[(_position select 0) +15, (_position select 1) -20,0],[], 0, "CAN_COLLIDE"];
	_baserunover2 	= createVehicle ["SHouse",[(_position select 0) +35, (_position select 1) +10,0],[], 0, "CAN_COLLIDE"];
	_baserunover 	= [_baserunover1,_baserunover2];

	//Troops
	_rndnum = 3 + round (random 3);
	[[_position select 0,_position select 1,0],_rndnum,"Extreme","Random",4,"Random","Bandit","Random","Bandit",_mission] call spawn_group;
	[[_position select 0,_position select 1,0],_rndnum,"Random","Random",4,"Random","Bandit","Random","Bandit",_mission] call spawn_group;
	[[_position select 0,_position select 1,0],_rndnum,"Random","Random",4,"Random","Bandit","Random","Bandit",_mission] call spawn_group;
	[[_position select 0,_position select 1,0],_rndnum,"Random","Random",4,"Random","Bandit","Random","Bandit",_mission] call spawn_group;
	 
	//Static Guns
	[[
		[(_position select 0) + 10, (_position select 1) + 10, 0],
		[(_position select 0) + 10, (_position select 1) - 10, 0]
	],"M2StaticMG","Medium","Bandit","Bandit",0,2,"Random","Random",_mission] call spawn_static;

	//Tractor
	_vehclass 		= "Tractor";
	_vehicle		= [_vehclass,_position] call custom_publish;
	
	if(debug_mode) then {
		diag_log format["WAI: [Hero] farmer_resupply spawned a Tractor at %1", _position];
	};
	
	//Condition
	_complete = [
		[_mission,_crate],	// mission number and crate
		["crate"], 			// ["crate"], or ["kill"], or ["assassinate", _unitGroup],
		[_vehicle,_baserunover], 		// cleanup objects
		"Bandits are holding up the Farmers! The Farmers Well Give you A cut of the Supply's If You kill The Bandit's, He has updated the map for the location!",	// mission announcement
		"Survivors have secured the Farmers Supply's!",																										// mission success
		"Survivors did not secure the Supply's in time the Farmers have Died!"																								// mission fail
	] call mission_winorfail;

	if(_complete) then {
		[_crate,0,0,[80,crate_items_farmer],0] call dynamic_crate;
	};

	diag_log format["WAI: [Mission:[Hero] Farmer Resupply]: Ended at %1",_position];

	h_missionrunning = false;
};