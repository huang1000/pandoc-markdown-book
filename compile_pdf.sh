mkdir -p book

# pandoc version 2.7.3
pandoc \
    --pdf-engine=xelatex \
    --highlight-style tango \
    --toc -N \
    --filter pandoc-crossref \
    -o book/book.pdf \
    src/title.txt src/*.md
    # --template=./templates/eisvogel.latex \
    # --top-level-division=chapter \
    # -V book \
