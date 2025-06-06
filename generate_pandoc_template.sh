#!/usr/bin/env bash

ROOT_SRC_PATH=/home/jacopo/Documents/UniBo/pandoc-latex
PROJ_TEMPLATE_PATH=${ROOT_SRC_PATH}/pandoc-proj-template
GENSCRIPT_PATH=${ROOT_SRC_PATH}/pandoc-genscript
THEME_PATH=${ROOT_SRC_PATH}/pandoc-themes
PROJ_PATH=$1
PROJ_NAME=$2

cp ${THEME_PATH}/*tex ${GENSCRIPT_PATH}/*sh ${PROJ_PATH}/
touch ${PROJ_PATH}/proj.bib
if [ -n "${PROJ_NAME}" ]; then
	cp ${PROJ_TEMPLATE_PATH}/doc.md ${PROJ_PATH}/${PROJ_NAME}.md
	sed -i "s/^DOC=.*$/DOC=${PROJ_NAME}/g" ${PROJ_PATH}/generate_pdf.sh
else
	cp ${PROJ_TEMPLATE_PATH}/doc.md ${PROJ_PATH}/
fi

