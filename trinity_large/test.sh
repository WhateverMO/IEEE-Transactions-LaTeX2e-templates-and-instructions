#!/bin/bash

# Test script for IEEE LaTeX templates
# This script tests if the templates compile correctly

echo "Testing IEEE LaTeX templates compilation..."

# Test New_IEEEtran_how-to.tex
if [ -f "New_IEEEtran_how-to.tex" ]; then
    echo "Testing New_IEEEtran_how-to.tex..."
    pdflatex "New_IEEEtran_how-to.tex" > /dev/null 2>1
    if [ $? -eq 0 ]; then
        echo "✓ New_IEEEtran_how-to.tex compiled successfully"
        rm -f New_IEEEtran_how-to.aux New_IEEEtran_how-to.log New_IEEEtran_how-to.out
    else
        echo "✗ New_IEEEtran_how-to.tex failed to compile"
    fi
fi

# Test bare_jrnl_new_sample4.tex
if [ -f "bare_jrnl_new_sample4.tex" ]; then
    echo "Testing bare_jrnl_new_sample4.tex..."
    pdflatex "bare_jrnl_new_sample4.tex" > /dev/null 2>1
    if [ $? -eq 0 ]; then
        echo "✓ bare_jrnl_new_sample4.tex compiled successfully"
        rm -f bare_jrnl_new_sample4.aux bare_jrnl_new_sample4.log bare_jrnl_new_sample4.out
    else
        echo "✗ bare_jrnl_new_sample4.tex failed to compile"
    fi
fi

echo "Test completed."