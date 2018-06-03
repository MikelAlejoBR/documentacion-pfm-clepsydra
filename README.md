# Compilar y generar el fichero PDF

## Paquetes necesarios

Al menos, los siguientes paquetes son necesarios:

* `texlive`
* `texlive-latex-extra`
* `texlive-lang-spanish`
* `texlive-lang-greek`
* `biber`

## Preparar el entorno

1. Clonar el repositorio.
2. Hacer `cd` en el directorio recién clonado.
3. Crear un directorio `build` mediante el comando `mkdir build`.
4. Instalar Pygments con `sudo aptitude install python-pygments`

## Comandos

1. `pdflatex -shell-escape -output-directory='build' main.tex`
2. `makeglossaries -d 'build' main`
3. `biber --input-directory='build' --output-directory='build' main.bcf`
4. `pdflatex -shell-escape -output-directory='build' main.tex`
5. `pdflatex -shell-escape -output-directory='build' main.tex`

En caso de que se quiera generar un documento con SyncTeX, simplemente hay que añadir `-synctex=1` a los comandos de `pdflatex`.

# Licencia

El contenido de este proyecto está bajo una licencia [Creative Commons Reconocimiento-CompartirIgual 4.0 Internacional](https://creativecommons.org/licenses/by-sa/4.0/), y el código usado para dar formato y generar dicho contenido está bajo una licencia [GPLv3](https://opensource.org/licenses/GPL-3.0).
