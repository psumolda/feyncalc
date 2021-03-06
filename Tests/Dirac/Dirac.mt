(* :Title: Dirac.mt															*)

(*
	This software is covered by the GNU General Public License 3.
	Copyright (C) 1990-2018 Rolf Mertig
	Copyright (C) 1997-2018 Frederik Orellana
	Copyright (C) 2014-2018 Vladyslav Shtabovenko
*)

(* :Summary:  Unit tests for functions in the "Dirac" directory				*)

(* ------------------------------------------------------------------------ *)

Needs["FeynCalc`"];

ClearAll[tests];
tests = FileNames["*.test",FileNameJoin[{ParentDirectory@$FeynCalcDirectory, "Tests", "Dirac"}]]
Get/@tests;

If[	$OnlySubTest=!="",
	testNames = "Tests`Dirac`*";
	removeTests=Complement[Names[testNames],Flatten[StringCases[Names[testNames],Alternatives@@$OnlySubTest]]];
	Remove/@removeTests;
	Print["Only following subtests will be checked: ", Names[testNames]];
	Remove[testNames]
];



stingCompare[a_,b_]:=If[ToString[a]===ToString[b],True,False];

stingCompareIgnore[_,_]:=
	True;
DeclareNonCommutative[FCNCA,FCNCB,FCNCC,nc1,nc2,nc3,nc4];

