# CV LaTeX - Mario Rossi

Un CV moderno e graficamente accattivante realizzato con LaTeX utilizzando la classe `altacv`.

## ✨ Caratteristiche

- **Design Moderno**: Layout professionale con sidebar e foto
- **Colori Personalizzati**: Schema cromatico elegante (blu professionale e rosa accent)
- **Layout Sidebar**: Informazioni secondarie organizzate nella barra laterale
- **Skills Visuali**: Competenze con barre di valutazione e tag colorati
- **Font Moderni**: Utilizzo della famiglia di font Roboto
- **Compilazione Docker**: Build isolato e riproducibile

## 🎨 Miglioramenti Implementati

### Design e Layout
- ✅ Aggiunta foto professionale (placeholder)
- ✅ Layout con sidebar per competenze, lingue e certificazioni
- ✅ Schema colori moderno e professionale
- ✅ Utilizzo ottimale dello spazio con layout a 2 colonne
- ✅ Typography migliorata con Roboto font family

### Contenuto
- ✅ Sezioni ben organizzate (Profilo, Esperienza, Progetti, Formazione)
- ✅ Progetti dettagliati con tecnologie utilizzate
- ✅ Competenze tecniche con rating visuale
- ✅ Certificazioni e riconoscimenti
- ✅ Contributi open source e pubblicazioni

### Funzionalità Tecniche
- ✅ Hyperlink funzionanti per GitHub, LinkedIn, email
- ✅ Supporto per icone FontAwesome
- ✅ Compilazione con XeLaTeX per supporto font moderni
- ✅ File modulare con sidebar separata

## 🚀 Compilazione

### Prerequisiti
- Docker installato sul sistema

### Compilazione Automatica
```bash
# Usa lo script di compilazione incluso
./compile.sh
```

### Compilazione Manuale
```bash
# Compila con Docker usando XeLaTeX
docker run --rm -v $(pwd):/workspace -w /workspace texlive/texlive:latest xelatex cv.tex
```

## 📁 Struttura File

```
.
├── cv.tex          # File principale del CV
├── sidebar.tex     # Contenuto della sidebar
├── photo.png       # Foto professionale (placeholder)
├── altacv.cls      # Classe LaTeX per il CV
├── compile.sh      # Script di compilazione
├── .gitignore      # File per ignorare build artifacts
└── README.md       # Questo file
```

## 🎯 Personalizzazione

### Cambiare i Colori
Modifica i colori nel file `cv.tex`:
```latex
\definecolor{PrimaryColor}{HTML}{2E86AB}    % Colore principale
\definecolor{AccentColor}{HTML}{A23B72}     % Colore accent
```

### Aggiornare la Foto
Sostituisci `photo.png` con la tua foto professionale (formato consigliato: 300x300px).

### Modificare il Contenuto della Sidebar
Edita il file `sidebar.tex` per personalizzare competenze, lingue e certificazioni.

## 📊 Output

Il CV generato è un PDF di 3 pagine con:
- **Pagina 1**: Intestazione con foto, profilo ed esperienza principale
- **Pagina 2**: Progetti di rilievo e formazione
- **Pagina 3**: Contributi open source, pubblicazioni e riconoscimenti

## 🛠️ Risoluzione Problemi

### Errori di Compilazione
1. Verificare che Docker sia installato e funzionante
2. Controllare il file `cv.log` per errori specifici
3. Assicurarsi che tutti i file necessari siano presenti

### Font Mancanti
Il setup Docker include tutti i font necessari. Se compili localmente, assicurati di avere:
- Roboto font family installata
- Package LaTeX `fontawesome5`

## 📝 Note

- Il CV è ottimizzato per stampa e visualizzazione digitale
- Tutti i link sono cliccabili nel PDF
- Il layout è responsive e si adatta automaticamente
- I colori sono ottimizzati per stampa in bianco e nero

---

**Realizzato con ❤️ utilizzando LaTeX e Docker**