FILENAME=Apuntador-1109-1212-KevinHernandez
FAWNFILENAME=Apuntador-1109-KevinHernandez

PFLAGS= -V lang=es -t beamer


pdf:
	pandoc -s src/fawn/main.md $(PFLAGS) -o ./out/$(FILENAME).pdf

fawn-pdf:
	pandoc -s src/fawn/main.md $(PFLAGS) -o ./out/fawn/$(FAWNFILENAME).pdf

fawn-latex:
	pandoc -s src/fawn/main.md $(PFLAGS) -o ./out/fawn/$(FAWNFILENAME).tex