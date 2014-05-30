(* Mathematica Test File *)

(* ::Section:: *)
(*SetUp*)


Begin["TestEnvironment`StringTrimBoth`"];


(* ::Section:: *)
(*Tests*)


(* ::Subsection:: *)
(*No arguments*)


TestMatch[
	StringTrimBoth[]
	,
	HoldPattern[StringTrimBoth[]]
	,
	TestID -> "no args"
];


(* ::Subsection:: *)
(*One argument*)


TestMatch[
	StringTrimBoth["test string"]
	,
	HoldPattern[StringTrimBoth["test string"]]
	,
	TestID -> "1 arg"
];


(* ::Subsection:: *)
(*Two arguments*)


(* ::Subsubsection:: *)
(*Strings only*)


Test[
	StringTrimBoth["test strites", "tes"]
	,
	"t stri"
	,
	TestID -> "2 args: start and end with adfix"
];
Test[
	StringTrimBoth["testes", "tes"]
	,
	""
	,
	TestID -> "2 args: start and end with adfix: and nothing else"
];

Test[
	StringTrimBoth["test string", "lal"]
	,
	"test string"
	,
	TestID -> "2 args: start and end with different"
];
Test[
	StringTrimBoth["test string", "tes"]
	,
	"test string"
	,
	TestID -> "2 args: start with adfix, end with different"
];
Test[
	StringTrimBoth["test string", "ng"]
	,
	"test string"
	,
	TestID -> "2 args: start with different, end with adfix"
];


(* ::Subsubsection:: *)
(*With non-string*)


TestMatch[
	StringTrimBoth[x, "t"]
	,
	HoldPattern[StringTrimBoth[x, "t"]]
	,
	TestID -> "2 args: first non-string"
];
TestMatch[
	StringTrimBoth["s", x]
	,
	HoldPattern[StringTrimBoth["s", x]]
	,
	TestID -> "2 args: second non-string"
];


(* ::Subsection:: *)
(*Three arguments*)


(* ::Subsubsection:: *)
(*Strings only*)


Test[
	StringTrimBoth["test string", "te", "ing"]
	,
	"st str"
	,
	TestID -> "3 args: start with prefix, end with suffix"
];
Test[
	StringTrimBoth["teing", "te", "ing"]
	,
	""
	,
	TestID -> "3 args: start with prefix, end with suffix: and nothing else"
];

Test[
	StringTrimBoth["test strte", "te", "ing"]
	,
	"test strte"
	,
	TestID -> "3 args: start and end with prefix"
];
Test[
	StringTrimBoth["ingst string", "te", "ing"]
	,
	"ingst string"
	,
	TestID -> "3 args: start and end with suffix"
];
Test[
	StringTrimBoth["ingst strte", "te", "ing"]
	,
	"ingst strte"
	,
	TestID -> "3 args: start with suffix, end with prefix"
];
Test[
	StringTrimBoth["teng", "te", "ing"]
	,
	"teng"
	,
	TestID -> "3 args: shorter than sum of adfixes lengths"
];


(* ::Subsubsection:: *)
(*With non-string*)


TestMatch[
	StringTrimBoth[x, "t", "g"]
	,
	HoldPattern[StringTrimBoth[x, "t", "g"]]
	,
	TestID -> "3 args: first non-string"
];
TestMatch[
	StringTrimBoth["s", x, "g"]
	,
	HoldPattern[StringTrimBoth["s", x, "g"]]
	,
	TestID -> "3 args: second non-string"
];
TestMatch[
	StringTrimBoth["s", "t", x]
	,
	HoldPattern[StringTrimBoth["s", "t", x]]
	,
	TestID -> "3 args: third non-string"
];


(* ::Subsection:: *)
(*Four arguments*)


TestMatch[
	StringTrimBoth["test string", "t", "g", "e"]
	,
	HoldPattern[StringTrimBoth["test string", "t", "g", "e"]]
	,
	TestID -> "4 args"
];


(* ::Section:: *)
(*TearDown*)


(* Remove all symbols defined in current context. *)
Unprotect["`*"];
Quiet[Remove["`*"], {Remove::rmnsm}];


End[];
