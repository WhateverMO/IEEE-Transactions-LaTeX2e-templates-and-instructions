# IEEE LaTeX Template Agent Guidelines

This repository contains IEEE transaction and journal LaTeX templates and instructions for academic paper preparation.

## Repository Structure

- `IEEEtran.cls` - Main IEEE LaTeX class file (v1.8b)
- `bare_jrnl_new_sample4.tex` - Sample journal article template
- `New_IEEEtran_how-to.tex` - Simplified usage documentation
- `New_IEEEtran_how-to.pdf` - Compiled documentation
- `bare_jrnl_new_sample4.pdf` - Sample output

## Build Commands

### Primary Compilation (PDFLaTeX)
```bash
# Basic compilation
pdflatex filename.tex

# Full compilation cycle (with bibliography)
pdflatex filename.tex
bibtex filename
pdflatex filename.tex
pdflatex filename.tex
```

### Alternative Compilers
```bash
# XeLaTeX (for modern fonts)
xelatex filename.tex

# LuaLaTeX (for advanced typography)
lualatex filename.tex
```

### Building Individual Documents
```bash
# Compile the sample article
pdflatex bare_jrnl_new_sample4.tex

# Compile the documentation
pdflatex New_IEEEtran_how-to.tex
```

### Clean Build
```bash
# Remove auxiliary files
rm -f *.aux *.log *.bbl *.blg *.out *.toc *.lof *.lot
```

## Code Style Guidelines

### Document Class Structure
```latex
\documentclass[lettersize,journal]{IEEEtran}
% Options: 9pt/10pt/11pt/12pt, conference/journal/technote/peerreview/peerreviewca
```

### Package Imports Order
1. Core mathematical packages: `amsmath`, `amsfonts`
2. Algorithm packages: `algorithmic`, `algorithm`
3. Table/array packages: `array`
4. Figure/subfigure packages: `subfig`, `graphicx`
5. Typography packages: `textcomp`, `stfloats`
6. URL/citation packages: `url`, `cite`
7. Specialized packages last

### Package Import Format
```latex
\usepackage{amsmath,amsfonts}
\usepackage[caption=false,font=normalsize,labelfont=sf,textfont=sf]{subfig}
```

### Document Structure
1. `\documentclass` declaration
2. Package imports
3. Custom commands and hyphenation
4. `\begin{document}`
5. `\title`, `\author`, `\thanks`
6. `\markboth` for headers
7. `\IEEEpubid` (if used)
8. `\maketitle`
9. Abstract, keywords
10. Sections and content

### Naming Conventions
- File names: use underscores, lowercase (`sample_paper.tex`)
- Section labels: `sec:section-name`
- Figure labels: `fig:description`
- Table labels: `tab:description`
- Equation labels: `eq:description`

### Mathematical Content
- Use `\eqref{}` for equation references
- Prefer `\begin{equation}` over `$$` for numbered equations
- Use `\begin{align}` for multi-line equations
- Always use proper math mode: `$...$` for inline, `\[...\]` for display

### Figure and Table Guidelines
```latex
\begin{figure}[!t]
\centering
\includegraphics[width=2.5in]{figure.pdf}
\caption{Caption text.}
\label{fig:example}
\end{figure}
```

### Citation Style
- Use `\cite{}` for citations
- Multiple citations: `\cite{ref1,ref2,ref3}`
- Page numbers: `\cite[p.~123]{ref}`
- Use IEEE format for bibliography entries

### Error Handling
- Always check compilation warnings for overfull hboxes
- Fix bad box issues before submission
- Ensure all references resolve (no `??` citations)
- Verify all labels are defined before use

### Comment Style
- Use `%` for single-line comments
- Group related commands with descriptive comments
- Mark complex sections with `% --- Section Description ---`

### Special IEEE Requirements
- Use `\IEEEmembership{}` for IEEE membership notation
- Use `\IEEEpubid{}` for publication ID (follow with `\IEEEpubidadjcol`)
- Use `\IEEEPARstart{}` for drop caps at section starts
- Use `\begin{IEEEkeywords}` for keyword formatting

### Testing and Validation
1. Compile with pdflatex to check for errors
2. Verify all citations compile correctly
3. Check figure placement and captions
4. Validate bibliography format
5. Test with different font sizes (9pt-12pt)
6. Ensure no overfull/underfull boxes remain

### Common Issues to Avoid
- Missing `caption=false` in subfig package
- Forgetting to run bibliography compilation
- Using undefined labels in references
- Overlong lines causing overfull hboxes
- Incorrect package loading order

## Template Customization

When modifying templates:
1. Preserve IEEE formatting requirements
2. Test compilation with multiple runs
3. Verify PDF output matches IEEE standards
4. Keep changes minimal and documented
5. Test both journal and conference modes if applicable

## File Organization

- Main files: `.tex` source files
- Figures: `.pdf`, `.png`, `.eps` files
- Bibliographies: `.bib` files (if used)
- Style files: `.cls`, `.sty` files
- Outputs: `.pdf` compiled documents