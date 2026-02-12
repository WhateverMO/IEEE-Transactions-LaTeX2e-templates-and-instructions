# AGENTS.md - IEEE Transactions LaTeX Templates

## Repository Overview
This repository contains IEEEtran LaTeX class files and templates for IEEE journals and transactions.

## Build Commands

### Compile LaTeX to PDF
```bash
# Basic compilation (requires 2-3 runs for references)
pdflatex filename.tex
bibtex filename
pdflatex filename.tex
pdflatex filename.tex

# Or use latexmk for automatic compilation
latexmk -pdf filename.tex

# Force clean rebuild
latexmk -pdf -gg filename.tex

# Watch mode (auto-rebuild on changes)
latexmk -pdf -pvc filename.tex

# Clean auxiliary files
latexmk -c
rm -f *.aux *.log *.out *.bbl *.blg *.synctex.gz
```

### Available Templates
- `bare_jrnl_new_sample4.tex` - Journal article sample
- `New_IEEEtran_how-to.tex` - Documentation/how-to guide
- `IEEEtran.cls` - The main LaTeX class file (do not modify)

## Code Style Guidelines

### Document Structure
- Use `\documentclass[lettersize,journal]{IEEEtran}` for journal articles
- Place `\usepackage` statements in preamble (before `\begin{document}`)
- Include `\hyphenation` for custom word breaks: `\hyphenation{op-tical net-works}`

### Formatting Conventions
- **Title**: Use `\title{Title}` - avoid math/chemical formulas
- **Authors**: Use `\author{}` with `\IEEEmembership` and `\thanks`
- **Abstract**: Place immediately after `\maketitle`, avoid math
- **Keywords**: Use `\begin{IEEEkeywords}...\end{IEEEkeywords}`

### Section Numbering (Optional but Consistent)
- Primary: Roman numerals (I, II, III)
- Secondary: Capital letters (A, B, C)
- Tertiary: Arabic numbers (1, 2, 3)
- Quaternary: Lowercase letters (a, b, c)
- **Exception**: References and Acknowledgments are NEVER enumerated

### Common Packages (from samples)
```latex
\usepackage{amsmath,amsfonts}
\usepackage{algorithmic}
\usepackage{algorithm}
\usepackage{array}
\usepackage[caption=false,font=normalsize,labelfont=sf,textfont=sf]{subfig}
\usepackage{textcomp}
\usepackage{stfloats}
\usepackage{url}
\usepackage{verbatim}
\usepackage{graphicx}
\usepackage{cite}
\usepackage{balance}  % For equalizing column lengths
```

### Citations
- Single: `\cite{ref1}`
- Multiple: `\cite{ref1,ref2,ref3}`
- The `cite` package compresses ranges automatically

### Math and Equations
- Use `amsmath` environments: `equation`, `align`, `gather`
- Label equations: `\label{eqn:name}`
- Reference with: `\eqref{eqn:name}`

### Figures
- Use `\begin{figure}[!t]` for top placement
- Use `subfig` package for subfigures
- Include `\centering` before `\includegraphics`
- Use `\caption{}` after `\includegraphics`
- Label with `\label{fig:name}`

### Tables
- Use `\begin{table}[!t]` for top placement
- Use `\caption{}` BEFORE tabular environment for tables
- Use `\label{tab:name}` after caption

### Algorithms
```latex
\begin{algorithm}
\caption{Algorithm Name}
\label{alg:name}
\begin{algorithmic}
\STATE ...
\end{algorithmic}
\end{algorithm}
```

### Special Elements
- **Drop Cap**: `\IEEEPARstart{T}{his}` for first paragraph
- **Running Heads**: `\markboth{Journal Info}{Author: Title}`
- **Copyright**: `\IEEEpubid{}` (usually added by production)

### Naming Conventions
- Use lowercase with underscores for file names: `my_paper.tex`
- Use consistent label prefixes: `fig:`, `tab:`, `eqn:`, `alg:`, `sec:`
- BibTeX entries: use lowercase keys like `ref1`, `ref2`

### Common Pitfalls
- Never leave blank lines before display math
- Don't use `\\` to force new lines in text (use `\par` or blank lines)
- Avoid `\hfill` and manual spacing adjustments
- Don't modify `IEEEtran.cls`

### Error Handling
- Check log files for: `! LaTeX Error`, `Overfull \hbox`, `Underfull \hbox`
- Run multiple times to resolve cross-references
- Use `\listfiles` in preamble to debug package versions

## File Organization
```
repo-root/
├── IEEEtran.cls          # Main class file (DO NOT MODIFY)
├── bare_jrnl_new_sample4.tex  # Journal template sample
├── New_IEEEtran_how-to.tex    # Documentation
├── *.tex                 # Your paper files
├── *.bib                 # Bibliography files
├── figures/              # Image directory (recommended)
└── *.pdf                 # Generated output
```

## Linting/Validation
There is no automated test suite. Manual checks:
1. Compile without errors/warnings
2. Check all cross-references resolve
3. Verify figures and tables appear in correct locations
4. Review PDF output for formatting issues

## References
- Full documentation: `New_IEEEtran_how-to.pdf`
- IEEE Template Selector: https://template-selector.ieee.org/
