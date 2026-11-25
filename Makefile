


resume.pdf: resume.tex
	#pdflatex $?
	latexmk -pdf


# By default, "clean" leaves the PDF output, while removing intermediate files.
# Define the environment variable "RESUME_CLEAN" to also remove PDF outputs.
CLEAN_FILES = *.aux *.log *.fls *.fdb*
ifdef RESUME_CLEAN
	CLEAN_FILES += *.pdf
endif
clean:
	rm $(CLEAN_FILES)


