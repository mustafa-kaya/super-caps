compile:
	cat extras/first-line.yml src/*.yml extras/last-line.yml > dist/super-caps.yml
	yq eval dist/super-caps.yml -o=json > dist/super-caps.json

install: compile
	mkdir -p $$HOME/.config/karabiner/assets/complex_modifications/
	cp dist/super-caps.json $$HOME/.config/karabiner/assets/complex_modifications/