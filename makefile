
PDF  := book/book.pdf
EPUB := book/book.epub

.PHONY: clean pdf epub
all: pdf epub
epub: $(EPUB) 
pdf: $(PDF)

$(EPUB): src/title.txt src/*.md
	bash compile_epub.sh

$(PDF): src/title.txt src/*.md
	bash compile_pdf.sh

clean:
	rm -f $(EPUB) $(PDF)
