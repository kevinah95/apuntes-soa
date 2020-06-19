FILENAME=Apuntador-1109-1212-KevinHernandez

pdf:
	pandoc -s src/main.md -t beamer -o ./out/$(FILENAME).pdf

latex:
	pandoc -s src/main.md -t beamer -o ./out/$(FILENAME).tex