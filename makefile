compile:
	yq eval super-caps.yml -o=json > super-caps.json

install: compile
	mkdir -p $$HOME/.config/karabiner/assets/complex_modifications/
	cp super-caps.json $$HOME/.config/karabiner/assets/complex_modifications/