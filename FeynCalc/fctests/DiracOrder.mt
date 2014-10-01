(* ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ *)

(* :Title: DiracOrder.mt                                                    *)

(*
   This software is covered by the GNU Lesser General Public License 3.
   Copyright (C) 1990-2014 Rolf Mertig
   Copyright (C) 1997-2014 Frederik Orellana
   Copyright (C) 2014 Vladyslav Shtabovenko
*)

(* :Summary:  Unit tests for DiracOrder              						*)

(* ------------------------------------------------------------------------ *)


Needs["HighEnergyPhysics`FeynCalc`"];
Get[StringJoin[$FeynCalcDirectory, "/fctests/DiracOrder.test"]];
Map[Test[InputForm[ToExpression[(#[[2]])]],InputForm[ToExpression[(#[[3]])]],TestID->#[[1]]]&,
    Join[fcstDiracOrder]];
