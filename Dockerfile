FROM texlive/texlive:latest

# Installa pacchetti LaTeX necessari
RUN tlmgr update --self && \
    tlmgr install \
    latexmk \
    moderncv \
    fontawesome5 \
    tcolorbox \
    enumitem \
    fontspec \
    xcolor \
    geometry \
    ifmtarg \
    xstring \
    academicons \
    titlesec \
    ragged2e \
    paracol

# Installa il pacchetto make
RUN apt-get update && apt-get install -y make

# Crea e imposta la directory di lavoro
WORKDIR /workdir

# Comando di default: compila entrambi i CV
CMD ["make", "all"]