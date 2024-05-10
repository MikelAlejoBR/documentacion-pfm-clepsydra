#!/bin/bash

# Build the document for the first time to generate the structure. Many
# references will be missing.
pdflatex -shell-escape -output-directory='build' main.tex

# Generate the glossaries.
makeglossaries -d 'build' main

# Generate the bibliography.
biber --input-directory='build' --output-directory='build' main.bcf

# Rebuild the document twice so that we make sure that all the references are
# properly included and rendered.
pdflatex -shell-escape -output-directory='build' main.tex
pdflatex -shell-escape -output-directory='build' main.tex
