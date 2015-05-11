/*  

Class Configuration:

1. These classes are just examples to show what this mod can do. You can add or delete any class
in the _publicClasses list. Don't forget to leave off the last comma for the last element in the array.
You can even remove all gear to make this a skin selector only.

2. _startBag, _startMags and _startWeps make the default loadout. They will be added first, then the class loadout (if any) on top.
Use the base gear that you want all (or most) classes to have. Start binocs, pistols, pistol mags and bags are replaced if they 
are specified in the selected class. 

3. _customLoadout - List of UIDs with custom loadouts.
   _customLoadouts - List of custom loadouts. These must match the order of the first list. The first UID in _customLoadout corresponds with the first loadout in _customLoadouts and so on. 
   These will only show in the class dialog for the player who owns them. If multiple UIDs share the same loadout then add the same loadout multiple times to maintain order, 
   or consider making it a VIP class in _publicClasses instead. Each loadout must have a unique name just like regular classes. Do not include humanity or VIP level in these.
   
4. Regular class format:
	[Name,  Male Skin,  Female Skin,  Magazines and Items,  Weapons and Tools,  Bag,  Bag Mags and Items,  Bag Weps and Tools,  VIP Level,  Humanity Level, Coins]
	Name - Each class must have a unique name. Do not use double quotes " inside.
	Male Skin - Must be a skin compatible with your mod.
	Female Skin - This will be used if the player picked female on the gender selection screen.
	Magazines and Items - Mags and items to add in addition to _startMags. For multiple add the quantity after (i.e. "ItemBandage",3) The quantity is assumed to be 1 if not specified.  
	Weapons and Tools - Weps and tools to add in addition to _startWeps.
	Bag - Leave as "" for _startBag
	Bag Mags - Same format as magazines. Leave as [] for none
	Bag Weps - Same format as weapons. Leave as [] for none
	VIP Level -
		0 - Anyone can pick this class
		1 - Only players with UIDs in _classLevel1 can pick this class
		2 - Only players with UIDs in _classLevel2 can pick this class
		3 - Only players with UIDs in _classLevel3 can pick this class​
	Humanity Level -
		0 - Anyone can pick this class
		Negative # - Only players with humanity less than this number can pick this class
		Positive # - Only players with humanity greater than this number can pick this class​
	Coins
		0 - Does nothing, use if single currency is not installed
		Positive # - Gives player coins with loadout
		
5. Random class format:
	[
		Name, 
		[[Male Skins],[Female Skins]],
		Mags+Items, #ofItemPicks, 
		Tools, #ofToolPicks, 
		Primary, #ofPrimaryMags, 
		Pistol, #ofPistolMags, 
		Bags, 
		BagItems, #ofBagItemPicks, 
		BagTools, #ofBagToolPicks, 
		BagPrimary, #ofBagPrimaryMags, 
		BagPistol, #ofBagPistolMags, 
		VIPLevel, HumanityLevel, Coins
	]	
	Name - Can be anything unique, does not have to be "Random"
	Skins - One will be chosen at random for your gender.
	Mags+Items - Same format as regular.
	#ofItemPicks - # of unique items to pick randomly from the previous list. Never use a # higher than the # of unique Mags+Items.
	Tools - List of toolbelt items to be picked from randomly.
	#ofToolPicks - # of unique tools to pick randomly from the previous list. Never use a # higher than the # of unique Tools.
	Primary - List of primary weapons to be picked from randomly.
	#ofPrimaryMags - The quantity of mags you will always get for your primary weapon.
	Pistol - List of pistols to be picked from randomly.
	#ofPistolMags - The quantity of mags you will always get for your pistol.
	Bags - One will be selected at random.
	BagX,#ofBagX - Same as their respective non-bag counter parts, except they will be added to the backpack.
	VIPLevel, HumanityLevel, Coins - Same as regular.
	
5. Any of the _customLoadouts and _publicClasses can be made into random classes. They just need to be in the random format
and it will be automatically detected. You can have multiple random classes, i.e. Random LMG, Random Rifle, Random Sniper, Random 
Bandit, Random Hero, etc. You can make every class a random class if you want to.

6. Instead of repeating long strings of the same items multiple times you can use constants in this format:
		#define SHORT_HAND_NAME "Item1","Item2","Item3","Item4"
Then replace all occurrences of "Item1","Item2","Item3","Item4" with SHORT_HAND_NAME as I did with the VIP_ITEMS example below.

*/
#define VIP_ITEMS "ItemAntibiotic","ItemBloodbag","ItemMorphine","ItemBandage","ItemBandage","ItemBandage" // constant example, these can be removed if they are not used below
#define VIP_TOOLS "Binocular_Vector","NVGoggles","ItemHatchet_DZE","ItemKnife","ItemMatchbox_DZE","Itemetool","ItemSledge","ItemGPS","ItemCrowbar"

