(* ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++ *)

(* :Title: SUNFSimplify     												*)

(*
	This software is covered by the GNU General Public License 3.
	Copyright (C) 1990-2018 Rolf Mertig
	Copyright (C) 1997-2018 Frederik Orellana
	Copyright (C) 2014-2018 Vladyslav Shtabovenko
*)

(* :Summary:  Simplifies expressions that contain SU(N) indices in the
							fundamental representation						*)

(* ------------------------------------------------------------------------ *)

SUNFSimplify::usage = "
SUNFSimplify[expr] simplifies expression that contain SU(N) indices in the \
fundamental representation";

(* ------------------------------------------------------------------------ *)

Begin["`Package`"]
End[]

Begin["`SUNFSimplify`Private`"]

SetAttributes[SUNFSimplify, Listable];

fci[z_ /; FreeQ[z, Pattern]] := (fci[z] = FCI[z]);

Options[SUNFSimplify] = {SUNNToCACF->True ,Explicit->False};

SUNFSimplify[expr_, OptionsPattern[]] :=
	Block[ {temp = fci[expr],simplify},
		simplify[ex_] :=
			ex/. SUNFDelta -> SUNFDeltaContract /. SUNFDeltaContract -> SUNFDelta //.
			SUNTF[{x__}, i_, j_SUNFIndex] SUNTF[{y__}, j_SUNFIndex, k_] :>
			SUNTF[{x,y}, i, k] /. SUNTF[{x__}, i_SUNFIndex, i_SUNFIndex] :>
			SUNSimplify[SUNTrace[SUNT[x],Explicit->OptionValue[Explicit]],SUNNToCACF->OptionValue[SUNNToCACF]] /.
			SUNTF[{x_,y__},i_,j_]/; FreeQ2[SUNSimplify[SUNT[x,y],
					Explicit->OptionValue[Explicit],SUNNToCACF->OptionValue[SUNNToCACF]], {SUNT,SUNTF,SUNFDelta}] :>
					SUNSimplify[SUNT[x,y],Explicit->OptionValue[Explicit],SUNNToCACF->OptionValue[SUNNToCACF]]*
					SUNFDelta[SUNFIndex[i],SUNFIndex[j]];

		If[ !FreeQ[temp,SUNFIndex],
			temp = Expand2[DotSimplify[temp, Expanding -> False],SUNFIndex];
			temp = FixedPoint[simplify,temp,10];
			If[ OptionValue[SUNNToCACF],
				temp = temp /. SUNN -> CA
			];
			temp,
			temp
		]
	]

FCPrint[1,"SUNFSimplify.m"];
End[]
