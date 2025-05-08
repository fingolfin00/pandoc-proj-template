This script can generate a template for a markdown pandoc project with support for latex themes and citations.
Scripts to generate pdf and template are available as well as [docker image](https://github.com/fingolfin00/docker-pandoc-moloch) for pandoc + moloch beamer theme.

## Installation

1. Populate ROOT_SRC_PATH in generate_pandoc_template.sh with the absolute path of the current folder parent. This folder must end up in ${ROOT_SRC_PATH}/pandoc-proj-template.
2. Make sure you have also the [generation script repository]() in ${ROOT_SRC_PATH}/pandoc-genscript and the [latex theme]() in ${ROOT_SRC_PATH}/pandoc-latex-themes.
3. Optionally link generate_pandoc_template.sh to a convient folder in your PATH. For example:
    ```
    ln -rs ./generate_pandoc_template.sh ${HOME}/.local/bin/
    ```

## Usage
1. Create the project folder
2. Run the script
    ```
    generate_pandoc_template.sh <proj-path> <proj-name>
    ```

