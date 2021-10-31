mkdir -p book

# pandoc version 2.7.3
pandoc \
    -f markdown+smart -t markdown-smart \
    -o book/index.html \
    --highlight-style tango \
    --filter pandoc-crossref \
    -s -t slidy \
    src/title.txt src/*.md

cp -r img book/
