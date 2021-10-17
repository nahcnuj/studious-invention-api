.PHONY:	all document
all: document

document: docs/api/v1
docs/api/v1: schema.yaml
	@#bin/gen-docs.bash $< $@
