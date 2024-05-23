.PHONY: doc clean

doc:
	pandoc RESUME.md \
		--pdf-engine=xelatex \
		-V geometry:margin=1in \
		-V mainfont="FiraCode Nerd Font Mono" \
		-V title="Jan Hencic's Resume" -V date="`date "+%B %d, %Y"`" \
		-V header-includes="\usepackage{titling}\setlength{\droptitle}{-6em}" \
		-o documents/RESUME.pdf


clean:
	rm -rf documents/*