If[ Names["Tests`Dirac`fcstAnti5*"]=!={},
	$BreitMaison = False;
	$Larin = False;
	tmpTest =  Map[test[ToExpression[(#[[2]])],ToExpression[(#[[3]])],testID->#[[1]]]&, Join@@(ToExpression/@Names["Tests`Dirac`fcstAnti5*"])];
	tmpTest = tmpTest /. testID->TestID /. test -> Test;
	$BreitMaison = False;
	$Larin = False
];

If[ Names["Tests`Dirac`fcstDiracSubstitute67*"]=!={},
	tmpTest = Map[test[ToExpression[(#[[2]])],ToExpression[(#[[3]])],testID->#[[1]]]&,
	Join@@(ToExpression/@Names["Tests`Dirac`fcstDiracSubstitute67*"])];
	tmpTest = tmpTest /. testID->TestID /. test -> Test;
];

If[ Names["Tests`Dirac`fcstDiracSubstitute5*"]=!={},
	tmpTest = Map[test[ToExpression[(#[[2]])],ToExpression[(#[[3]])],testID->#[[1]]]&,
	Join@@(ToExpression/@Names["Tests`Dirac`fcstDiracSubstitute5*"])];
	tmpTest = tmpTest /. testID->TestID /. test -> Test;
];

If[ Names["Tests`Dirac`fcstSpinorChainTrick*"]=!={},
	tmpTest = Map[test[ToExpression[(#[[2]])],ToExpression[(#[[3]])],testID->#[[1]]]&,
	Join@@(ToExpression/@Names["Tests`Dirac`fcstSpinorChainTrick*"])];
	tmpTest = tmpTest /. testID->TestID /. test -> Test;
];

If[ Names["Tests`Dirac`fcstSpinorChainChiralSplit*"]=!={},
	tmpTest = Map[test[ToExpression[(#[[2]])],ToExpression[(#[[3]])],testID->#[[1]]]&,
	Join@@(ToExpression/@Names["Tests`Dirac`fcstSpinorChainChiralSplit*"])];
	tmpTest = tmpTest /. testID->TestID /. test -> Test;
];

If[ Names["Tests`Dirac`fcstSirlinSimplify*"]=!={},
	tmpTest = Map[test[ToExpression[(#[[2]])],ToExpression[(#[[3]])],testID->#[[1]]]&,
	Join@@(ToExpression/@Names["Tests`Dirac`fcstSirlinSimplify*"])];
	tmpTest = tmpTest /. testID->TestID /. test -> Test;
];

If[ Names["Tests`Dirac`fcstChisholm*"]=!={},
	tmpTest = Map[test[ToExpression[(#[[2]])],ToExpression[(#[[3]])],testID->#[[1]]]&,
	Join@@(ToExpression/@Names["Tests`Dirac`fcstChisholm*"])];
	tmpTest = tmpTest /. testID->TestID /. test -> Test;
];


If[ Names["Tests`Dirac`fcstDiracSigmaExplicit*"]=!={},
	tmpTest = Map[test[ToExpression[(#[[2]])],ToExpression[(#[[3]])],testID->#[[1]]]&,
	Join@@(ToExpression/@Names["Tests`Dirac`fcstDiracSigmaExplicit*"])];
	tmpTest = tmpTest /. testID->TestID /. test -> Test;
];

If[ Names["Tests`Dirac`fcstDiracSubstitute67*"]=!={},
	tmpTest = Map[test[ToExpression[(#[[2]])],ToExpression[(#[[3]])],testID->#[[1]]]&,
	Join@@(ToExpression/@Names["Tests`Dirac`fcstDiracSubstitute67*"])];
	tmpTest = tmpTest /. testID->TestID /. test -> Test;
];

If[ Names["Tests`Dirac`fcstEpsChisholm*"]=!={},
	tmpTest = Map[test[ToExpression[(#[[2]])],ToExpression[(#[[3]])],testID->#[[1]]]&,
	Join@@(ToExpression/@Names["Tests`Dirac`fcstEpsChisholm*"])];
	tmpTest = tmpTest /. testID->TestID /. test -> Test;
];

If[ Names["Tests`Dirac`fcstToDiracSigma*"]=!={},
	tmpTest = Map[test[ToExpression[(#[[2]])],ToExpression[(#[[3]])],testID->#[[1]]]&,
	Join@@(ToExpression/@Names["Tests`Dirac`fcstToDiracSigma*"])];
	tmpTest = tmpTest /. testID->TestID /. test -> Test;
];

If[ Names["Tests`Dirac`fcstToDiracGamma67*"]=!={},
	tmpTest = Map[test[ToExpression[(#[[2]])],ToExpression[(#[[3]])],testID->#[[1]]]&,
	Join@@(ToExpression/@Names["Tests`Dirac`fcstToDiracGamma67*"])];
	tmpTest = tmpTest /. testID->TestID /. test -> Test;
];

If[ Names["Tests`Dirac`fcstDiracGammaCombine*"]=!={},
	tmpTest = Map[test[ToExpression[(#[[2]])],ToExpression[(#[[3]])],testID->#[[1]]]&,
	Join@@(ToExpression/@Names["Tests`Dirac`fcstDiracGammaCombine*"])];
	tmpTest = tmpTest /. testID->TestID /. test -> Test;
];

If[ Names["Tests`Dirac`fcstDiracGammaExpand*"]=!={},
	tmpTest = Map[test[ToExpression[(#[[2]])],ToExpression[(#[[3]])],testID->#[[1]]]&,
	Join@@(ToExpression/@Names["Tests`Dirac`fcstDiracGammaExpand*"])];
	tmpTest = tmpTest /. testID->TestID /. test -> Test;
];

If[ Names["Tests`Dirac`fcstDiracSigmaExpand*"]=!={},
	tmpTest = Map[test[ToExpression[(#[[2]])],ToExpression[(#[[3]])],testID->#[[1]]]&,
	Join@@(ToExpression/@Names["Tests`Dirac`fcstDiracSigmaExpand*"])];
	tmpTest = tmpTest /. testID->TestID /. test -> Test;
];

If[ Names["Tests`Dirac`fcstDiracEquation*"]=!={},
	$BreitMaison = False;
	tmpTest = Map[test[ToExpression[(#[[2]])],ToExpression[(#[[3]])],testID->#[[1]]]&, Join@@(ToExpression/@Names["Tests`Dirac`fcstDiracEquation*"])];
	tmpTest = tmpTest /. testID->TestID /. test -> Test;
	$BreitMaison = False
];

If[ Names["Tests`Dirac`fcstDiracOrder*"]=!={},
	tmpTest = Map[test[ToExpression[(#[[2]])],ToExpression[(#[[3]])],testID->#[[1]]]&,
	Join@@(ToExpression/@Names["Tests`Dirac`fcstDiracOrder*"])];
	tmpTest = tmpTest /. testID->TestID /. test -> Test;
];

If[ Names["Tests`Dirac`fcstFCDiracIsolate*"]=!={},
	tmpTest = Map[test[ToExpression[(#[[2]])],ToExpression[(#[[3]])],testID->#[[1]]]&,
	Join@@(ToExpression/@Names["Tests`Dirac`fcstFCDiracIsolate*"])];
	tmpTest = tmpTest /. testID->TestID /. test -> Test;
];

If[ Names["Tests`Dirac`fcstDiracReduce*"]=!={},
	tmpTest = Map[test[ToExpression[(#[[2]])],ToExpression[(#[[3]])],testID->#[[1]]]&,
	Join@@(ToExpression/@Names["Tests`Dirac`fcstDiracReduce*"])];
	tmpTest = tmpTest /. testID->TestID /. test -> Test;
];

If[ Names["Tests`Dirac`fcstDiracSimplify"]=!={},
	tmpTest = Map[test[ToExpression[(#[[2]])],ToExpression[(#[[3]])],testID->#[[1]]]&,
		Join@@(ToExpression/@Names["Tests`Dirac`fcstDiracSimplify"])];
	tmpTest = tmpTest /. testID->TestID /. test -> Test;
];

If[ Names["Tests`Dirac`fcstDiracSimplifySirlin"]=!={},
	tmpTest = Map[test[ToExpression[(#[[2]])],ToExpression[(#[[3]])],testID->#[[1]]]&,
		Join@@(ToExpression/@Names["Tests`Dirac`fcstDiracSimplifySirlin"])];
	tmpTest = tmpTest /. testID->TestID /. test -> Test;
];

If[ Names["Tests`Dirac`fcstDiracSimplifyDotWarnings*"]=!={},
	tmpTest = Map[test[ToExpression[(#[[2]])],ToExpression[(#[[3]])],(#[[4]]),testID->#[[1]],
		MessagesEquivalenceFunction->stingCompareIgnore]&,
		Join@@(ToExpression/@Names["Tests`Dirac`fcstDiracSimplifyDotWarnings"])];
	tmpTest = tmpTest /. testID->TestID /. test -> Test
];

If[ Names["Tests`Dirac`fcstDiracTrick*"]=!={},
	$BreitMaison=False;
	$Larin=False;
	tmpTest = Map[test[ToExpression[(#[[2]])],ToExpression[(#[[3]])],testID->#[[1]]]&,
		Join@@(ToExpression/@Names["Tests`Dirac`fcstDiracTrick*"])];
	$BreitMaison=False;
	$Larin=False;
	tmpTest = tmpTest /. testID->TestID /. test -> Test
];

If[ Names["Tests`Dirac`fcstTr"]=!={},
	tmpTest = Map[test[ToExpression[(#[[2]])],ToExpression[(#[[3]])],testID->#[[1]]]&,
		Join@@(ToExpression/@Names["Tests`Dirac`fcstTr"])];
	tmpTest = tmpTest /. testID->TestID /. test -> Test
];

If[ Names["Tests`Dirac`fcstTr4AllFreeNoGamma5"]=!={},
	tmpTest = Map[test[ToExpression[(#[[2]])],ToExpression[(#[[3]])],testID->#[[1]]]&,
		Join@@(ToExpression/@Names["Tests`Dirac`fcstTr4AllFreeNoGamma5"])];
	tmpTest = tmpTest /. testID->TestID /. test -> Test
];

If[ Names["Tests`Dirac`fcstTrDAllFreeNoGamma5"]=!={},
	tmpTest = Map[test[ToExpression[(#[[2]])],ToExpression[(#[[3]])],testID->#[[1]]]&,
		Join@@(ToExpression/@Names["Tests`Dirac`fcstTrDAllFreeNoGamma5"])];\
	tmpTest = tmpTest /. testID->TestID /. test -> Test
];

If[ Names["Tests`Dirac`fcstTr4AllFreeOneGamma5"]=!={},
	tmpTest = Map[test[ToExpression[(#[[2]])],ToExpression[(#[[3]])],testID->#[[1]]]&,
		Join@@(ToExpression/@Names["Tests`Dirac`fcstTr4AllFreeOneGamma5"])];
	tmpTest = tmpTest /. testID->TestID /. test -> Test
];

If[ Names["Tests`Dirac`fcstDiracTrace*"]=!={},
	tmpTest = Map[test[ToExpression[(#[[2]])],ToExpression[(#[[3]])],testID->#[[1]]]&,
	Join@@(ToExpression/@Names["Tests`Dirac`fcstDiracTrace*"])];
	tmpTest = tmpTest /. testID->TestID /. test -> Test
];

If[ Names["Tests`Dirac`fcstTrLarin*"]=!={},
	$BreitMaison=False;
	$Larin=True;
	tmpTest = Map[test[ToExpression[(#[[2]])],ToExpression[(#[[3]])],testID->#[[1]]]&, Join@@(ToExpression/@Names["Tests`Dirac`fcstTrLarin*"])];
	tmpTest = tmpTest /. testID->TestID /. test -> Test;
	$Larin=False;
	$BreitMaison=False
];


If[ Names["Tests`Dirac`fcstToLarin*"]=!={},
	tmpTest = Map[test[ToExpression[(#[[2]])],ToExpression[(#[[3]])],testID->#[[1]]]&,
	Join@@(ToExpression/@Names["Tests`Dirac`fcstToLarin*"])];
	tmpTest = tmpTest /. testID->TestID /. test -> Test
];

