class ExtraRc {
	class ItemToolbox {
		class BuildBike {
			text = "Deploy Bike";
			script = "['Old_bike_TK_CIV_EP1'] execVM 'custom\rc_menu\deploy.sqf'";
		};
		class BuildMotorcycle {
			text = "Deploy Motorcycle";
			script = "['TT650_Civ'] execVM 'custom\rc_menu\deploy.sqf'";
		};
		class BuildMozzie {
			text = "Deploy Mozzie";
			script = "['CSJ_GyroC'] execVM 'custom\rc_menu\deploy.sqf'";
		};
	};
   class ItemRadio {
        class GroupManagement {
            text = "Group Management";
            script = "[] execVM 'custom\dzgm\loadGroupManagement.sqf'";
        };
   };
   class PartPlankPack {
		class thirdwall {
			text = "Craft 1/3 Wood Wall";
			script = "[""thirdwall""] execVM ""custom\misc\fn_craftable.sqf"";";
		};
		class wall {
			text = "Craft Wood Wall";
			script = "[""wall""] execVM ""custom\misc\fn_craftable.sqf"";";
		};
		class quartfloor {
			text = "Craft 1/4 Wood Floor";
			script = "[""quartfloor""] execVM ""custom\misc\fn_craftable.sqf"";";
		};
		class halffloor {
			text = "Craft 1/2 Wood Floor";
			script = "[""halffloor""] execVM ""custom\misc\fn_craftable.sqf"";";
		};
		class floor {
			text = "Craft Wood Floor";
			script = "[""floor""] execVM ""custom\misc\fn_craftable.sqf"";";
		};
	};
	class PartPlywoodPack {
		class thirdwall {
			text = "Craft 1/3 Wood Wall";
			script = "[""thirdwall""] execVM ""custom\misc\fn_craftable.sqf"";";
		};
		class wall {
			text = "Craft Wood Wall";
			script = "[""wall""] execVM ""custom\misc\fn_craftable.sqf"";";
		};
		class quartfloor {
			text = "Craft 1/4 Wood Floor";
			script = "[""quartfloor""] execVM ""custom\misc\fn_craftable.sqf"";";
		};
		class halffloor {
			text = "Craft 1/2 Wood Floor";
			script = "[""halffloor""] execVM ""custom\misc\fn_craftable.sqf"";";
		};
		class floor {
			text = "Craft Wood Floor";
			script = "[""floor""] execVM ""custom\misc\fn_craftable.sqf"";";
		};
	};   
    class Binocular_Vector  {
		class distance400m {
			text = "400 Meters";
			script = "setViewDistance 400; systemChat('ViewDistance: 400');";
		};
		class distance600m {
			text = "600 Meters";
			script = "setViewDistance 600; systemChat('ViewDistance: 600');";
		};
		class distance800m {
			text = "800 Meters";
			script = "setViewDistance 800; systemChat('ViewDistance: 800');";
		};
		class distance1000m {
			text = "1000 Meters";
			script = "setViewDistance 1000; systemChat('ViewDistance: 1000');";
		};
		class distance1250m {
			text = "1250 Meters";
			script = "setViewDistance 1250; systemChat('ViewDistance: 1250');";
		};
		class distance1500m {
			text = "1500 Meters";
			script = "setViewDistance 1500; systemChat('ViewDistance: 1500');";
		};
		class distance2000m {
			text = "2000 Meters";
			script = "setViewDistance 2000; systemChat('ViewDistance: 2000'); systemChat('Warning: Higher the view distance Lower the FPS');";
		};
		class distance3000m {
			text = "3000 Meters";
			script = "setViewDistance 3000; systemChat('ViewDistance: 3000'); systemChat('Warning: Higher the view distance Lower the FPS');";
		};
		class distance5000m {
			text = "5000 Meters";
			script = "setViewDistance 5000; systemChat('ViewDistance: 5000'); systemChat('Warning: Higher the view distance Lower the FPS');";
		};
	};
	class Binocular {
		class distance400m {
			text = "400 Meters";
			script = "setViewDistance 400; systemChat('ViewDistance: 400');";
		};
		class distance600m {
			text = "600 Meters";
			script = "setViewDistance 600; systemChat('ViewDistance: 600');";
		};
		class distance800m {
			text = "800 Meters";
			script = "setViewDistance 800; systemChat('ViewDistance: 800');";
		};
		class distance1000m {
			text = "1000 Meters";
			script = "setViewDistance 1000; systemChat('ViewDistance: 1000');";
		};
		class distance1250m {
			text = "1250 Meters";
			script = "setViewDistance 1250; systemChat('ViewDistance: 1250');";
		};
		class distance1500m {
			text = "1500 Meters";
			script = "setViewDistance 1500; systemChat('ViewDistance: 1500');";
		};
		class distance2000m {
			text = "2000 Meters";
			script = "setViewDistance 2000; systemChat('ViewDistance: 2000'); systemChat('Warning: Higher the view distance Lower the FPS');";
		};
		class distance3000m {
			text = "3000 Meters";
			script = "setViewDistance 3000; systemChat('ViewDistance: 3000'); systemChat('Warning: Higher the view distance Lower the FPS');";
		};
		class distance5000m {
			text = "5000 Meters";
			script = "setViewDistance 5000; systemChat('ViewDistance: 5000'); systemChat('Warning: Higher the view distance Lower the FPS');";
		};
	};
};