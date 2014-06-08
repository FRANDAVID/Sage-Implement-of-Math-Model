object=Sage-Implement-of-Math-Model
file_to_rm=$(object).aux $(object).log $(object).toc $(object).out \
           $(object).sagetex.py $(object).sagetex.sage $(object).sagetex.scmd $(object).sagetex.sout
dir_to_rm=sage-plots-for-$(object).tex

Sage-Implement-of-Math-Model.pdf:Sage-Implement-of-Math-Model.tex sections/*.tex
	pdflatex $(object).tex
	sage $(object).sagetex.sage
	pdflatex $(object).tex
edit:
	vi $(object).tex
view:
	evince $(object).pdf
clean:
	rm $(file_to_rm)
	rm -r $(dir_to_rm)

