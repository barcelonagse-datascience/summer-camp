PDF := $(patsubst src/%.md,pdf/%.pdf,$(wildcard src/*.md))
PPTX := $(patsubst src/%.md,html/%.html,$(wildcard src/*.md))

all : $(PDF) $(PPTX)

pdf/%.pdf :: src/%.md
	marp --theme /home/nandan/Documents/bgsedatascience/marp-theme/bgse.css $^ --pdf --allow-local-files -o $@

html/%.html : src/%.md
	marp --theme /home/nandan/Documents/bgsedatascience/marp-theme/bgse.css $^ --html --allow-local-files -o $@

clobber :
	rm -f $(PDF)
	rm -f $(PPTX)
