HTML_NOTEBOOKS = \
	Bitcoin_vs_Gold_Maximum_Supply.html \
	IVU_Traffic_Solutions.html \
	ICONOMI_Linear_Regression_Forecast.html

all: $(HTML_NOTEBOOKS)

clean:
	rm -f $(HTML_NOTEBOOKS)

%.html: %.ipynb
	jupyter nbconvert --to notebook --execute --inplace $<
	jupyter-nbconvert $< --to html
