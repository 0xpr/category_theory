#!/bin/sh

dir=.
while inotifywait -re modify $dir; do
    pdflatex -file-line-error -halt-on-error exercises.tex | grep \
        ".tex:[0-9]*:.*"
done