_currencyVariable = "cashMoney"; // Coins variable name
_startBag = ""; // Use "" for none
_startMags = ["ItemBandage",1,"ItemPainkiller","ItemWaterbottle","FoodSteakCooked","17Rnd_9x19_glock17",3];
_startWeps = ["ItemMap","ItemFlashlight","ItemRadio","ItemCompass","Binocular","ItemToolbox","glock17_EP1"];
_customLoadout = [
	"0",
	"0",
	"0"
];
_customLoadouts = [
	[],
	[],
	[]
];

_classLevel1 = ["76561198041396167","0","0"];
_classLevel2 = ["76561198041396167","0","0"];
_classLevel3 = ["76561198041396167","0","0"];
_classLevel4 = ["76561198041396167","0","0"];
_classLevel5 = ["76561198041396167","0","0"];
// To give higher level VIPs access to lower level VIP classes uncomment the two lines below:
// _classLevel1 = _classLevel1 + _classLevel2 + _classLevel3;
// _classLevel2 = _classLevel2 + _classLevel3;

_publicClasses = [
	["Bandit","Bandit2_DZ","BanditW1_DZ",["8Rnd_B_Beneli_74Slug",2],["Remington870_lamp"],"",[],[],0,-5000,0],
	["Hero","Soldier_Sniper_PMC_DZ","SurvivorWpink_DZ",["8Rnd_B_Beneli_74Slug",2],["Remington870_lamp"],"",[],[],0,5000,0],
	["Survivor","Survivor2_DZ","SurvivorW2_DZ",[],[],"",["8Rnd_B_Beneli_74Slug",2],["Remington870_lamp"],0,0,0],
	["British Soldier","Soldier1_DZ","SurvivorWcombat_DZ",["8Rnd_B_Beneli_74Slug",2],["Remington870_lamp"],"",[],[],0,0,0],
	["Business Person","Functionary1_EP1_DZ","SurvivorWurban_DZ",["8Rnd_B_Beneli_74Slug",2],["Remington870_lamp"],"",[],[],0,0,0],
	["Civilian","Haris_Press_EP1_DZ","SurvivorW3_DZ",["8Rnd_B_Beneli_74Slug",2],["Remington870_lamp"],"",[],[],0,0,0],
	["Czech Soldier","CZ_Special_Forces_GL_DES_EP1_DZ","SurvivorWcombat_DZ",["8Rnd_B_Beneli_74Slug",2],["Remington870_lamp"],"",[],[],0,0,0],
	["Police Officer","RU_Policeman_DZ","SurvivorWdesert_DZ",["8Rnd_B_Beneli_74Slug",2],["Remington870_lamp"],"",[],[],0,0,0],
	["Rocker","Rocker1_DZ","SurvivorWurban_DZ",["8Rnd_B_Beneli_74Slug",2],["Remington870_lamp"],"",[],[],0,0,0],
	["Terrorist","TK_INS_Soldier_EP1_DZ","BanditW2_DZ",["8Rnd_B_Beneli_74Slug",2],["Remington870_lamp"],"",[],[],0,0,0],
	["US Soldier","Graves_Light_DZ","SurvivorWcombat_DZ",["8Rnd_B_Beneli_74Slug",2],["Remington870_lamp"],"",[],[],0,0,0],
	["5$ Loadout","INS_Soldier_AR_DZ","SurvivorW3_DZ",["30rnd_9x19_MP5",2,"15Rnd_9x19_M9SD",3,VIP_ITEMS],["MP5A5","M9SD",VIP_TOOLS],"DZ_ALICE_Pack_EP1",[],[],1,0,0],
	["10$ Loadout","INS_Soldier_CO_DZ","SurvivorWdesert_DZ",["30Rnd_556x45_Stanag",3,"17Rnd_9x19_glock17",3,"ItemBandage",1,VIP_ITEMS],["G36K_camo","glock17_EP1",VIP_TOOLS],"DZ_GunBag_EP1",[],[],2,0,0],
	["15$ Loadout","GUE_Soldier_Sniper_DZ","SurvivorWurban_DZ",["100Rnd_556x45_BetaCMag",1,"15Rnd_9x19_M9SD",4,VIP_ITEMS],["SCAR_L_STD_Mk4CQT","M9SD",VIP_TOOLS],"DZ_Backpack_EP1",[],[],3,0,0],
	["20$ Loadout","GUE_Soldier_Sniper_DZ","SurvivorWurban_DZ",["5Rnd_762x51_M24",3,"17Rnd_9x19_glock17",3,"ItemBandage",1,VIP_ITEMS],["M40A3","glock17_EP1",VIP_TOOLS],"DZ_LargeGunBag_EP1",[],[],4,0,0],
	["Admin Loadout","GUE_Soldier_Sniper_DZ","SurvivorWurban_DZ",["20Rnd_762x51_DMR",2,"15Rnd_9x19_M9SD",4,VIP_ITEMS],["DMR","M9SD",VIP_TOOLS],"DZ_LargeGunBag_EP1",[],[],5,0,0]
];