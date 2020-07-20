PDF := $(patsubst src/%.md,pdf/%.pdf,$(wildcard src/*.md))
HTML := $(patsubst src/%.md,docs/lectures/%.html,$(wildcard src/*.md))

all : $(PDF) $(HTML)

pdf/%.pdf :: src/%.md
	marp --theme /home/nandan/Documents/bgsedatascience/marp-theme/bgse.css $^ --pdf --allow-local-files -o $@

docs/lectures/%.html : src/%.md
	marp --theme /home/nandan/Documents/bgsedatascience/marp-theme/bgse.css $^ --html --allow-local-files -o $@

clobber :
	rm -f $(PDF)
	rm -f $(HTML)
