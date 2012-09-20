IMAGES = \
	image-arrows.pdf \
	image-arrow-stacked.pdf \
	image-arrow.pdf \
	image-mark-colors.pdf \
	image-mark-placement.pdf \
	image-mark-stacked.pdf \
	image-placement-plain.pdf \
	image-placement-turn.pdf \
	image-placement-turn1.pdf \
	image-mark.pdf


image-%.pdf: images/%.svg
	inkscape --export-pdf="$@" "$<"

main.pdf: main.tex $(IMAGES)
	pdflatex main.tex

clean:
	rm -f image-*.pdf main.pdf *.aux *.toc *.log
