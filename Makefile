
SRCDIR	= src
OUTDIR	= doc
SRC		= $(wildcard $(SRCDIR)/*.md)
_PDFS	= $(patsubst $(SRCDIR)/%.md, %.pdf, $(SRC))
PDFS	= $(addprefix $(OUTDIR)/, $(_PDFS))

.PHONY: all
all: $(PDFS)
	@echo "Done."

$(PDFS): $(OUTDIR) $(SRC)
	@echo "Compiling $@..."
	@pandoc -o $@ $(patsubst $(OUTDIR)/%.pdf, $(SRCDIR)/%.md, $@)

$(OUTDIR):
	@mkdir -p $@
