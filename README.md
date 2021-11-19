# elm-pkg-patch
Simple example on how to patch elm packages

# Context 

Elm core libraries development have a batch approach to fixing issues as explained [here](https://github.com/elm/expectations).

If a particular patch is needed faster than allowed by the current process, one could fork the target package and use the approach described bellow to integrate the patch. 

# Approach 

The included approach will set `ELM_HOME` to `elm-stuff/pkgs` and will install the declared patched version in the place of the original version. 

The relevant code is in [fix-pkgs](fix-pkgs) bash script. The `pkgs` variable holds a list of lines containing the source package, the patched package and the targeted version. 

By convention, the patched package should keep the original name of the project and should have a `version-fix` tag. Please see [pdamoc/core](https://github.com/pdamoc/core) for an example of this. 


# Testing 

```sh
./fix-pkgs
ELM_HOME=./elm-stuff/pkgs elm make src/Main.elm
```

or, by using the included `Makefile`

```sh
make install 
make 
```
