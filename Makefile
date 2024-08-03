build: images/*.mmd
	@echo "Building images..."
	@for file in images/*.mmd; do \
		echo "Building $${file}..."; \
		mmdc -i $${file} -o $${file%.*}.svg; \
	done
	@echo "Done."
