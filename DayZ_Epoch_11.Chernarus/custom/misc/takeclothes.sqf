private["_itemNew","_onLadder","_skin","_body","_okSkin","_result","_bag","_bmags","_bweps","_corpse","_mags","_object","_weps"];
_body = _this select 3;
_onLadder = (getNumber (configFile >> "CfgMovesMaleSdr" >> "States" >> (animationState player) >> "onLadder")) == 1;
if (_onLadder) exitWith {cutText ["You can not perform this action while on a ladder!" , "PLAIN DOWN"]};

if (vehicle player != player) exitWith {cutText ["You can not take clothes while in a vehicle.", "PLAIN DOWN"]};

player removeAction s_player_clothes;
s_player_clothes = -1;

_skin = (typeOf _body);
_itemNew = _skin;

switch (_itemNew) do {
	case "Survivor3_DZ": {
		_itemNew = "Soldier_Sniper_PMC_DZ";
	};
	case "Bandit1_DZ": {
		_itemNew = "Bandit2_DZ";
	};
	case "z_soldier": {
        _itemNew = "INS_Soldier_AR_DZ";
    };
    case "z_soldier_heavy": {
        _itemNew = "INS_Soldier_AR_DZ";
    };
    case "z_suit1": {
        _itemNew = "Functionary1_EP1_DZ";
    };
    case "z_suit2": {
		_itemNew = "Functionary1_EP1_DZ";
    };
    case "z_policeman": {
		_itemNew = "RU_Policeman_DZ";
    };
    case "z_priest": {
		_itemNew = "Priest_DZ";
    };
	case "z_worker1": {
		_itemNew = "INS_Worker2_DZ";
    };
	case "z_worker2": {
		_itemNew = "INS_Worker2_DZ";
    };
	case "z_worker3": {
		_itemNew = "INS_Worker2_DZ";
    };
	case "z_new_worker1": {
		_itemNew = "INS_Worker2_DZ";
    };
	case "z_new_worker2": {
		_itemNew = "INS_Worker2_DZ";
    };
	case "z_new_worker3": {
		_itemNew = "INS_Worker2_DZ";
    };
	case "z_new_worker4": {
		_itemNew = "INS_Worker2_DZ";
    };
	case "z_soldier_pilot": {
		_itemNew = "RU_Soldier_Crew_DZ";
    };
	case "z_new_villager1": {
		_itemNew = "GUE_Commander_DZ";
    };
	case "z_new_villager2": {
		_itemNew = "GUE_Commander_DZ";
    };
	case "z_new_villager3": {
		_itemNew = "GUE_Commander_DZ";
    };
	case "z_new_villager4": {
		_itemNew = "GUE_Commander_DZ";
    };
	case "z_villager1": {
		_itemNew = "GUE_Commander_DZ";
    };
	case "z_villager2": {
		_itemNew = "GUE_Commander_DZ";
    };
	case "z_villager3": {
		_itemNew = "GUE_Commander_DZ";
    };
	case "z_hunter": {
		_itemNew = "INS_Soldier_CO_DZ";
    };
};

_itemNew = "Skin_" + _itemNew;
_okSkin = isClass (configFile >> "CfgMagazines" >> _itemNew);

if (_okSkin) then {
	player playActionNow "Medic";
	sleep 3;
	_result = [player,_itemNew] call BIS_fnc_invAdd;
	if (_result) then {
		_mags = magazines _body;
		_weps = weapons _body;
		_bag = unitBackpack _body;
		_corpse = createVehicle ["Body", position _body, [], 0, "CAN_COLLIDE"];
		_object = createVehicle ["WeaponHolder", position _corpse, [], 0, "CAN_COLLIDE"];
		_object setVariable ["permaLoot",true];
		{_object addMagazineCargoGlobal [_x, 1];} forEach _mags;
		{_object addWeaponCargoGlobal [_x, 1];} forEach _weps;
		if (!isNull _bag) then {
			_bmags = getMagazineCargo _bag;
			_bweps = getWeaponCargo _bag;
			_object addBackpackCargoGlobal [(typeOf _bag), 1];
			{_object addMagazineCargoGlobal [_x, ((_bmags select 1) select _forEachIndex)];} forEach (_bmags select 0);
			{_object addWeaponCargoGlobal [_x, ((_bweps select 1) select _forEachIndex)];} forEach (_bweps select 0);
		};
		if (!isNull _body) then {deleteVehicle _body};
		cutText ["Clothes have been added to your inventory.", "PLAIN DOWN"];
	} else {
		cutText ["You do not have enough room in your inventory.", "PLAIN DOWN"];
		player switchMove "";
		player playActionNow "stop";
	};
} else {
	cutText [format["The clothes are destroyed, you cannot take them.",_skin], "PLAIN DOWN"];
	player switchMove "";
	player playActionNow "stop";
};