.PHONY = convert_to_html convert_to_pdf

convert_to_html:
	pandoc -f markdown -t html README.md -o raymond_buhr_resume.html

convert_to_pdf:
	pandoc -f markdown -t html5 -V geometry:margin=0.5in -o raymond_buhr_resume.pdf --metadata pagetitle="Raymond Buhr Resume" README.md
