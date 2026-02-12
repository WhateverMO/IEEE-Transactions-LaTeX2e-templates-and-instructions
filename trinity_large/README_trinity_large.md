# IEEE Transactions LaTeX Templates and Instructions

This repository contains the official IEEE Transactions LaTeX templates and comprehensive documentation for authors submitting papers to IEEE journals and conferences.

## Overview

The IEEEtran LaTeX class provides a standardized format for preparing manuscripts that conform to IEEE publication standards. This package includes:

- **IEEEtran.cls** - The main LaTeX class file
- **New_IEEEtran_how-to.tex** - Updated simplified documentation
- **bare_jrnl_new_sample4.tex** - Journal paper template example
- **New_IEEEtran_how-to.pdf** - Compiled documentation (PDF)
- **bare_jrnl_new_sample4.pdf** - Compiled template example (PDF)
- **fig1.png** - Sample figure for documentation

## Quick Start

### Prerequisites

- LaTeX distribution (TeX Live, MiKTeX, or MacTeX)
- Basic knowledge of LaTeX
- Text editor or LaTeX IDE

### Installation

1. Download the template files
2. Place `IEEEtran.cls` in your LaTeX search path or project directory
3. Use the provided templates as starting points

### Basic Usage

Create a new LaTeX document with the following structure:

```latex
\documentclass[lettersize,journal]{IEEEtran}
\usepackage{amsmath,amsfonts}
\usepackage{graphicx}

\begin{document}
\title{Your Paper Title}
\author{Author Name(s)}
\maketitle

\begin{abstract}
Your abstract text here.
\end{abstract}

\begin{IEEEkeywords}
Keyword1, Keyword2, Keyword3
\end{IEEEkeywords}

\section{Introduction}
Your introduction text here.

\end{document}
```

## Document Class Options

### Paper Types

- `journal` - Standard journal articles (default)
- `conference` - Conference papers
- `technote` - Correspondence/technical notes (use with 9pt)
- `peerreview` - Single-column anonymous peer review
- `peerreviewca` - Peer review with author names formatted for conference

### Font Sizes

- `9pt` - Small text (used with technote)
- `10pt` - Standard size (default)
- `11pt` - Larger text
- `12pt` - Largest text

### Layout Options

- `letterpaper` - US letter paper (8.5" x 11")
- `a4paper` - A4 paper (210mm x 297mm)
- `oneside` - Single-sided printing
- `twoside` - Double-sided printing (default)
- `onecolumn` - Single column layout
- `twocolumn` - Two column layout (default)

### Society-Specific Options

- `comsoc` - IEEE Communications Society
- `compsoc` - IEEE Computer Society
- `transmag` - IEEE Transactions on Magnetics

### Draft Options

- `draft` - Wide spacing for handwritten comments
- `draftcls` - Draft mode for class file only
- `draftclsnofoot` - Draft mode without footer

## Building Documents

### Using pdfLaTeX

```bash
pdflatex your_document.tex
bibtex your_document
pdflatex your_document.tex
pdflatex your_document.tex
```

### Using LaTeX (for DVI output)

```bash
latex your_document.tex
bibtex your_document
latex your_document.tex
latex your_document.tex
```

### Using XeLaTeX (for modern font support)

```bash
xelatex your_document.tex
bibtex your_document
xelatex your_document.tex
xelatex your_document.tex
```

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

1. Create a .bib file with your references
2. Use `\bibliography{your_bib_file}` in your document
3. Run BibTeX after LaTeX compilation

### Manual Bibliography

Use the `thebibliography` environment:

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

## Version History

- **V1.8b** (2015/08/26) - Current stable version
- **V1.8a** - Added compsoc font size improvements
- **V1.7** - Enhanced page setup and font tuning
- **V1.6** - Improved interword spacing and math font handling

## License

This work is distributed under the LaTeX Project Public License (LPPL) version 1.3. See the included documentation for full license terms.

## Contributing

IEEE welcomes feedback and contributions to improve the templates. Please report issues through the IEEE Author Center or contact the IEEE Publication Technology Department.

## Support

For technical support with IEEEtran templates:
- Visit the [IEEE Author Center](https://journals.ieeeauthorcenter.ieee.org/)
- Join LaTeX user groups
- Consult the comprehensive documentation in `New_IEEEtran_how-to.pdf`

---

**Note**: These templates are designed to approximate the final published appearance. The IEEE's composition system will make final adjustments during production.