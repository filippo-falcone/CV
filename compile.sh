#!/bin/bash

# Script per compilare il CV usando Docker e XeLaTeX
# Questo script compila automaticamente il file cv.tex

echo "🚀 Avvio compilazione CV con Docker..."

# Controlla se Docker è disponibile
if ! command -v docker &> /dev/null; then
    echo "❌ Docker non è installato. Per installare Docker:"
    echo "   - Ubuntu/Debian: sudo apt-get install docker.io"
    echo "   - macOS: Installa Docker Desktop"
    echo "   - Windows: Installa Docker Desktop"
    exit 1
fi

# Compila il CV
echo "📄 Compilazione di cv.tex in corso..."
docker run --rm -v $(pwd):/workspace -w /workspace texlive/texlive:latest xelatex cv.tex

if [ $? -eq 0 ]; then
    echo "✅ Compilazione completata con successo!"
    echo "📋 File generato: cv.pdf"
    echo ""
    echo "📊 Statistiche del file:"
    ls -lh cv.pdf
    echo ""
    echo "🎯 Per visualizzare il PDF:"
    echo "   - Linux: xdg-open cv.pdf"
    echo "   - macOS: open cv.pdf"
    echo "   - Windows: start cv.pdf"
else
    echo "❌ Errore durante la compilazione!"
    echo "🔍 Controlla il file cv.log per i dettagli dell'errore"
    exit 1
fi