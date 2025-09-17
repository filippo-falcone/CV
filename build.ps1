# build.ps1
# Script per compilare il CV in LaTeX e spostare il PDF generato.

# 1. Imposta la directory di lavoro sulla cartella 'src'.
Set-Location -Path ".\src"
Write-Host "Directory di lavoro impostata su: $(Get-Location)"

# 2. Compila il file LaTeX due volte.
Write-Host "Compilazione del CV in corso... (Passo 1 di 2)"
xelatex -interaction=nonstopmode cv.tex
Write-Host "Compilazione del CV in corso... (Passo 2 di 2)"
xelatex -interaction=nonstopmode cv.tex

# 3. Definisci i percorsi di origine e destinazione.
$sourcePdf = ".\cv.pdf"
$documentsPath = [Environment]::GetFolderPath('MyDocuments')
$destinationFolder = Join-Path -Path $documentsPath -ChildPath "CV"

# 4. Crea la cartella di destinazione se non esiste.
if (-not (Test-Path $destinationFolder)) {
    Write-Host "La cartella di destinazione non esiste. Creazione in corso: $destinationFolder"
    New-Item -ItemType Directory -Path $destinationFolder | Out-Null
}

$destinationPdf = Join-Path -Path $destinationFolder -ChildPath "cv.pdf"

# 5. Controlla se il PDF è stato creato e spostalo nella cartella dei documenti.
if (Test-Path $sourcePdf) {
    Write-Host "Spostamento di cv.pdf in $destinationFolder"
    Move-Item -Path $sourcePdf -Destination $destinationPdf -Force
    Write-Host "PDF spostato con successo in $destinationPdf"
} else {
    Write-Host "Errore: il file cv.pdf non è stato generato durante la compilazione."
}

# 6. Pulisci i file ausiliari generati da LaTeX all'interno della cartella 'src'.
Write-Host "Pulizia dei file temporanei..."
Get-ChildItem -Path . -Include *.aux, *.log, *.out | Remove-Item
Write-Host "File temporanei rimossi."

# 7. Torna alla directory principale del progetto.
Set-Location -Path ".."
Write-Host "Processo completato. Directory di lavoro ripristinata su: $(Get-Location)"
