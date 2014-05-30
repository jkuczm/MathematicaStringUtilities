(* ::Package:: *)

BeginPackage["StringUtilities`"]


(* ::Section:: *)
(*Usage messages*)


StringJoinBy::usage =
"\
StringJoinBy[\"s1\", \"s2\", ...] or StringJoinBy[{\"s1\", \"s2\", ...}] \
returns a string consisting of a concatenation of the si separated by one \
space, empty strings are omitted in concatenation."


StringTrimBoth::usage =
"\
StringTrimBoth[\"str\", \"begin\", \"end\"]\
if \"str\" begins with \"begin\" and ends with \"end\" returns \"string\" \
with both adfixes removed."


(* ::Section:: *)
(*Implementation*)


(*
	Unprotect all symbols in this context
	(all public symbols provided by this package)
*)
Unprotect["`*"]


Begin["`Private`"]


(* ::Subsection:: *)
(*StringJoinBy*)


Options[StringJoinBy] = {
	"Separator" -> " ",
	"Omit" -> ""
}


StringJoinBy[strList:{___String}, OptionsPattern[]] :=
	With[
		{cleaned = Select[strList, ! StringMatchQ[#, OptionValue["Omit"]]&]}
		,
		If[cleaned === {},
			""
		(* else *),
			StringJoin[Riffle[cleaned, OptionValue["Separator"]]]
		]
	]

StringJoinBy[strings___String, opts:OptionsPattern[]] :=
	StringJoinBy[{strings}, opts]


(* ::Subsection:: *)
(*StringTrimBoth*)


StringTrimBoth[str_String, adfix_String] := StringTrimBoth[str, adfix, adfix]

StringTrimBoth[str_String, prefix_String, suffix_String] :=
	If[StringMatchQ[str, prefix ~~ ___ ~~ suffix],
		StringTake[str, {StringLength[prefix] + 1, -StringLength[suffix] - 1}]
	(* else *),
		str
	]


End[]


(* ::Subsection:: *)
(*Public symbols protection*)


(*
	Protect all symbols in this context
	(all public symbols provided by this package)
*)
Protect["`*"]


EndPackage[]
