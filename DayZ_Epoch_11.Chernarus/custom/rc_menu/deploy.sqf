private ["_animState","_dis","_finished","_go","_isMedic","_materials","_nearWalls","_object","_offset","_sfx","_started","_type","_uniqueid"];

if (dayz_combat == 1) exitWith {cutText [format["\n\nYou must get out of combat first!"], "PLAIN DOWN"];};

_nearWalls = nearestObjects [player, ["House","ModularItems","DZE_Housebase","BuiltItems","DZE_Base_Object"], 10];
if (count _nearWalls > 0) exitWith {cutText [format["\n\nYou are too close to a building or object!"], "PLAIN DOWN"];};

_type = _this select 0;
switch (_type) do {
	case "Old_bike_TK_CIV_EP1": {_materials = [];_offset = .9;};
	case "TT650_Civ": {_materials = [];_offset = 1.5;};
	case "CSJ_GyroC": {_materials = ["PartGeneric","PartEngine","PartVRotor","ItemJerrycan"];_offset = 2.1;};
};

_go = true;
if (_type == "CSJ_GyroC") then {
	if !("PartGeneric" in magazines player && "PartEngine" in magazines player && "ItemJerrycan" in magazines player && "PartVRotor" in magazines player) then {
		cutText [format["\n\nYou need scrap metal, VRotor, jerry and engine to build a Mozzie!"], "PLAIN DOWN"];
		_go = false;
	};
};

if (!_go) exitWith {};

closeDialog 1;
closeDialog 0;
player playActionNow "Medic";
r_interrupt = false;
_dis = 10;
_sfx = "repair";
[player,_sfx,0,false,_dis] call dayz_zombieSpeak;
_animState = animationState player;
r_doLoop = true;
_started = false;
_finished = false;

while {r_doLoop} do {
	_animState = animationState player;
	_isMedic = ["medic",_animState] call fnc_inString;
	if (_isMedic) then {
		_started = true;
	};
	if (_started and !_isMedic) then {
		r_doLoop = false;
		_finished = true;
	};
	if (r_interrupt) then {
		r_doLoop = false;
	};
	sleep 0.1;
};
r_doLoop = false;

if (_finished) then {
	player removeWeapon "ItemToolbox";
	{player removeMagazine _x} count _materials;
	_object = createVehicle [_type, getPosASL player, [], 10, "NONE"];
	_object allowDamage false;
	_object setDamage 0;
	_uniqueid = str(round(random 999999));
	_object setVariable ["ObjectID",_uniqueid, true];
	_object setVariable ["ObjectUID",_uniqueid, true];
	_object attachTo [player,[0.0,3.0,_offset]];
	sleep 1;
	detach _object;
	player reveal _object;
	_object addEventHandler ["GetIn",{_nil = [nil,(_this select 2),"loc",rTITLETEXT,"Warning: This vehicle will disappear on server restart!","PLAIN DOWN",5] call RE;}];
	clearWeaponCargoGlobal _object;
	clearMagazineCargoGlobal _object;
	_object setVehicleAmmo 0;
	r_interrupt = false;
	player switchMove "";
	player playActionNow "stop";
} else {
	r_interrupt = false;
	player switchMove "";
	player playActionNow "stop";
	cutText ["\n\nCanceled deploying vehicle", "PLAIN DOWN"];
};