# Description: Makefile for bun typescript application
# Author: Ben Simmers

ENTRYPOINT = index.ts
OUTPUT_DIR = dist

.PHONY: run watch build clean test

run:
	bun ./src/$(ENTRYPOINT)

watch:
	bun --watch --hot ./src/$(ENTRYPOINT)

build:
	bun build --entrypoints ./src/$(ENTRYPOINT) --outdir ./$(OUTPUT_DIR)

test:
	bun test

clean:
	rm -rf $(OUTPUT_DIR)
