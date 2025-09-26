#!/bin/bash
# build.sh
# Script per compilare il CV in LaTeX e spostare il PDF generato su Linux/Mac.

# 1. Imposta la directory di lavoro sulla cartella 'src'.
cd "./src"
echo "Directory di lavoro impostata su: $(pwd)"

# 2. Compila il file LaTeX due volte.
echo "Compilazione del CV in corso... (Passo 1 di 2)"
xelatex -interaction=nonstopmode cv.tex
echo "Compilazione del CV in corso... (Passo 2 di 2)"
xelatex -interaction=nonstopmode cv.tex

# 3. Definisci i percorsi di origine e destinazione.
source_pdf="./cv.pdf"
destination_folder="$HOME/Documents/CV"

# 4. Crea la cartella di destinazione se non esiste.
if [ ! -d "$destination_folder" ]; then
    echo "La cartella di destinazione non esiste. Creazione in corso: $destination_folder"
    mkdir -p "$destination_folder"
fi

destination_pdf="$destination_folder/cv.pdf"

# 5. Controlla se il PDF è stato creato e spostalo nella cartella dei documenti.
if [ -f "$source_pdf" ]; then
    echo "Spostamento di cv.pdf in $destination_folder"
    mv "$source_pdf" "$destination_pdf"
    echo "PDF spostato con successo in $destination_pdf"
else
    echo "Errore: il file cv.pdf non è stato generato durante la compilazione."
fi

# 6. Pulisci i file ausiliari generati da LaTeX all'interno della cartella 'src'.
echo "Pulizia dei file temporanei..."
rm -f *.aux *.log *.out
echo "File temporanei rimossi."

# 7. Torna alla directory principale del progetto.
cd ".."
echo "Processo completato. Directory di lavoro ripristinata su: $(pwd)"