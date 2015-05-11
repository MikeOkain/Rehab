/***********************************************************
ASSIGN DAMAGE HANDLER TO A UNIT
- Function fnc_veh_ResetEH
- unit call fnc_veh_ResetEH
************************************************************/

_this removeAllEventHandlers "HandleDamage";
_this removeAllEventHandlers "Killed";
_this addeventhandler ["HandleDamage",{ _this call vehicle_handleDamage } ];
_this addeventhandler ["Killed",{ _this call vehicle_handleKilled } ];

if (isServer) then {
	_this removeAllEventHandlers "GetOut";
	_this removeAllEventHandlers "GetIn";
	_this addEventHandler ["GetOut", {[(_this select 0),"all"] call server_updateObject;}];
	_this addEventHandler ["GetIn", {[(_this select 0),"all"] call server_updateObject; _this call server_checkIfTowed;}];
} else {
	0 = _this addEventHandler ["GetOut", {
		_unit = _this select 2;
		if (_unit != player) exitWith {};

		_parachute = vehicle _unit;
		if (!(_parachute isKindOf "ParachuteBase")) exitWith {};

		deleteVehicle _parachute;
		[_unit] spawn BIS_fnc_halo;

		systemChat "<Steerable Parachute> This parachute is steerable!";
	}];
};

//diag_log(format["%1: all EH reset for %2", __FILE__, _this]);