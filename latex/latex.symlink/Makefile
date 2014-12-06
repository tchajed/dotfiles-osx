# Use Variables.make for projects with includes to override onlysources.tex
# with the name of the main tex file.
-include Variables.make

onlysources.tex ?= $(wildcard *.tex)
OUTPUTS=$(onlysources.tex:.tex=.pdf)
default: $(OUTPUTS)

.PHONY: FORCE
$(OUTPUTS): %.pdf: %.tex FORCE
	latexrun $< -o $@

preview:
	open $(OUTPUTS)

.PHONY: clean
clean:
	latexrun --clean-all

# Use Targets.make to add additional Makefile targets (for auto-generated files
# that need custom rules, for example).
-include Targets.make
