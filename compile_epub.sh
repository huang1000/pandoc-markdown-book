mkdir -p book

# pandoc version 2.7.3
pandoc \
    --filter pandoc-crossref \
    --css templates/epub.css \
    --toc -N \
    -o book/book.epub \
    src/title.txt src/*.md
    # -f markdown+smart -t markdown-smart \
