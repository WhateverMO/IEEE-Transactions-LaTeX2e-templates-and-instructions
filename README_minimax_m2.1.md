# IEEE Transactions LaTeX2e Templates and Instructions

This repository contains the official IEEEtran LaTeX class files and templates for IEEE Transactions journals and conferences.

## Overview

**IEEEtran.cls** is a LaTeX class file that provides formatting templates for authors submitting papers to IEEE publications. It supports:

- Journal articles
- Conference papers
- Technical notes/correspondence
- Peer review papers
- Computer Society publications
- Communications Society publications

## Files Included

| File | Description |
|------|-------------|
| `IEEEtran.cls` | Main LaTeX class file (version 1.8b, 2015/08/26) |
| `bare_jrnl_new_sample4.tex` | Sample journal article template |
| `bare_jrnl_new_sample4.pdf` | Compiled PDF output of sample |
| `New_IEEEtran_how-to.tex` | Comprehensive how-to guide |
| `New_IEEEtran_how-to.pdf` | Compiled how-to guide |
| `fig1.png` | Sample figure for templates |

## Quick Start

### 1. Document Class Options

```latex
% Journal Article
\documentclass[journal]{IEEEtran}

% Conference Paper
\documentclass[conference]{IEEEtran}

% Computer Society Journal
\documentclass[10pt,journal,compsoc]{IEEEtran}

% Technical Note/Correspondence (9pt)
\documentclass[9pt,technote]{IEEEtran}

% Peer Review Paper
\documentclass[peerreview]{IEEEtran}
```

### 2. Basic Template Structure

```latex
\documentclass[journal]{IEEEtran}
\usepackage{amsmath,amsfonts}
\usepackage{algorithmic}
\usepackage{array}
\usepackage{graphicx}
\usepackage{cite}

\begin{document}

\title{Your Paper Title}

\author{Author Name,
        \IEEEmembership{Member,~IEEE}}

\markboth{Journal Name,~Vol.~X, No.~Y, Month~Year}%
{Author: Paper Title}

\IEEEpubid{0000--0000/\$00.00~\copyright~YYYY IEEE}

\maketitle

\begin{abstract}
Your abstract goes here.
\end{abstract}

\begin{IEEEkeywords}
IEEEtran, LaTeX, template, keywords
\end{IEEEkeywords}

\section{Introduction}
Your content here.

\end{document}
```

### 3. Front Matter Elements

**Title:**
```latex
\title{Your Paper Title}
```

**Author Block:**
```latex
\author{Author Name,
        \IEEEmembership{Senior Member,~IEEE},
        \thanks{Funding information}}
```

**Abstract:**
```latex
\begin{abstract}
Abstract text here.
\end{abstract}
```

**Keywords:**
```latex
\begin{IEEEkeywords}
keyword1, keyword2, keyword3
\end{IEEEkeywords}
```

### 4. Sectioning

```latex
\section{Section Name}
\subsection{Subsection Name}
\subsection{Subsubsection Name}
\IEEEPARstart{L}{etter} % Drop cap start
```

### 5. Math Equations

```latex
\begin{equation}
\label{eq_label}
E = mc^2
\end{equation}

IEEEeqnarray environment for multi-line equations
```

### 6. Tables and Figures

**Table:**
```latex
\begin{table}[!t]
\centering
\caption{Table Title}
\label{tab_label}
\begin{tabular}{c|c}
\hline
Column 1 & Column 2 \\
\hline
Data 1   & Data 2   \\
\hline
\end{tabular}
\end{table}
```

**Figure:**
```latex
\begin{figure}[!t]
\centering
\includegraphics[width=3.5in]{filename}
\caption{Figure Caption}
\label{fig_label}
\end{figure}
```

### 7. Algorithms

```latex
\usepackage{algorithmic}
\usepackage{algorithm}

\begin{algorithm}
\caption{Algorithm Name}
\label{alg_label}
\begin{algorithmic}
\STATE $x \gets 0$
\RETURN $x$
\end{algorithmic}
\end{algorithm}
```

### 8. Bibliography

```latex
\bibliographystyle{IEEEtran}
\bibliography{your_bibfile}

% BibTeX entries:
% @article{key,
%   author={Name},
%   title={Title},
%   journal={Journal},
%   year={2021}
% }
```

## Building and Compiling

### Basic Compilation

```bash
# Compile with pdflatex (recommended)
pdflatex your_paper.tex

# Run twice to resolve cross-references
pdflatex your_paper.tex

# Compile with bibliography
pdflatex your_paper.tex
bibtex your_paper
pdflatex your_paper.tex
pdflatex your_paper.tex
```

### Using latexmk (Automated Build)

```bash
# Install latexmk
# On macOS: brew install mactex-no-gui  # includes latexmk
# Or: ctan install latexmk

# Auto-compile with all dependencies
latexmk -pdf your_paper.tex

# Clean auxiliary files
latexmk -c
```

### Compilation Options

| Command | Purpose |
|---------|---------|
| `pdflatex -interaction=nonstopmode file.tex` | Continue on errors |
| `pdflatex -shell-escape file.tex` | Enable shell escape (for minted, etc.) |
| `latexmk -pdf -quiet file.tex` | Quiet compilation |

