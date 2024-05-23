.PHONY: test clean decrypt encrypt main

doc:
	pandoc RESUME.md --pdf-engine=xelatex -V geometry:margin=1in -o documents/RESUME.pdf

clean:
	rm -rf documents/*
