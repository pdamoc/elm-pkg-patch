default:
	ELM_HOME=./elm-stuff/pkgs elm make src/Main.elm

install: FORCE
	./fix-pkgs
FORCE: ;