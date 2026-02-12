# IEEE Transactions LaTeX Template

This repository contains the official IEEE LaTeX class file and templates for preparing papers for IEEE Transactions, Journals, and Conferences.

## 📋 Overview

This package provides:
- `IEEEtran.cls` - The official IEEE LaTeX document class (Version 1.8b)
- Template files for different publication types
- Documentation and sample papers
- Graphics and supporting files

## 🗂️ Files Structure

```
├── IEEEtran.cls                     # Main IEEE document class file
├── New_IEEEtran_how-to.tex         # Comprehensive usage instructions
├── New_IEEEtran_how-to.pdf         # Compiled documentation (PDF)
├── bare_jrnl_new_sample4.tex      # Sample journal article template
├── bare_jrnl_new_sample4.pdf       # Compiled sample (PDF)
└── fig1.png                        # Sample figure for demonstration
```

## 🚀 Getting Started

### Prerequisites

You need a LaTeX distribution installed. IEEE recommends:

- **TeX Live** (free): [http://www.tug.org/texlive/](http://www.tug.org/texlive/)
- **MiKTeX** (Windows): [https://miktex.org/](https://miktex.org/)
- **MacTeX** (macOS): [https://www.tug.org/mactex/](https://www.tug.org/mactex/)

### Quick Start

1. **Start with a template**: Copy `bare_jrnl_new_sample4.tex` to your project
2. **Edit the content**: Modify title, authors, sections, etc.
3. **Compile your paper**: Use pdflatex (recommended)
4. **Review the output**: Check the generated PDF

### Building/Compiling

The standard compilation process for IEEE papers:

```bash
# Method 1: Using pdflatex (recommended)
pdflatex yourpaper.tex
bibtex yourpaper  # if you have references
pdflatex yourpaper.tex
pdflatex yourpaper.tex

# Method 2: Using latex + dvipdf
latex yourpaper.tex
bibtex yourpaper  # if you have references  
latex yourpaper.tex
latex yourpaper.tex
dvipdf yourpaper.dvi
```

**Note**: Run the compilation sequence multiple times to ensure:
- All cross-references are resolved
- Citations are properly formatted
- Table of contents (if used) is updated

## 📝 Document Types

Use the appropriate document class options for your publication type:

```latex
% Regular Journal Article
\documentclass[journal]{IEEEtran}

% Conference Paper  
\documentclass[conference]{IEEEtran}

% Computer Society Journal Article
\documentclass[10pt,journal,compsoc]{IEEEtran}

% Computer Society Conference Paper
\documentclass[conference,compsoc]{IEEEtran}

% Communications Society Journal Article
\documentclass[journal,comsoc]{IEEEtran}

% Brief, Correspondence or Technote
\documentclass[9pt,technote]{IEEEtran}
```

## 🔧 Key Features

### Front Matter
- **Title**: `\title{Your Paper Title}`
- **Authors**: `\author{Name\IEEEmembership{Member, IEEE}}`
- **Abstract**: `\begin{abstract}...\end{abstract}`
- **Keywords**: `\begin{IEEEkeywords}...\end{IEEEkeywords}`

### Body Elements
- **Drop Cap**: `\IEEEPARstart{T}{his}` starts first paragraph
- **Sections**: `\section{Title}`, `\subsection{Title}`
- **Figures**: Use `graphicx` package with `\includegraphics`
- **Tables**: Standard LaTeX table environments
- **Equations**: Standard LaTeX math environments
- **Algorithms**: Use `algorithmic` and `algorithm` packages
- **Bibliography**: Use `cite` package with BibTeX

### Common Packages
```latex
\usepackage{amsmath,amsfonts}      % Math
\usepackage{graphicx}               % Graphics
\usepackage{cite}                   % Citations
\usepackage{algorithmic,algorithm}  % Algorithms
\usepackage{url}                    % URLs
```

## ✅ Testing and Validation

### Manual Testing
1. **Compile templates**: Test compilation of provided `.tex` files
2. **Check output**: Verify PDFs are generated correctly
3. **Validate formatting**: Ensure IEEE formatting guidelines are met

### Common Issues to Check
- [ ] All LaTeX files compile without errors
- [ ] PDF output is generated correctly
- [ ] Figures are properly displayed
- [ ] Citations work (if using BibTeX)
- [ ] Math equations render correctly
- [ ] Tables are formatted properly

### Linting (Optional)

For LaTeX files, you can use:
```bash
# Check for common LaTeX issues
chktex yourpaper.tex

# Spell check (requires aspell)
aspell -t -c yourpaper.tex
```

## 📚 Documentation

- **New_IEEEtran_how-to.pdf**: Comprehensive usage guide
- **bare_jrnl_new_sample4.pdf**: Example compiled paper
- **Online resources**: [IEEE Template Selector](https://template-selector.ieee.org/)

## 🆘 Getting Help

- **TeX Stack Exchange**: [https://tex.stackexchange.com/](https://tex.stackexchange.com/)
- **LaTeX Community**: [http://www.latex-community.org/](http://www.latex-community.org/)
- **IEEE Support**: [https://template-selector.ieee.org/](https://template-selector.ieee.org/)

## 📄 License

This work is distributed under the LaTeX Project Public License (LPPL) version 1.3. See the class file header for detailed copyright information.

## 🔗 Important Links

- **Official IEEE Templates**: [https://template-selector.ieee.org/](https://template-selector.ieee.org/)
- **IEEEtran Class Support**: [http://www.michaelshell.org/tex/ieeetran/](http://www.michaelshell.org/tex/ieeetran/)
- **CTAN Package**: [http://www.ctan.org/pkg/ieeetran](http://www.ctan.org/pkg/ieeetran)

## ⚠️ Important Notes

- Templates **approximate** final appearance but are NOT the final published version
- Templates are designed for easy conversion to IEEE's XML composition system
- Always use the most recent version from the IEEE Template Selector
- Follow the specific guidelines of your target publication
- IEEE membership status should be indicated using `\IEEEmembership{}` command