THEME ?= neutral
build: images/*.mmd
	@echo "Building images..."
	for file in images/*.mmd; do \
		echo "Building $${file}..."; \
		npx mmdc -i $${file} -o $${file%.*}.svg -b transparent -t ${THEME}; \
	done
	@echo "Done."
