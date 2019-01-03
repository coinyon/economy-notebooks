NOTEBOOKS = \
	Bitcoin_vs_Gold_Maximum_Supply.html \
	IVU_Traffic_Solutions.html

all: $(NOTEBOOKS)

%.html: %.ipynb
	jupyter-nbconvert $< --to html
