private ["_animState","_dis","_finished","_isMedic","_qty","_sfx","_started","_targetChopper"];

player removeAction s_player_pack_Chopper;
s_player_pack_Chopper = 0;
if (dayz_combat == 1) exitWith {cutText [format["\n\nYou are in combat and cannot pack your Mozzie."], "PLAIN DOWN"];};
_targetChopper = nearestObjects [player, ["CSJ_GyroC"], 8];
if ((damage (_targetChopper select 0)) > .2) exitWith {cutText [format["The Mozzie is too damaged to pack!"], "PLAIN DOWN"];};
if (count _targetChopper > 1) exitWith {cutText [format["\n\nThere is another Mozzie too close to yours!"], "PLAIN DOWN"];};

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
	player addWeapon "ItemToolbox";_qty=1;
	player addMagazine "PartGeneric";_qty=1;
	player addMagazine "PartEngine";_qty=1;
	player addMagazine "ItemJerrycan";_qty=1; 
	player addMagazine "PartVRotor";_qty=1;
	deleteVehicle (_targetChopper select 0);
	player removeAction s_player_pack_Chopper;
	s_player_pack_Chopper = -1;
	cutText [format["You have packed your Mozzie. Your parts have been added to your inventory."], "PLAIN DOWN"];
	r_interrupt = false;
	player switchMove "";
	player playActionNow "stop";
} else {
	r_interrupt = false;
	player switchMove "";
	player playActionNow "stop";
	cutText ["\n\nCanceled packing", "PLAIN DOWN"];
};