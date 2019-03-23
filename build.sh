#!/bin/bash

# download official character sheet if needed
if [ ! -f base.pdf ] || [ ! -f spells.pdf ] || [ ! -f details.pdf ]; then
    wget http://media.wizards.com/2014/downloads/dnd/5E_CHARACTERSHEETSV3.ZIP
    unzip -j "5E_CHARACTERSHEETSV3.ZIP" "Character Sheet - Print Version.pdf"
    unzip -j "5E_CHARACTERSHEETSV3.ZIP" "Spellcasting Sheet (Optional) - Print Version.pdf"
    unzip -j "5E_CHARACTERSHEETSV3.ZIP" "Character Details (Optional) - Print Version.pdf"
    mv "Character Sheet - Print Version.pdf" "base.pdf"
    mv "Character Details (Optional) - Print Version.pdf" "details.pdf"
    mv "Spellcasting Sheet (Optional) - Print Version.pdf" "spells.pdf"
    rm "5E_CHARACTERSHEETSV3.ZIP"
fi

# build character sheet
pdflatex Character\ Sheet.tex
