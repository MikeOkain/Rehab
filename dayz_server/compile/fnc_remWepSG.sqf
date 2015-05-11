{
	if (_object isKindof "Ka60_PMC") then {
        _object magazinesTurret [-1];
		_object removeMagazinesTurret ["14Rnd_57mm",[-1]];
		_object WeaponsTurret [-1];
		_object removeWeapon "57mmLauncher";
	};
	if (_object isKindof "Ka60_GL_PMC") then {
        _object magazinesTurret [-1];
		_object removeMagazinesTurret ["14Rnd_57mm",[-1]];
		_object WeaponsTurret [-1];
		_object removeWeapon "57mmLauncher";
		_object magazinesTurret [0];
		_object removeMagazinesTurret ["6Rnd_HE_M203_heli",[0]];
		_object removeMagazinesTurret ["6Rnd_HE_M203_heli",[0]];
		_object removeMagazinesTurret ["6Rnd_HE_M203_heli",[0]];
		_object removeMagazinesTurret ["6Rnd_HE_M203_heli",[0]];
		_object removeMagazinesTurret ["6Rnd_HE_M203_heli",[0]];
		_object removeMagazinesTurret ["6Rnd_HE_M203_heli",[0]];
		_object removeMagazinesTurret ["6Rnd_HE_M203_heli",[0]];
		_object removeMagazinesTurret ["6Rnd_HE_M203_heli",[0]];
		_object removeMagazinesTurret ["6Rnd_HE_M203_heli",[0]];
		_object removeMagazinesTurret ["6Rnd_HE_M203_heli",[0]];
		_object WeaponsTurret [0];
		_object removeWeapon "M32_heli";
		_object WeaponsTurret [0];
		_object addWeapon "M32_heli";
	};
	if (_object isKindof "HMMWV_M2") then {
        _object magazinesTurret [0];
		_object removeMagazinesTurret ["100Rnd_127x99_M2",[0]];
		_object removeMagazinesTurret ["100Rnd_127x99_M2",[0]];
		_object removeMagazinesTurret ["100Rnd_127x99_M2",[0]];
		_object removeMagazinesTurret ["100Rnd_127x99_M2",[0]];
		_object removeMagazinesTurret ["100Rnd_127x99_M2",[0]];
		_object removeMagazinesTurret ["100Rnd_127x99_M2",[0]];
	};
	if (_object isKindof "HMMWV_MK19") then {
        _object magazinesTurret [0];
		_object removeMagazinesTurret ["48Rnd_40mm_MK19",[0]];
		_object removeMagazinesTurret ["48Rnd_40mm_MK19",[0]];
		_object removeMagazinesTurret ["48Rnd_40mm_MK19",[0]];
		_object removeMagazinesTurret ["48Rnd_40mm_MK19",[0]];
	};
	if (_object isKindof "HMMWV_MK19_DES_EP1") then {
        _object magazinesTurret [0];
		_object removeMagazinesTurret ["48Rnd_40mm_MK19",[0]];
		_object removeMagazinesTurret ["48Rnd_40mm_MK19",[0]];
		_object removeMagazinesTurret ["48Rnd_40mm_MK19",[0]];
		_object removeMagazinesTurret ["48Rnd_40mm_MK19",[0]];
	};
	if (_object isKindof "BAF_Jackal2_L2A1_W") then {
		_object magazinesTurret [0];
		_object removeMagazinesTurret ["100Rnd_127x99_M2",[0]];
		_object removeMagazinesTurret ["100Rnd_127x99_M2",[0]];
		_object removeMagazinesTurret ["100Rnd_127x99_M2",[0]];
		_object removeMagazinesTurret ["100Rnd_127x99_M2",[0]];
		_object removeMagazinesTurret ["100Rnd_127x99_M2",[0]];
		_object removeMagazinesTurret ["100Rnd_127x99_M2",[0]];
	};
	if (_object isKindof "M113_TK_EP1") then {
        _object magazinesTurret [0];
		_object removeMagazinesTurret ["100Rnd_127x99_M2",[0]];
		_object removeMagazinesTurret ["100Rnd_127x99_M2",[0]];
		_object removeMagazinesTurret ["100Rnd_127x99_M2",[0]];
		_object removeMagazinesTurret ["100Rnd_127x99_M2",[0]];
	};
	if (_object isKindof "UH1H_TK_EP1") then {
        _object magazinesTurret [0];
		_object removeMagazinesTurret ["100Rnd_762x51_M240",[0]];
		_object magazinesTurret [1];
		_object removeMagazinesTurret ["100Rnd_762x51_M240",[1]];
	};
	if (_object isKindof "Mi17_UN_CDF_EP1") then {
        _object magazinesTurret [0];
		_object removeMagazinesTurret ["100Rnd_762x54_PK",[0]];
        _object magazinesTurret [1];
		_object removeMagazinesTurret ["100Rnd_762x54_PK",[1]];
	};
	if (_object isKindof "Mi17_TK_EP1") then {
        _object magazinesTurret [0];
		_object removeMagazinesTurret ["100Rnd_762x54_PK",[0]];
        _object magazinesTurret [1];
		_object removeMagazinesTurret ["100Rnd_762x54_PK",[1]];
	};
	if (_object isKindof "Mi171Sh_CZ_EP1") then {
        _object magazinesTurret [0];
		_object removeMagazinesTurret ["100Rnd_762x54_PK",[0]];
        _object magazinesTurret [1];
		_object removeMagazinesTurret ["100Rnd_762x54_PK",[1]];
	};
	if (_object isKindof "HMMWV_Armored") then {
        _object magazinesTurret [0];
		_object removeMagazinesTurret ["100Rnd_762x51_M240",[0]];
		_object removeMagazinesTurret ["100Rnd_762x51_M240",[0]];
		_object removeMagazinesTurret ["100Rnd_762x51_M240",[0]];
		_object removeMagazinesTurret ["100Rnd_762x51_M240",[0]];
	};
		if (_object isKindof "pook_H13_gunship") then {
        _object magazinesTurret [-1];
		_object removeMagazinesTurret ["100Rnd_127x99_M2",[-1]];

	};
	if (_object isKindof "pook_H13_transport") then {
        _object magazinesTurret [0];
		_object removeMagazinesTurret ["100Rnd_127x99_M2",[0]];

	};
		if (_object isKindof "An2_TK_EP1") then {
        _object magazinesTurret [-1];
		_object removeMagazinesTurret ["100Rnd_127x99_M2",[-1]];

	};
	if (_object isKindof "An2_2_TK_CIV_EP1") then {
        _object magazinesTurret [0];
		_object removeMagazinesTurret ["100Rnd_127x99_M2",[0]];

	};
		if (_object isKindof "An2_1_TK_CIV_EP1") then {
        _object magazinesTurret [-1];
		_object removeMagazinesTurret ["100Rnd_127x99_M2",[-1]];

	};
	if (_object isKindof "GNT_C185C") then {
        _object magazinesTurret [0];
		_object removeMagazinesTurret ["100Rnd_127x99_M2",[0]];

	};
		if (_object isKindof "GNT_C185R") then {
        _object magazinesTurret [-1];
		_object removeMagazinesTurret ["100Rnd_127x99_M2",[-1]];

	};
	if (_object isKindof "Su25_TK_EP1") then {
		_object WeaponsTurret [-1];
        _object removeWeapon ["AirBombLauncher",[-1]];
		_object removeWeapon ["AirBombLauncher",[-1]];
		_object removeWeapon ["GSh301",[-1]];
		_object removeWeapon ["R73Launcher_2",[-1]];
		_object removeWeapon ["S8Launcher",[-1]];
		_object removeWeapon ["SidewinderLaucher_AH1Z",[-1]];
		_object magazinesTurret [-1];
		_object removeMagazinesTurret ["4Rnd_FAB_250",[-1]];
		_object removeMagazinesTurret ["2Rnd_FAB_250",[-1]];
		_object removeMagazinesTurret ["180Rnd_30mm_GSh301",[-1]];
		_object removeMagazinesTurret ["2Rnd_R73",[-1]];
		_object removeMagazinesTurret ["80Rnd_80mm",[-1]];
		_object removeMagazinesTurret ["40Rnd_80mm",[-1]];
		_object removeMagazinesTurret ["40Rnd_S8T",[-1]];
		_object removeMagazinesTurret ["80Rnd_S8T",[-1]];
		_object removeMagazinesTurret ["2Rnd_Sidewinder_AH1Z",[-1]];

		_object addWeapon ["TwinVickers",[-1]];
		_object addMagazinesTurret ["500Rnd_TwinVickers",[-1]];
	};
} forEach vehicles;
