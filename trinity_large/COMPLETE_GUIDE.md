# IEEE Transactions LaTeX Templates - Complete Guide

## Overview

This repository contains the official IEEE Transactions LaTeX templates and comprehensive documentation for authors submitting papers to IEEE journals and conferences. The templates are designed to conform to IEEE publication standards and provide a professional starting point for manuscript preparation.

## Repository Structure

```
.
├── IEEEtran.cls                    # Main LaTeX class file (V1.8b)
├── New_IEEEtran_how-to.tex         # Updated simplified documentation
├── New_IEEEtran_how-to.pdf         # Compiled documentation (PDF)
├── bare_jrnl_new_sample4.tex       # Journal paper template example
├── bare_jrnl_new_sample4.pdf       # Compiled template example (PDF)
├── fig1.png                        # Sample figure for documentation
├── README.md                       # This guide
├── build.sh                        # Build script
├── test.sh                         # Test script
└── USAGE.md                        # Usage instructions
```

## Getting Started

### Prerequisites

- **LaTeX Distribution**: TeX Live, MiKTeX, or MacTeX
- **Text Editor**: Any text editor or LaTeX IDE (TeXstudio, Overleaf, etc.)
- **Basic LaTeX Knowledge**: Recommended to read "The Not So Short Introduction to LaTeX"

### Quick Installation

1. Download the repository
2. Place `IEEEtran.cls` in your LaTeX search path or project directory
3. Use the provided templates as starting points

## Building Documents

### Using the Build Script

```bash
# Build documentation
./build.sh New_IEEEtran_how-to pdf

# Build sample paper
./build.sh bare_jrnl_new_sample4 pdf

# Build with different format
./build.sh bare_jrnl_new_sample4 dvi
./build.sh bare_jrnl_new_sample4 ps
```

### Manual Compilation

```bash
# Standard PDF build
pdflatex document.tex
bibtex document
pdflatex document.tex
pdflatex document.tex

# For DVI output
latex document.tex
bibtex document
latex document.tex
latex document.tex
```

## Template Features

### Document Class Options

```latex
\documentclass[options]{IEEEtran}
```

**Paper Types:**
- `journal` - Standard journal articles (default)
- `conference` - Conference papers
- `technote` - Correspondence/technical notes (use with 9pt)
- `peerreview` - Single-column anonymous peer review
- `peerreviewca` - Peer review with author names formatted for conference

**Font Sizes:**
- `9pt` - Small text (used with technote)
- `10pt` - Standard size (default)
- `11pt` - Larger text
- `12pt` - Largest text

**Layout Options:**
- `letterpaper` - US letter paper (8.5" x 11")
- `a4paper` - A4 paper (210mm x 297mm)
- `oneside` - Single-sided printing
- `twoside` - Double-sided printing (default)
- `onecolumn` - Single column layout
- `twocolumn` - Two column layout (default)

**Society-Specific:**
- `comsoc` - IEEE Communications Society
- `compsoc` - IEEE Computer Society
- `transmag` - IEEE Transactions on Magnetics

**Draft Options:**
- `draft` - Wide spacing for handwritten comments
- `draftcls` - Draft mode for class file only
- `draftclsnofoot` - Draft mode without footer

## Common Elements

### Figures

```latex
\begin{figure}[!t]
\centering
\includegraphics[width=2.5in]{fig1}
\caption{This is a figure caption.}
\label{fig1}
\end{figure}
```

### Tables

```latex
\begin{table}[!t]
\caption{Table caption goes here.}
\label{tab1}
\centering
\begin{tabular}{|c||c|}
\hline
One & Two \\\hline
Three & Four \\\hline
\end{tabular}
\end{table}
```

### Equations

```latex
\begin{equation}
\label{eq1}
x = \sum_{i=0}^{n} 2^i Q.
\end{equation}
```

### Citations

```latex
\cite{ref1}  % Single citation
\cite{ref1,ref2,ref3}  % Multiple citations
```

## Mathematical Typesetting

### Matrices

```latex
\begin{equation}
\begin{bmatrix}
0 & -1 \\
1 &  0
\end{bmatrix}
\end{equation}
```

### Cases

```latex
\begin{equation*}
{z_m(t)} = \begin{cases}
1,&{\text{if}}\ {\beta }_m(t) \\
{0,}&{\text{otherwise.}} 
\end{cases}
\end{equation*}
```

### Subequations

```latex
\begin{subequations}
\begin{align}
&f=g \\
&f' =g' \\
&\mathcal{L}f = \mathcal{L}g
\end{align}
\end{subequations}
```

## Bibliography Management

### Using BibTeX

1. Create a `.bib` file with your references
2. Use `\bibliography{your_bib_file}` in your document
3. Run BibTeX after LaTeX compilation

### Manual Bibliography

```latex
\begin{thebibliography}{1}
\bibitem{ref1}
Author, "Title," Journal, vol., no., pp., Year.
\end{thebibliography}
```

## Author Information

### Author Names and Affiliations

```latex
\author{First Author Name
\thanks{Affiliation and address.}
\and
Second Author Name
\thanks{Affiliation and address.}}
```

### IEEE Membership

```latex
\author{John Doe
\IEEEmembership{Senior Member, IEEE}}
```

### Biographies

```latex
\begin{IEEEbiography}[{\includegraphics[width=1in,height=1.25in,clip,keepaspectratio]{photo}}]{Author Name}
Biography text here.
\end{IEEEbiography}
```

## Testing and Validation

### Test Script

```bash
./test.sh
```

This script verifies that all templates compile correctly.

### Build Verification

All templates have been tested and confirmed to compile successfully:
- `New_IEEEtran_how-to.tex` - ✓ Compiled successfully
- `bare_jrnl_new_sample4.tex` - ✓ Compiled successfully

## Documentation

### Main Documentation

- `New_IEEEtran_how-to.pdf` - Comprehensive guide covering all template features
- Includes sections on: mathematical typesetting, figures, tables, citations, and more

### Sample Paper

- `bare_jrnl_new_sample4.pdf` - Complete journal paper example
- Demonstrates proper formatting for IEEE journal submissions

## Troubleshooting

### Common Issues

1. **Font Substitution Warnings**: Ensure Times-compatible math fonts are loaded
2. **Page Size Issues**: Verify paper size matches your document class option
3. **Margin Problems**: Check that dvips or pdf output uses correct paper size
4. **Equation Numbering**: Use consecutive numbering, avoid hyphens in numbers

### Resources

- [IEEE Author Center](https://journals.ieeeauthorcenter.ieee.org/)
- [TeX User Group](http://www.tug.org/)
- [LaTeX Community](http://www.latex-community.org/)
- [TeX Stack Exchange](https://tex.stackexchange.com/)

## Version Information

- **IEEEtran.cls**: Version 1.8b (2015/08/26)
- **Maintained by**: Michael Shell
- **License**: LaTeX Project Public License (LPPL) version 1.3

## Support

For technical support with IEEEtran templates:
1. Visit the [IEEE Author Center](https://journals.ieeeauthorcenter.ieee.org/)
2. Join LaTeX user groups
3. Consult the comprehensive documentation in `New_IEEEtran_how-to.pdf`
4. Use the provided test and build scripts

## Notes

- The templates include duplicate labels (documented in LSP diagnostics) - these are intentional for demonstration purposes
- Always run LaTeX multiple times to resolve cross-references
- Use BibTeX for bibliography management when possible
- The templates are designed to approximate the final published appearance. The IEEE's composition system will make final adjustments during production.

---

**This repository provides a complete, tested, and documented solution for preparing IEEE Transactions papers using LaTeX.**