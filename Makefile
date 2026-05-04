OUT_DIR = build

all: pdf html

PANDOC_FLAGS = -f typst -t html5 --standalone \
	--lua-filter pandoc/layout.lua \
	--css pandoc/resume.css \
	--embed-resources \
	--metadata title=""

$(OUT_DIR):
	mkdir -p $(OUT_DIR)

pdf: $(OUT_DIR)
	typst compile resume.typ $(OUT_DIR)/resume.pdf

html: $(OUT_DIR)
	pandoc resume.typ $(PANDOC_FLAGS) -o $(OUT_DIR)/resume.html

typst-html: $(OUT_DIR)
	typst compile --features html --format html resume.typ $(OUT_DIR)/resume-typst.html

clean:
	rm -rf $(OUT_DIR)
