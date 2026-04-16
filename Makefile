# tex-file
TEX_FILE ?= hsmz-thesis.tex

# tex-compiler
TEX_COMPILER ?= latexmk

# tex-compiler options
TEX_COMPILER_OPTIONS ?= -pdf -xelatex -shell-escape -verbose -file-line-error -synctex=1 -interaction=nonstopmode

# date for default pdf name
DATE_NOW := ${shell date "+%Y%m%d"}

# output name of compiled pdf
PDF_NAME ?= ${DATE_NOW} $(basename ${TEX_FILE}).pdf

build:
	${TEX_COMPILER} ${TEX_COMPILER_OPTIONS} "${TEX_FILE}"

run:
	${TEX_COMPILER} -pvc ${TEX_COMPILER_OPTIONS} "${TEX_FILE}"

archive:
	mv "./$(basename ${TEX_FILE}).pdf" "./pdf/${PDF_NAME}"

clean:
	rm -f *.aux \
		*.lof \
		*.log \
		*.lot \
		*.fls \
		*.out \
		*.toc \
		*.fmt \
		*.fot \
		*.cb \
		*.cb2 \
		.*.lb \
		*.fdb_latexmk \
		*.synctex.gz \
		*.bbl \
		*.blg \
		*.bcf \
		*.run.xml \
		*.wc \
		*.glo \
		*.glsdefs \
		*.loa \
		*.acn \
		*.acr \
		*.alg \
		*.glg \
		*.gls \
		*.ist \
		*.xdv



