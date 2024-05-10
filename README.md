# Compiling and building the PDF file

## Using Podman

In case you don't want to generate the PDF by yourself by installing a bunch
of packages —neither did I—, there is a Bash script that will prepare a build
environment with Podman and will run the commands for you. Essentially it will:

1. Generate the build environment with Podman by installing the required packages.
2. It will mount the repository in the container.
3. It will run the build commands and leave the output in the "build" directory.

In order to run the script, simply issue the `bash build.bash` command.

## Required packages

The following packages are requried:

* `biber`
* `python3-pygments`
* `texlive`
* `texlive-bibtex-extra`
* `texlive-latex-extra`
* `texlive-lang-spanish`
* `texlive-lang-greek`
* `texlive-plain-generic`

## Set up the environment

1. Clone the repository.
2. `cd` into the cloned repository.
3. Create a `build` directory with the `mkdir build` command.

## Commands to build the PDF file

1. `pdflatex -shell-escape -output-directory='build' main.tex`
2. `makeglossaries -d 'build' main`
3. `biber --input-directory='build' --output-directory='build' main.bcf`
4. `pdflatex -shell-escape -output-directory='build' main.tex`
5. `pdflatex -shell-escape -output-directory='build' main.tex`

If you want to generate a document with SyncTex, simply add the `-synctex=1` to the `pdflatex` commands.

# License
The contents of this project are under a [Creative Commons Reconocimiento-CompartirIgual 4.0 Internacional](https://creativecommons.org/licenses/by-sa/4.0/) license, and the code to format and generate the aforementioned content is under a [GPLv3](https://opensource.org/licenses/GPL-3.0) license.

# Compilar y generar el fichero PDF

## Paquetes necesarios

Al menos, los siguientes paquetes son necesarios:

* `biber`
* `python3-pygments`
* `texlive`
* `texlive-bibtex-extra`
* `texlive-latex-extra`
* `texlive-lang-spanish`
* `texlive-lang-greek`
* `texlive-plain-generic`

## Preparar el entorno

1. Clonar el repositorio.
2. Hacer `cd` en el directorio recién clonado.
3. Crear un directorio `build` mediante el comando `mkdir build`.

## Comandos para generar el fichero PDF

1. `pdflatex -shell-escape -output-directory='build' main.tex`
2. `makeglossaries -d 'build' main`
3. `biber --input-directory='build' --output-directory='build' main.bcf`
4. `pdflatex -shell-escape -output-directory='build' main.tex`
5. `pdflatex -shell-escape -output-directory='build' main.tex`

En caso de que se quiera generar un documento con SyncTeX, simplemente hay que añadir `-synctex=1` a los comandos de `pdflatex`.

# Licencia

El contenido de este proyecto está bajo una licencia [Creative Commons Reconocimiento-CompartirIgual 4.0 Internacional](https://creativecommons.org/licenses/by-sa/4.0/), y el código usado para dar formato y generar dicho contenido está bajo una licencia [GPLv3](https://opensource.org/licenses/GPL-3.0).
