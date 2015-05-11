//Ammo box spawn script by iSoJu
//Currently working on 1.8 and Epoch 1.4.2
private ["_ammoBox_PrisonModel","_SpBox","_QA"];
diag_log "Ammobox2 ""Spawning"".";
//---------------------The CODE---------------------

//****Box Model Array**** ****select Random Box type****
	_ammoBox_PrisonModel = ["USBasicAmmunitionBox","GuerillaCacheBox","USSpecialWeaponsBox"] call BIS_fnc_selectRandom; //Add or remove models

//****Epoch Treasure*****
	_boxPosP = [3537,7989,0]; //Prison

//****Box Position Array**** ****select Random Position****
	//_SpBox = [_boxPos4]; //call BIS_fnc_selectRandom;

//****Box Quantity Array****
	_QA = [1,2,3,4,5] call BIS_fnc_selectRandom;
//------wait to spawn--------

//*****Sleep for 11 Min*****
sleep 660;

//*****Broadcast start*****
_message_start = format["iSoJus Death Facility Chest Has Spawned!!"];
[nil, nil, rTITLETEXT, _message_start, "PLAIN DOWN", 5] call RE;

//-------Box spawn in--------

//****Spawn Boxes****

	//****Spawning Box 2****
	_BoxModel = _ammoBox_PrisonModel;
	_ammoBox_Prison = createVehicle [_BoxModel,_boxPosP,[], 0, "CAN_COLLIDE"];
	_ammoBox_Prison setDir 0.0;
	_ammoBox_Prison setPos _boxPosP;

//---------Box Contents------------
//****Clear contents****
	clearMagazineCargoGlobal _ammoBox_Prison;
	clearWeaponCargoGlobal _ammoBox_Prison;
	
//--------Novice box--------
//****Add contents****
if(_ammoBox_PrisonModel == "USBasicAmmunitionBox") then  {
//****Weapons****
	{_ammoBox_Prison addWeaponCargoGlobal [_x, 1];} forEach
		['DMR','Binocular_Vector'];
//****Magazines****
	{_ammoBox_Prison addMagazineCargoGlobal [_x, _QA];} forEach
		['20Rnd_762x51_DMR'];
//****Explosives****
	{_ammoBox_Prison addMagazineCargoGlobal [_x, 3];} forEach
		['HandGrenade_West'];
//****Items****
	{_ammoBox_Prison addMagazineCargoGlobal [_x, _QA];} forEach
		['ItemAntibiotic','ItemPainkiller','ItemBandage'];
//****Backpacks****
	{_ammoBox_Prison addBackpackCargoGlobal [_x, 1];} forEach
		['DZ_British_ACU'];
//****Treasure****
	{_ammoBox_Prison addMagazineCargoGlobal [_x, _QA];} forEach
		['ItemGoldBar10oz','ItemBriefcase100oz'];
	};
	
//--------Advanced box--------
if(_ammoBox_PrisonModel == "GuerillaCacheBox") then  {
//****Weapons****
	{_ammoBox_Prison addWeaponCargoGlobal [_x, 1];} forEach
		['M110_NVG_EP1','Binocular_Vector'];
//****Magazines****
	{_ammoBox_Prison addMagazineCargoGlobal [_x, _QA];} forEach
		['20Rnd_762x51_B_SCAR'];
//****Explosives****
	{_ammoBox_Prison addMagazineCargoGlobal [_x, 2];} forEach
		['PipeBomb','HandGrenade_West'];
//****Items****
	{_ammoBox_Prison addMagazineCargoGlobal [_x, _QA];} forEach
		['ItemAntibiotic','ItemBloodbag','ItemPainkiller','ItemBandage'];
//****Backpacks****
	{_ammoBox_Prison addBackpackCargoGlobal [_x, 3];} forEach
		['DZ_BackPack_EP1'];
//****Treasure****
	{_ammoBox_Prison addMagazineCargoGlobal [_x, _QA];} forEach
		['ItemGoldBar10oz','ItemBriefcase100oz'];
	};
	
//--------Special box--------
if(_ammoBox_PrisonModel == "USSpecialWeaponsBox") then  {
//****Weapons****
	{_ammoBox_Prison addWeaponCargoGlobal [_x, 1];} forEach
		['m107_DZ','Binocular_Vector'];
//****Magazines****
	{_ammoBox_Prison addMagazineCargoGlobal [_x, _QA];} forEach
		['10Rnd_127X99_m107'];
//****Explosives****
	{_ammoBox_Prison addMagazineCargoGlobal [_x, 1];} forEach
		['PipeBomb','HandGrenade_West'];
//****Items****
	{_ammoBox_Prison addMagazineCargoGlobal [_x, _QA];} forEach
		['ItemAntibiotic','ItemBloodbag','ItemPainkiller','ItemBandage'];
//****Backpacks****
	{_ammoBox_Prison addBackpackCargoGlobal [_x, 2];} forEach
		['DZ_LargeGunBag_EP1'];
//****Treasure****
	{_ammoBox_Prison addMagazineCargoGlobal [_x, _QA];} forEach
		['ItemGoldBar10oz','ItemBriefcase100oz'];
	};
	
//-------Broadcast message--------

//*****sleep for 5 seconds*****
sleep 5;

//*****Broadcast End*****
_message_end = format["iSoJus Death Facility Chest Has Spawned"];
[nil, nil, rTITLETEXT, _message_end, "PLAIN DOWN", 5] call RE;

//*****Keep the box*****
_ammoBox_Prison setVariable ["permaLoot",true];

waitUntil{{isPlayer _x && _x distance _ammoBox_Prison < 5} count playableunits > 0};
[nil,nil,rTitleText,"iSoJus Death Facility chest has been looted!", "PLAIN DOWN",5] call RE;

sleep 120;

//*****Delete the Box*****
deleteVehicle _ammoBox_Prison;

//*****Start timer for replacing the box*****
	[] execVM "scripts\treasure\replacebox2.sqf";
