private ["_handGun"];

if (dayz_combat == 1) exitWith {
	titleText ["You may not suicide while in combat.", "PLAIN DOWN", 3];
	sleep 5;
	titleFadeOut 1;
};

_handGun = currentWeapon player;
if ((_handGun in ["Colt1911","glock17_EP1","M9","M9SD","Makarov","MakarovSD","revolver_EP1","revolver_gold_EP1","UZI_EP1","UZI_SD_EP1","Sa61_EP1","DDOPP_X26","RH_deagle","RH_anac","RH_bull","RH_python","RH_p226","RH_p38","RH_mk22","RH_usp","RH_m1911","RH_m9","RH_muzi","RH_Deaglemzb","RH_anacg","RH_uspsd","RH_mk22sd","RH_m9csd","RH_m1911sd","vil_USP45"]) && (player ammo _handGun > 0)) then {
	canSuicide = true;
} else {canSuicide = false;};
if (canSuicide) then {
	sleep 1.5;
	player playMove "ActsPercMstpSnonWpstDnon_suicide1B";
	sleep 8.4;
	player fire _handGun;
	sleep 1;
	player setDamage 1;
	sleep 2;
	removeBackpack player;
	removeAllItems player;
	removeAllWeapons player;
} else {titleText ["You must equip a loaded pistol to kill yourself.", "PLAIN DOWN", 3];};