# String Utilities

[![release](http://img.shields.io/github/release/jkuczm/MathematicaStringUtilities.svg)](https://github.com/jkuczm/MathematicaStringUtilities/releases/latest)
[![Semantic Versioning](http://img.shields.io/badge/SemVer-2.0.0-brightgreen.svg)](http://semver.org/spec/v2.0.0.html)
[![license MIT](http://img.shields.io/:license-MIT-blue.svg)](https://github.com/jkuczm/MathematicaStringUtilities/blob/master/LICENSE)


Set of tools for managing strings in Mathematica.


* [Installation](#installation)
    * [Automatic installation](#automatic-installation)
    * [Manual installation](#manual-installation)
    * [No installation](#no-installation)
* [Compatibility](#compatibility)
* [Bugs and requests](#bugs-and-requests)
* [Contributing](#contributing)
* [License](#license)
* [Versioning](#versioning)



## Installation


### Automatic installation

To install StringUtilities package evaluate:
```Mathematica
Get["https://raw.githubusercontent.com/jkuczm/MathematicaStringUtilities/master/BootstrapInstall.m"]
```

Note that this will also install
[ProjectInstaller](https://github.com/lshifr/ProjectInstaller) package, if you
don't have it already installed.

To load StringUtilities package evaluate: ``Needs["StringUtilities`"]``.


### Manual installation

1. Download latest released
   [StringUtilities.zip](https://github.com/jkuczm/MathematicaStringUtilities/releases/download/v0.1.0/StringUtilities.zip)
   file.

2. Extract downloaded `StringUtilities.zip` to any directory which is on
   Mathematica `$Path`, e.g. to one obtained by evaluating
   `FileNameJoin[{$UserBaseDirectory,"Applications"}]`.


3. To load the package evaluate: ``Needs["StringUtilities`"]``.


### No installation

To use package directly from the Web, without installation, evaluate:
```Mathematica
Get["https://raw.githubusercontent.com/jkuczm/MathematicaStringUtilities/master/StringUtilities/StringUtilities.m"]
```



## Compatibility

This package contains automatic test suite. Package is being tested with
Mathematica versions 8.0 and 9.0 on Linux. Since it doesn't contain any OS
specific code it should work with above versions on all operating systems.

There's also no obvious reason for package not to work on earlier (6.0+)
versions of Mathematica.



## Bugs and requests

If you find any bugs or have feature request please create an
[issue on GitHub](https://github.com/jkuczm/MathematicaStringUtilities/issues).



## Contributing

Feel free to fork and send pull requests.

If you want to use Ant scripts from this repository you will also need to
install [WWBCommon](https://github.com/jkuczm/WWBCommon) project.

All contributions are welcome!



## License

This package is released under
[The MIT License](https://github.com/jkuczm/MathematicaStringUtilities/blob/master/LICENSE).



## Versioning

Releases of this package will be numbered using
[Semantic Versioning guidelines](http://semver.org/).