## Linting and Testing

### LaTeX Linting Tools

**1. ChkTeX** - Fast LaTeX checker
```bash
# Install
brew install chktex  # macOS
apt-get install chktex  # Linux

# Run linting
chktex -q your_paper.tex  # Quiet mode
chktex -Wall your_paper.tex  # Show all warnings
```

**2. lacheck** - LaTeX semantic checker
```bash
# Install
brew install lacheck  # macOS

# Check file
lacheck your_paper.tex
```

**3. texlab** - Language server for LaTeX
```bash
# Install as VS Code extension or standalone
# Provides real-time linting in editors
```

**4. proselint** - Writing style linter
```bash
pip install proselint
proselint your_paper.tex
```

### Testing Your Template

**Automated Test Script:**

```bash
#!/bin/bash
# test_template.sh

TEMPLATE="bare_jrnl_new_sample4.tex"

echo "=== LaTeX Linting ==="
chktex -q -n12 -n22 "$TEMPLATE"  # Ignore common warnings
lacheck "$TEMPLATE"

echo "=== PDF Compilation ==="
pdflatex -interaction=nonstopmode "$TEMPLATE"

echo "=== Bibliography Test (if needed) ==="
if grep -q "\\bibliography" "$TEMPLATE"; then
    bibtex "${TEMPLATE%.tex}"
    pdflatex -interaction=nonstopmode "$TEMPLATE"
    pdflatex -interaction=nonstopmode "$TEMPLATE"
fi

echo "=== Validation Complete ==="
```

Run with:
```bash
chmod +x test_template.sh
./test_template.sh
```

### VS Code Configuration

Create `.vscode/settings.json`:

```json
{
    "latex-workshop.latex.recipes": [
        {
            "name": "pdflatex",
            "tools": ["pdflatex"]
        },
        {
            "name": "latexmk",
            "tools": ["latexmk"]
        }
    ],
    "latex-workshop.latex.tools": [
        {
            "name": "pdflatex",
            "command": "pdflatex",
            "args": ["-interaction=nonstopmode", "-synctex=1", "%DOC%"]
        },
        {
            "name": "latexmk",
            "command": "latexmk",
            "args": ["-pdf", "-interaction=nonstopmode", "-synctex=1", "%DOC%"]
        }
    ],
    "latex-workshop.lint_on_save": true,
    "chktex.enabled": true
}
```

### Git Pre-commit Hook

Create `.git/hooks/pre-commit`:

```bash
#!/bin/bash
# Pre-commit hook for LaTeX linting

FILES=$(git diff --cached --name-only -- '*.tex')
if [ -n "$FILES" ]; then
    echo "Running LaTeX checks..."
    echo "$FILES" | xargs chktex -q -n12 -n22
    echo "If checks passed, commit will proceed."
fi
```

## Recommended LaTeX Distribution

**TeX Live** (cross-platform):
- Download: http://tug.org/texlive/
- Includes: pdflatex, bibtex, latexmk, and all packages

**MacTeX** (macOS):
- Download: http://tug.org/mactex/
- Full-featured TeX Live distribution for macOS

## Resources

### LaTeX Learning
- [The Not So Short Introduction to LaTeX](http://tug.ctan.org/info/lshort/english/lshort.pdf)
- [LaTeX Wikibook](https://en.wikibooks.org/wiki/LaTeX)
- [TeX Stack Exchange](https://tex.stackexchange.com/)

### IEEE Resources
- [IEEE Template Selector](https://template-selector.ieee.org/)
- [IEEE Author Center](https://ieeeauthorcenter.ieee.org/)
- [IEEE LaTeX Support](https://www.ieee.org/conferences_events/conferences/publishing/templates.html)

### Package Documentation
- `texdoc amsmath` - Math formatting
- `texdoc algorithmic` - Algorithm pseudocode
- `texdoc graphicx` - Graphics handling
- `texdoc IEEEtran` - IEEEtran class documentation

## Troubleshooting

### Common Issues

1. **Missing packages**: Install full TeXLive distribution
2. **Font warnings**: Usually harmless, PDFs will compile correctly
3. **Citation warnings**: Run bibtex and pdflatex twice more
4. **Figure not found**: Use relative paths, check file extensions

### Getting Help
- [TeX Stack Exchange](https://tex.stackexchange.com/)
- [LaTeX Community](http://www.latex-community.org/)
- Check `IEEEtran_HOWTO.pdf` for detailed documentation

## License

This work is distributed under the LaTeX Project Public License (LPPL) version 1.3.

See: http://www.latex-project.org/

## Version History

- **v1.8b** (2015/08/26): Current version in this repository
- Maintained by Michael Shell
- Based on original 1993 IEEEtran.cls

## Contributing

This is the official IEEE template distribution. For issues or updates, contact:
- [CTAN IEEEtran page](http://www.ctan.org/pkg/ieeetran)
- [IEEE Author Center](https://ieeeauthorcenter.ieee.org/)
