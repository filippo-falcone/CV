# Progetto CV in LaTeX

Questo repository contiene due versioni del mio curriculum vitae create utilizzando LaTeX:

- Una versione moderna con la classe AltaCV
- Una versione classica con la classe ModernCV

## Requisiti

Per compilare i CV, è necessario avere:

- Una distribuzione LaTeX completa (come TeX Live o MiKTeX)
- XeLaTeX per la versione AltaCV
- pdfLaTeX per la versione ModernCV
- I pacchetti richiesti (installati automaticamente se si usa Docker)

## Utilizzo

### Compilazione manuale

Per compilare la versione AltaCV:

```bash
xelatex cv_altacv.tex
```

Per compilare la versione ModernCV:

```bash
pdflatex cv_moderncv.tex
```

### Utilizzo con Docker

Il repository include un Dockerfile per compilare entrambi i CV senza installare LaTeX localmente:

```bash
# Costruire l'immagine Docker
docker build -t latexcv .

# Compilare entrambi i CV
docker run --rm -v $(pwd):/workdir latexcv make all
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

- `cv_altacv.tex` - CV in stile moderno con AltaCV
- `cv_moderncv.tex` - CV in stile classico con ModernCV
- `altacv.cls` - Classe LaTeX per AltaCV
- `Makefile` - Script per compilare i CV
- `Dockerfile` - Configurazione Docker per compilare i CV

## Risultati

La compilazione genererà due file PDF:

- `cv_altacv.pdf` - Versione moderna del CV
- `cv_moderncv.pdf` - Versione classica del CV
