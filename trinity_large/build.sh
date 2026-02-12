#!/bin/bash

# IEEE LaTeX Build Script
# Usage: ./build.sh [document_name] [output_format]

# Default values
DOCUMENT="bare_jrnl_new_sample4"
FORMAT="pdf"

# Parse arguments
if [ $# -eq 2 ]; then
    DOCUMENT="$1"
    FORMAT="$2"
elif [ $# -eq 1 ]; then
    DOCUMENT="$1"
fi

# Check if document exists
if [ ! -f "${DOCUMENT}.tex" ]; then
    echo "Error: ${DOCUMENT}.tex not found!"
    echo "Available documents:"
    ls *.tex | grep -v "~" | sed 's/\.tex$//'
    exit 1
fi

echo "Building ${DOCUMENT}.${FORMAT}..."

case "$FORMAT" in
    "pdf")
        # Build PDF using pdflatex
        pdflatex "${DOCUMENT}.tex"
        bibtex "${DOCUMENT}" 2>/dev/null || true
        pdflatex "${DOCUMENT}.tex"
        pdflatex "${DOCUMENT}.tex"
        ;;
    "dvi")
        # Build DVI using latex
        latex "${DOCUMENT}.tex"
        bibtex "${DOCUMENT}" 2>/dev/null || true
        latex "${DOCUMENT}.tex"
        latex "${DOCUMENT}.tex"
        ;;
    "ps")
        # Build PostScript
        latex "${DOCUMENT}.tex"
        bibtex "${DOCUMENT}" 2>/dev/null || true
        latex "${DOCUMENT}.tex"
        latex "${DOCUMENT}.tex"
        dvips "${DOCUMENT}.dvi" -o "${DOCUMENT}.ps"
        ;;
    *)
        echo "Error: Unknown format '$FORMAT'. Use pdf, dvi, or ps."
        exit 1
        ;;
esac

echo "Build completed. Output: ${DOCUMENT}.${FORMAT}"

# Check for errors
if grep -q "Error" "${DOCUMENT}.log"; then
    echo "Warnings/errors found in log file. Please check ${DOCUMENT}.log"
    exit 1
fi

exit 0