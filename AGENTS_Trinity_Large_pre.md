# AGENTS.md

This repository contains IEEE Transactions LaTeX templates and documentation. The following guidelines apply to agents working in this repository.

## Repository Overview

This is a LaTeX template repository for IEEE Transactions publications, containing:
- `IEEEtran.cls` - The main IEEEtran LaTeX class file
- Template files (`bare_jrnl_new_sample4.tex`, `New_IEEEtran_how-to.tex`)
- Documentation and examples

## Build Commands

This is a LaTeX repository, so the primary commands are:

### Compilation
```bash
# Compile the main template
pdflatex bare_jrnl_new_sample4.tex

# Compile the documentation
pdflatex New_IEEEtran_how-to.tex

# For complete compilation (with bibliography)
pdflatex <filename>.tex
bibtex <filename>
pdflatex <filename>.tex
pdflatex <filename>.tex
```

### Cleaning
```bash
# Remove auxiliary files
rm -f *.aux *.log *.bbl *.blg *.out *.toc *.lof *.lot

# Clean all generated files
rm -f *.pdf *.aux *.log *.bbl *.blg *.out *.toc *.lof *.lot *.synctex.gz
```

## Code Style Guidelines

### LaTeX Document Structure

1. **Document Class**: Always start with `\documentclass[lettersize,journal]{IEEEtran}`
2. **Required Packages**: Include these essential packages:
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
   ```

3. **Hyphenation**: Use the IEEE-specific hyphenation command:
   ```latex
   \hyphenation{op-tical net-works semi-conduc-tor IEEE-Xplore}
   ```

### Typography and Formatting

1. **Font Usage**: IEEE uses Times Roman by default. The class handles this automatically.
2. **Mathematical Notation**:
   - Use proper math environments (`equation`, `align`, `multline`, `cases`)
   - Use `\text{}` for text within math mode
   - Use proper function names with backslash (e.g., `\sin`, `\log`)
   - Use `\underset` for arg min/max operations

3. **Citations**:
   - Use `\cite{key}` for single citations
   - Use `\cite{key1,key2,key3}` for multiple citations
   - Use `\cite{key1,key2,key9}` for non-consecutive ranges

4. **Figures and Tables**:
   - Figures: `\begin{figure}[!t]` with `\centering` and `\includegraphics`
   - Tables: `\begin{table}[!t]` with `\caption` BEFORE the table
   - Use `\label` after `\caption` for cross-referencing

### Section Structure

1. **Headings**: Use standard LaTeX commands:
   - `\section{}` - Primary (Roman numerals)
   - `\subsection{}` - Secondary (Capital letters)
   - `\subsubsection{}` - Tertiary (Arabic numbers)
   - `\paragraph{}` - Quaternary (Lowercase letters)

2. **Special Headings**:
   - `\IEEEPARstart{T}{his}` for initial drop cap
   - `\markboth{Left}{Right}` for running heads
   - `\IEEEpubid{0000--0000/00$00.00~\copyright~2021 IEEE}` for publication ID

### Mathematical Typesetting

1. **Display Equations**:
   - Use `equation` for single-line numbered equations
   - Use `align` for multi-line equations with alignment
   - Use `multline` for long equations that need to break
   - Use `cases` for piecewise functions

2. **Matrices**:
   - Use `matrix` for simple matrices
   - Use `pmatrix` for matrices with parentheses
   - Use `bmatrix` for matrices with square brackets
   - Use `Bmatrix` for matrices with curly braces
   - Use `vmatrix` and `Vmatrix` for determinant notation

3. **Arrays**:
   - Use `array` environment for complex tabular structures
   - Control column alignment with `{ccccr}` syntax
   - Use `\hline` for horizontal rules

### Bibliography

1. **Manual Bibliography**: Use `thebibliography` environment with `\bibitem`
2. **BibTeX**: Use `.bib` files with appropriate IEEE BibTeX style
3. **Citation Format**: Follow IEEE format with bracketed numbers

### Author Information

1. **Author Block**:
   ```latex
   \author{Author Name
   \IEEEmembership{Fellow, IEEE},
   \thanks{Affiliation information.}
   }
   ```

2. **Biographies**:
   - With photo: `\begin{IEEEbiography}[{\includegraphics[width=1in,height=1.25in,clip,keepaspectratio]{fig1}}]{Name}`
   - Without photo: `\begin{IEEEbiographynophoto}{Name}`

### Common Commands

1. **Text Elements**:
   - `\textbf{}` for bold text
   - `\textit{}` for italic text
   - `\texttt{}` for monospace text
   - `\text{}` for text in math mode

2. **Special Characters**:
   - Use `\&` for ampersands in text
   - Use `\%` for percent signs
   - Use `\$` for dollar signs

### Error Handling and Debugging

1. **Compilation Errors**:
   - Check for missing braces or backslashes
   - Verify all packages are loaded correctly
   - Ensure all graphics files exist and are in correct format

2. **Package Conflicts**:
   - Load `cite` package for proper citation formatting
   - Use `subfig` for subfigures instead of `subfigure`
   - Avoid conflicting math packages

### Version Control

1. **File Organization**:
   - Keep main `.tex` files in root directory
   - Store graphics in `fig/` subdirectory
   - Keep bibliography files in `bib/` subdirectory

2. **Commit Messages**:
   - Use descriptive messages for LaTeX changes
   - Mention specific sections or elements modified
   - Include compilation status in commit messages

### Testing

1. **Single Test**:
   ```bash
   pdflatex -interaction=nonstopmode <filename>.tex
   ```

2. **Full Test**:
   ```bash
   pdflatex <filename>.tex
   bibtex <filename>
pdflatex <filename>.tex
   pdflatex <filename>.tex
   ```

3. **Validation**:
   - Check for overfull/underfull boxes
   - Verify all cross-references resolve
   - Ensure bibliography entries are complete

### Documentation

1. **Comments**: Use `%%` for section comments in `.tex` files
2. **README**: Update README.md with compilation instructions
3. **Template Usage**: Follow the examples in `New_IEEEtran_how-to.tex`

## Important Notes

- Always use the IEEEtran class options appropriately for your publication type
- Follow IEEE formatting guidelines strictly for submission
- Test compilation thoroughly before submission
- Use the provided templates as starting points for new documents