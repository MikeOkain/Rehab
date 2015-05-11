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
	_mission		= [_position,"Hard","Farmer Resupply","MainBandit",true] call mission_init;
	
	diag_log 		format["WAI: [Mission:[Bandit] Farmer Resupply]: Starting... %1",_position];

	//Setup the crate
	_crate_type 	= crates_large call BIS_fnc_selectRandom;
	_crate 			= createVehicle [_crate_type,[(_position select 0) - 20,(_position select 1) - 20,0], [], 0, "CAN_COLLIDE"];
	
	//Farmer's Barn
	_baserunover1 	= createVehicle ["Land_Farm_Cowshed_a",[(_position select 0) +15, (_position select 1) -20,0],[], 0, "CAN_COLLIDE"];
	_baserunover2 	= createVehicle ["SHouse",[(_position select 0) +35, (_position select 1) +10,0],[], 0, "CAN_COLLIDE"];
	_baserunover 	= [_baserunover1,_baserunover2];

	//Troops
	_rndnum = 3 + round (random 3);
	[[_position select 0,_position select 1,0],_rndnum,"Extreme","Random",4,"Random","Hero","Random","Hero",_mission] call spawn_group;
	[[_position select 0,_position select 1,0],_rndnum,"Random","Random",4,"Random","Hero","Random","Hero",_mission] call spawn_group;
	[[_position select 0,_position select 1,0],_rndnum,"Random","Random",4,"Random","Hero","Random","Hero",_mission] call spawn_group;
	[[_position select 0,_position select 1,0],_rndnum,"Random","Random",4,"Random","Hero","Random","Hero",_mission] call spawn_group;
	 
	//Static Guns
	[[
		[(_position select 0) + 10, (_position select 1) + 10, 0],
		[(_position select 0) + 10, (_position select 1) - 10, 0]
	],"M2StaticMG","Medium","Hero","Hero",0,2,"Random","Random",_mission] call spawn_static;

	//Tractor
	_vehclass 		= "Tractor";
	_vehicle		= [_vehclass,_position] call custom_publish;
	
	if(debug_mode) then {
		diag_log format["WAI: [Bandit] farmer_resupply spawned a Tractor at %1", _position];
	};
	
	//Condition
	_complete = [
		[_mission,_crate],	// mission number and crate
		["crate"], 			// ["crate"], or ["kill"], or ["assassinate", _unitGroup],
		[_vehicle,_baserunover], 		// cleanup objects
		"Heros are helping the Farmers!",	// mission announcement
		"Bandit's have Kill Everyone the Farmers Supply's!",																										// mission success
		"Bandit's did not secure the Supply's in time the Farmers have Lived!"																								// mission fail
	] call mission_winorfail;

	if(_complete) then {
		[_crate,0,0,[80,crate_items_farmer],0] call dynamic_crate;
	};

	diag_log format["WAI: [Mission:[Bandit] Farmer Resupply]: Ended at %1",_position];

	h_missionrunning = false;
};