# Curriculum Vitae

Questo repository contiene due versioni del mio Curriculum Vitae:
- **cv_altacv.tex**: Versione moderna del CV utilizzando la classe AltaCV con layout a due colonne
- **cv_moderncv.tex**: Versione classica del CV utilizzando la classe ModernCV

## Caratteristiche

- Layout responsive e moderno per AltaCV
- Icone FontAwesome per le competenze tecniche in entrambe le versioni
- Facile personalizzazione dei colori e del layout
- Versione moderna con tag per evidenziare le competenze
- Versione classica con layout tradizionale

## Requisiti

Per compilare i CV è necessario:
- Una distribuzione TeX aggiornata (TeXLive, MiKTeX)
- I pacchetti LaTeX: fontawesome5, geometry, fontspec, microtype
- XeLaTeX per la compilazione della versione AltaCV
- pdfLaTeX per la compilazione della versione ModernCV

## Compilazione

### Usando Docker

```bash
# Per compilare la versione AltaCV
docker run --rm -v ${PWD}:/workdir texlive/texlive:latest xelatex -interaction=nonstopmode -output-directory=/workdir cv_altacv.tex

# Per compilare la versione ModernCV
docker run --rm -v ${PWD}:/workdir texlive/texlive:latest pdflatex -interaction=nonstopmode -output-directory=/workdir cv_moderncv.tex
```

### Utilizzo con Makefile

Se avete LaTeX installato localmente, potete usare il Makefile incluso:

```bash
# Compilare entrambi i CV
make all

# Compilare solo AltaCV
make altacv

# Compilare solo ModernCV
make moderncv

# Pulire i file temporanei
make clean
```

## Struttura

- **altacv.cls**: Classe LaTeX per la versione moderna
- **cv_altacv.tex**: File principale per la versione moderna
- **cv_moderncv.tex**: File principale per la versione classica
- **fix_altacv_fontawesome.tex**: Correzioni per le icone FontAwesome nella versione AltaCV
- **foto.jpg**: Foto personale utilizzata nel CV

## Personalizzazione

Per personalizzare i CV, modificare i seguenti parametri:

### AltaCV
- Colori: modificare le definizioni di colore nella sezione "Colori personalizzati"
- Layout: modificare i parametri nella sezione "Margini e layout"
- Contenuti: aggiungere o rimuovere sezioni nelle colonne del layout

### ModernCV
- Stile: modificare il parametro `\moderncvstyle{classic}` (opzioni: classic, casual, banking, etc.)
- Colore: modificare il parametro `\moderncvcolor{blue}` (opzioni: blue, red, green, etc.)
- Layout: modificare i parametri del pacchetto geometry

## Note

Per maggiori dettagli sulle classi utilizzate:
- [AltaCV](https://github.com/liantze/AltaCV)
- [ModernCV](https://github.com/moderncv/moderncv)