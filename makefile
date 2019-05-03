
all: index.html

index.html: css/* data/* img/* index.rmd
	Rscript -e "rmarkdown::render(input = \"index.rmd\", output_file = \"index.html\", clean = TRUE, quiet = TRUE)"
	git add -A
	git commit -m "Change species"
	git push
