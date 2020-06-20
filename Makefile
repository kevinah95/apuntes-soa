FILENAME=Apuntador-1212-1215-KevinHernandez

FAWN_FILENAME=Apuntador-1212-KevinHernandez
BLUEGENE_FILENAME=Apuntador-1215-KevinHernandez

FAWN_SRC_FOLDER=src/fawn
FAWN_OUT_FOLDER=out/fawn

BLUEGENE_SRC_FOLDER=src/blue-gene-network
BLUEGENE_OUT_FOLDER=out/blue-gene-network

PFLAGS= -V lang=es \
				-t beamer \
				--resource-path=$(FAWN_SRC_FOLDER):$(BLUEGENE_SRC_FOLDER)


pdf: fawn-pdf blue-gene-pdf

fawn-pdf:
	pandoc -s $(FAWN_SRC_FOLDER)/main.md $(PFLAGS) -o $(FAWN_OUT_FOLDER)/$(FAWN_FILENAME).pdf

fawn-latex:
	pandoc -s $(FAWN_SRC_FOLDER)/main.md $(PFLAGS) -o $(FAWN_OUT_FOLDER)/$(FAWN_FILENAME).tex

blue-gene-pdf:
	pandoc -s $(BLUEGENE_SRC_FOLDER)/main.md $(PFLAGS) -o $(BLUEGENE_OUT_FOLDER)/$(BLUEGENE_FILENAME).pdf

blue-gene-latex:
	pandoc -s $(BLUEGENE_SRC_FOLDER)/main.md $(PFLAGS) -o $(BLUEGENE_OUT_FOLDER)/$(BLUEGENE_FILENAME).tex