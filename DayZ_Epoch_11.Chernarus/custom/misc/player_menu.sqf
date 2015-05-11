player_menu =
[
	["",true],
	["Dance", [2], "#USER:dance", -5, [["expression", ""]], "1", "1"],
	["End your miserable life", [3], "#USER:end", -5, [["expression", ""]], "1", "1"],
	["Environmental sounds", [4], "#USER:environment", -5, [["expression", ""]], "1", "1"],
	["Flip vehicle", [5], "", -5, [["expression", "(getPos player nearestObject 'LandVehicle') setVectorUp [0,0,1];"]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

dance =
[
	["",true],
	["Ivan dance", [2],  "", -5, [["expression","player playMove 'ActsPercMstpSnonWnonDnon_DancingDuoIvan';"]], "1", "1"],
	["Karate", [3],  "", -5, [["expression","player playMove 'AmovPercMstpSnonWnonDnon_exerciseKata';"]], "1", "1"],
	["Lie down", [4],  "", -5, [["expression","player playMove 'AidlPpneMstpSnonWnonDnon_SleepC_layDown';"]], "1", "1"],
	["Stefan dance", [5],  "", -5, [["expression","player playMove 'ActsPercMstpSnonWnonDnon_DancingDuoStefan';"]], "1", "1"],
	["Stefan duo dance", [6],  "", -5, [["expression","player playMove 'ActsPercMstpSnonWnonDnon_DancingStefan';"]], "1", "1"],
	["Stop dancing", [7],  "", -5, [["expression","player switchMove '';player playActionNow 'stop';"]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

end =
[
	["",true],
	["End your miserable life", [2],  "", -5, [["expression","player execVM 'custom\misc\end.sqf';"]], "1", "1"],
	["", [-1], "", -5, [["expression", ""]], "1", "0"],
	["Exit", [13], "", -3, [["expression", ""]], "1", "1"]
];

environment =
[
	["",true],
	["ON", [2],  "", -5, [["expression","enableEnvironment true;"]], "1", "1"],
	["OFF", [3],  "", -5, [["expression","enableEnvironment false;"]], "1", "1"]
];

showCommandingMenu "#USER:player_menu";