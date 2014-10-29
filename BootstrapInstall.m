(* ::Package:: *)

Get["https://raw.githubusercontent.com/jkuczm/MathematicaBootstrapInstaller/v0.1.1/BootstrapInstaller.m"]


BootstrapInstall[
	"StringUtilities",
	"https://github.com/jkuczm/MathematicaStringUtilities/releases/download/v0.1.0/StringUtilities.zip",
	"AdditionalFailureMessage" ->
		Sequence[
			"You can ",
			Hyperlink[
				"install StringUtilities package manually",
				"https://github.com/jkuczm/MathematicaStringUtilities#manual-installation"
			],
			"."
		]
]
