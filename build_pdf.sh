#!/usr/bin/env bash

# pandoc version 2.7.3
mkdir -p build

pandoc \
    --pdf-engine=xelatex \
    --highlight-style tango \
    --toc -N \
    --filter tools/linux/pandoc-crossref \
    -o build/output.pdf \
    title.txt book/*.md
#    --template=./templates/eisvogel.tex \