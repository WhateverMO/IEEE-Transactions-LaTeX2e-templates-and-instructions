# IEEE Transactions LaTeX Templates

Official LaTeX templates and instructions for submitting papers to IEEE Transactions journals and conferences.

## Overview

This repository provides the official IEEEtran LaTeX class and templates for creating properly formatted academic papers that meet IEEE publication standards. It includes comprehensive documentation and working examples to help authors prepare their manuscripts.

## Repository Contents

| File | Description |
|------|-------------|
| `IEEEtran.cls` | The core IEEEtran LaTeX class file (V1.8b) - **required for all documents** |
| `bare_jrnl_new_sample4.tex` | Complete sample journal article template with examples |
| `bare_jrnl_new_sample4.pdf` | Compiled sample journal article (reference output) |
| `New_IEEEtran_how-to.tex` | Comprehensive how-to guide source |
| `New_IEEEtran_how-to.pdf` | Compiled how-to documentation |
| `fig1.png` | Sample figure for demonstrations |

## Quick Start

### Prerequisites

You need a LaTeX distribution installed:

- **Windows**: [MiKTeX](https://miktex.org/) or [TeX Live](https://tug.org/texlive/)
- **macOS**: [MacTeX](https://tug.org/mactex/) (or `brew install --cask mactex`)
- **Linux**: `sudo apt-get install texlive-full` (Ubuntu/Debian) or equivalent

### Basic Usage

1. **Copy the class file** to your working directory:
   ```bash
   cp IEEEtran.cls /path/to/your/paper/
   ```

2. **Use a template** as your starting point:
   ```bash
   cp bare_jrnl_new_sample4.tex my_paper.tex
   ```

3. **Edit your document** with your content

4. **Compile** your document:
   ```bash
   pdflatex my_paper.tex
   ```

### Document Structure

```latex
\documentclass[journal]{IEEEtran}  % Document type

\begin{document}

% Title and author information
\title{Your Paper Title}
\author{Author Name}

\maketitle

% Abstract
\begin{abstract}
Your abstract text here.
\end{abstract}

% Keywords
\begin{IEEEkeywords}
keyword1, keyword2, keyword3
\end{IEEEkeywords}

% Main content
\section{Introduction}
Your introduction here.

\section{Methodology}
Your methods here.

% Bibliography
\bibliographystyle{IEEEtran}
\bibliography{references}

\end{document}
```

## Document Class Options

The `IEEEtran.cls` supports various document types:

| Option | Description |
|--------|-------------|
| `journal` | Regular journal articles (default) |
| `conference` | Conference papers |
| `technote` | Technical notes/correspondence (9pt font) |
| `peerreview` | Peer review submissions with line numbers |
| `compsoc` | IEEE Computer Society publications |
| `comsoc` | IEEE Communications Society publications |
| `transmag` | IEEE Transactions on Magnetics |
| `letterpaper` | US Letter paper size (default) |
| `a4paper` | A4 paper size |

### Usage Examples

```latex
% Standard journal article
\documentclass[journal]{IEEEtran}

% Conference paper
\documentclass[conference]{IEEEtran}

% Computer Society journal
\documentclass[compsoc,journal]{IEEEtran}

% A4 paper size
\documentclass[journal,a4paper]{IEEEtran}
```

## How to Build/Compile

### Basic Compilation

```bash
# Single pass (for simple documents without bibliography)
pdflatex your_paper.tex

# Full compilation (for documents with bibliography)
pdflatex your_paper.tex
bibtex your_paper
pdflatex your_paper.tex
pdflatex your_paper.tex
```

### Using Latexmk (Recommended)

```bash
# Automatically handles multiple passes and bibliography
latexmk -pdf your_paper.tex

# Clean auxiliary files
latexmk -c
```

### Compilation Script

Create a `build.sh` script:

```bash
#!/bin/bash
filename="${1%.tex}"

echo "Compiling $filename..."
pdflatex "$filename"
if [ -f "${filename}.aux" ]; then
    bibtex "$filename"
fi
pdflatex "$filename"
pdflatex "$filename"

echo "Build complete: ${filename}.pdf"
```

Usage:
```bash
chmod +x build.sh
./build.sh your_paper.tex
```

## Validation and Quality Checks

### LaTeX Linting

While LaTeX doesn't have traditional "linting," you can check for issues:

1. **Check for compilation errors**:
   ```bash
   pdflatex -interaction=nonstopmode your_paper.tex
   ```

2. **Overfull/Underfull warnings**: Watch for these during compilation - they indicate formatting issues

3. **Use chktex** (LaTeX linter):
   ```bash
   # Install chktex
   # macOS: brew install chktex
   # Ubuntu: sudo apt-get install chktex
   
   chktex your_paper.tex
   ```

### PDF Validation

```bash
# Check PDF compliance (IEEE requires PDF/A or PDF/X compliance)
# Use veraPDF or similar tools

# Check if PDF is generated correctly
pdfinfo your_paper.pdf

# Check for embedded fonts (required by IEEE)
pdffonts your_paper.pdf
```

### Reference Checking

```bash
# Check for unused references in .bib file
bibtool -r your_paper.aux -x your_paper.bib
```

## Testing Your Document

### Manual Testing Checklist

Before submission, verify:

- [ ] Document compiles without errors
- [ ] No overfull/underfull boxes in compilation output
- [ ] All figures display correctly
- [ ] All tables are properly formatted
- [ ] Bibliography citations work correctly
- [ ] All cross-references resolve correctly
- [ ] PDF has all fonts embedded
- [ ] Paper size is correct (Letter or A4)
- [ ] Margins meet IEEE requirements
- [ ] Page count within limits

### Automated Testing Script

Create `test.sh`:

```bash
#!/bin/bash

file="$1"
base="${file%.tex}"

echo "Testing $file..."

# Test 1: Compilation
if pdflatex -interaction=nonstopmode "$file" > /dev/null 2>&1; then
    echo "✓ Compilation successful"
else
    echo "✗ Compilation failed"
    exit 1
fi

# Test 2: Check for overfull boxes
if grep -q "Overfull" "${base}.log"; then
    echo "⚠ Warning: Overfull boxes detected"
    grep "Overfull" "${base}.log"
else
    echo "✓ No overfull boxes"
fi

# Test 3: Check for missing references
if grep -q "LaTeX Warning: Reference" "${base}.log"; then
    echo "⚠ Warning: Missing references"
    grep "LaTeX Warning: Reference" "${base}.log"
else
    echo "✓ All references resolved"
fi

# Test 4: PDF exists and is readable
if [ -f "${base}.pdf" ] && [ -r "${base}.pdf" ]; then
    echo "✓ PDF generated successfully"
    ls -lh "${base}.pdf"
else
    echo "✗ PDF not found"
    exit 1
fi

echo "Tests completed!"
```

## Common Issues and Solutions

### Issue: Class file not found
```
! LaTeX Error: File `IEEEtran.cls' not found.
```
**Solution**: Ensure `IEEEtran.cls` is in the same directory as your `.tex` file

### Issue: Figures not showing
```
! LaTeX Error: File `fig1' not found.
```
**Solution**: Include the file extension or ensure graphics path is set:
```latex
\usepackage{graphicx}
\graphicspath{{./figures/}}
```

### Issue: Citation undefined
```
LaTeX Warning: Citation `key' on page X undefined on input line Y.
```
**Solution**: Run `bibtex` and recompile twice

### Issue: Overfull hbox
```
Overfull \hbox (Xpt too wide) in paragraph at lines Y-Z
```
**Solution**: Break long equations, adjust table columns, or rephrase text

## Best Practices

1. **Use version control**: Track your `.tex` files with git
2. **Separate content from style**: Don't modify `IEEEtran.cls`
3. **Use labels**: Always label sections, figures, tables, and equations
4. **Include file extensions**: Be explicit with `\includegraphics{fig.png}`
5. **Test early**: Compile frequently to catch errors early
6. **Use BibTeX**: Manage references with `.bib` files
7. **Keep backups**: PDFs and auxiliary files can be regenerated

## IEEE Submission Requirements

- All fonts must be embedded in the PDF
- Maximum page limits vary by journal (check author guidelines)
- Paper size: US Letter (8.5" × 11") or A4 (210mm × 297mm)
- PDF should be PDF/A compliant (recommended)

## Documentation

- **`New_IEEEtran_how-to.pdf`**: Comprehensive guide covering:
  - Document class options
  - Title and author formatting
  - Abstract and keywords
  - Mathematical typography
  - Figures and tables
  - Bibliographies
  - Biographies

- **`bare_jrnl_new_sample4.tex`**: Working example demonstrating all features

## Contributing

This is an official IEEE template repository. For issues with the templates themselves, contact IEEE. For usage questions, consult the how-to guide first.

## License

These templates are provided by IEEE for academic and professional use. Refer to IEEE's terms of use for specific licensing details.

## Resources

- [IEEE Author Center](https://journals.ieeeauthorcenter.ieee.org/)
- [IEEEtran on CTAN](https://ctan.org/pkg/ieeetran)
- [TeX Stack Exchange](https://tex.stackexchange.com/) - Q&A for LaTeX issues

---

**Version**: IEEEtran V1.8b (2015/08/26)  
**Maintained by**: IEEE  
**Last Updated**: 2026
