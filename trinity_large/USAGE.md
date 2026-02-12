# Usage Guide

## Quick Start

### Building the Documentation

```bash
# Build the main documentation
./build.sh New_IEEEtran_how-to pdf

# Build the sample journal paper
./build.sh bare_jrnl_new_sample4 pdf
```

### Using the Templates

1. Copy `IEEEtran.cls` to your project directory
2. Start with one of the template files:
   - `New_IEEEtran_how-to.tex` - Full documentation
   - `bare_jrnl_new_sample4.tex` - Journal paper template
3. Modify the template for your content

### Common Commands

```bash
# Build PDF
pdflatex document.tex
bibtex document
pdflatex document.tex
pdflatex document.tex

# Clean auxiliary files
rm -f *.aux *.log *.out *.toc *.bbl *.blg
```

## Testing

Run the test script to verify templates compile correctly:

```bash
./test.sh
```

## Available Templates

- `New_IEEEtran_how-to.tex` - Comprehensive documentation
- `bare_jrnl_new_sample4.tex` - Journal paper example
- `IEEEtran.cls` - Main class file

## Output Files

- `New_IEEEtran_how-to.pdf` - Compiled documentation
- `bare_jrnl_new_sample4.pdf` - Sample paper

## Notes

- The templates include duplicate labels (documented in LSP diagnostics) - these are intentional for demonstration purposes
- Always run LaTeX multiple times to resolve cross-references
- Use BibTeX for bibliography management when possible