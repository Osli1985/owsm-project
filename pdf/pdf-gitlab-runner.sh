#!/bin/bash

#Extract filename without extension
filename=${basename "$*" .adoc}
echo "Nous allons convertir le fichier $filename.adoc ..."

#Generate file history
echo "Extraction de l'historique des commits de $filename.adoc ..."

#Generate PDF
echo "Creation du PDF ..."
asciidoctor-pdf -a allow-uri-read -r asciidoctor-diagram "$filename.adoc ..."

#Rename pdf as input for next step
echo "Renommage avant optimisation du PDF: le 'fichier se nommera $filename.big.pdf ..."

#Rewrite PDF with ghostscript for size optimisation
echo "Optimisation du PDF , le résultat sera dans $filename.pdf ..."
gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/printer -dNOPAUSE -dQUIET -dBATCH -dPrinted=false -sOutputFile="$filename.pdf" "$filename.big.pdf"

#Compare file size
echo "PDF créé :"
ls -l "$filename.pdf"