.PHONY: doc clean

doc:
	pandoc RESUME.md --pdf-engine=xelatex -V geometry:margin=1in -o documents/RESUME.pdf

clean:
	rm -rf documents/*
