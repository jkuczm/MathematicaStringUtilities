(* Mathematica Test File *)

(* ::Section:: *)
(*SetUp*)


Begin["TestEnvironment`StringJoinBy`"];


(* ::Section:: *)
(*Tests*)


(* ::Subsection:: *)
(*No arguments*)


Test[
	StringJoinBy[]
	,
	""
	,
	TestID -> "no args"
];


(* ::Subsection:: *)
(*Non-string argument*)


TestMatch[
	StringJoinBy["str1", 5, "str2"]
	,
	HoldPattern[StringJoinBy["str1", 5, "str2"]]
	,
	TestID -> "non-string arg"
];


(* ::Subsection:: *)
(*One string argument*)


Test[
	StringJoinBy["str1"]
	,
	"str1"
	,
	TestID -> "one: non-empty"
];

Test[
	StringJoinBy[""]
	,
	""
	,
	TestID -> "one: empty"
];


(* ::Subsection:: *)
(*Two string arguments*)


Test[
	StringJoinBy["str1", "str2"]
	,
	"str1 str2"
	,
	TestID -> "two: non-empty"
];
Test[
	StringJoinBy["", "str2"]
	,
	"str2"
	,
	TestID -> "two: empty, non-empty"
];
Test[
	StringJoinBy["str1", ""]
	,
	"str1"
	,
	TestID -> "two: non-empty, empty"
];
Test[
	StringJoinBy["", ""]
	,
	""
	,
	TestID -> "two: empty"
];


(* ::Subsection:: *)
(*Three string arguments*)


Test[
	StringJoinBy["str1", "str2", "str3"]
	,
	"str1 str2 str3"
	,
	TestID -> "three: non-empty"
];
Test[
	StringJoinBy["", "str2", "str3"]
	,
	"str2 str3"
	,
	TestID -> "three: first empty"
];
Test[
	StringJoinBy["str1", "", "str3"]
	,
	"str1 str3"
	,
	TestID -> "three: second empty"
];
Test[
	StringJoinBy["str1", "str2", ""]
	,
	"str1 str2"
	,
	TestID -> "three: third empty"
];
Test[
	StringJoinBy["", "", "str3"]
	,
	"str3"
	,
	TestID -> "three: third non-empty"
];
Test[
	StringJoinBy["", "str2", ""]
	,
	"str2"
	,
	TestID -> "three: second non-empty"
];
Test[
	StringJoinBy["str1", "", ""]
	,
	"str1"
	,
	TestID -> "three: first non-empty"
];
Test[
	StringJoinBy["", "", ""]
	,
	""
	,
	TestID -> "three: empty"
];


Test[
	StringJoinBy[{"str1", "", "str3"}]
	,
	"str1 str3"
	,
	TestID -> "list"
];


(* ::Subsection:: *)
(*"Separator" option*)


Test[
	StringJoinBy["str1", "", "str3", "Separator" -> ", "]
	,
	"str1, str3"
	,
	TestID -> "explicit \"Separator\" option"
];
Test[
	StringJoinBy["str1", "str2", "Separator" -> "\n"]
	,
	"str1\nstr2"
	,
	TestID -> "newline as explicit \"Separator\" option"
];


(* ::Subsection:: *)
(*"Omit" option*)


Test[
	StringJoinBy["str1", "str2", "str3", "Omit" -> "str2"]
	,
	"str1 str3"
	,
	TestID -> "explicit \"Omit\" option with string"
];
Test[
	StringJoinBy["str1", "str2", "str3", "Omit" -> "str2" | "str3"]
	,
	"str1"
	,
	TestID -> "explicit \"Omit\" option with pattern"
];
Test[
	StringJoinBy["str", "str2", "str", "Omit" -> "str" ~~ _]
	,
	"str str"
	,
	TestID -> "explicit \"Omit\" option with string pattern"
];


(* ::Section:: *)
(*TearDown*)


(* Remove all symbols defined in current context. *)
Unprotect["`*"];
Quiet[Remove["`*"], {Remove::rmnsm}];


End[];
