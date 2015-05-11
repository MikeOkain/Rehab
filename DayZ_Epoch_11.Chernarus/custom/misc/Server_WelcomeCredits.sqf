_onScreenTime = 5;

waitUntil {!isNil "dayz_animalCheck"};
sleep 10;
 
_role1 = "Welcome to";
_role1names = ["ExposedGaming.com Epoch Testing grounds for RGN"];
_role2 = "Admins";
_role2names = ["ExposedGaming", "Mike Okain","Bollock"];
_role3 = "Website";
_role3names = ["www.exposedgaming.com"];
_role4 = "Teamspeak";
_role4names = ["ts.exposedgaming.com"];
 
{
sleep 2;
_memberFunction = _x select 0;
_memberNames = _x select 1;
_finalText = format ["<t size='0.40' color='#f2cb0b' align='right'>%1<br /></t>", _memberFunction];
_finalText = _finalText + "<t size='0.70' color='#FFFFFF' align='right'>";
{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
_finalText = _finalText + "</t>";
_onScreenTime + (((count _memberNames) - 1) * 0.5);
[
_finalText,
[safezoneX + safezoneW - 0.8,0.50],
[safezoneY + safezoneH - 0.8,0.7],
_onScreenTime,
0.5
] spawn BIS_fnc_dynamicText;
sleep (_onScreenTime);
} forEach [
[_role1, _role1names],
[_role2, _role2names],
[_role3, _role3names],
[_role4, _role4names]
]; 