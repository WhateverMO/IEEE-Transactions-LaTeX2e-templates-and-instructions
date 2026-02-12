# IEEE Transactions LaTeX2e Templates

This repository contains the official IEEE LaTeX2e templates and instructions for authors submitting papers to IEEE Transactions, Journals, and Conferences.

## Repository Structure

- `IEEEtran.cls`: The official IEEE LaTeX class file.
- `bare_jrnl_new_sample4.tex`: A modern "bare bones" template for journal articles.
- `bare_jrnl_new_sample4.pdf`: The compiled PDF of the journal template.
- `New_IEEEtran_how-to.tex`: Detailed instructions and examples on how to use the IEEEtran class.
- `New_IEEEtran_how-to.pdf`: The compiled PDF of the instructions.
- `fig1.png`: An example image used in the templates.

## Prerequisites

To build these templates, you need a LaTeX distribution installed on your system. Recommended distributions:
- **Windows**: [MiKTeX](https://miktex.org/) or [TeX Live](https://www.tug.org/texlive/)
- **macOS**: [MacTeX](https://www.tug.org/mactex/)
- **Linux**: [TeX Live](https://www.tug.org/texlive/)

Ensure you have the following tools available in your PATH:
- `pdflatex` (or `latex`)
- `bibtex` (if using external bibliographies)

## How to Use

### 1. Starting a New Paper
Copy `bare_jrnl_new_sample4.tex` to your desired filename (e.g., `my_paper.tex`) and use it as a starting point. Ensure `IEEEtran.cls` is in the same directory as your `.tex` file.

### 2. Building the Document
To compile a LaTeX document (e.g., `bare_jrnl_new_sample4.tex`), run the following commands in your terminal:

```bash
# Initial compilation
pdflatex bare_jrnl_new_sample4.tex

# Run BibTeX if you have citations (optional)
# bibtex bare_jrnl_new_sample4

# Run twice more to resolve references and citations
pdflatex bare_jrnl_new_sample4.tex
pdflatex bare_jrnl_new_sample4.tex
```

This will produce `bare_jrnl_new_sample4.pdf`.

### 3. Linting
You can use `chktex` to check for common errors and style issues in your LaTeX files:

```bash
chktex bare_jrnl_new_sample4.tex
```

### 4. Testing
In the context of LaTeX templates, "testing" usually means ensuring the document compiles without errors or warnings. You can run a clean build script:

```bash
# Example clean build
rm -f *.aux *.log *.out *.pdf
pdflatex -interaction=nonstopmode bare_jrnl_new_sample4.tex
```

## Documentation
For comprehensive details on all available class options, commands, and formatting rules, please refer to:
1. `New_IEEEtran_how-to.pdf` (included in this repo)
2. [IEEE Author Center](https://journals.ieeeauthorcenter.ieee.org/create-your-ieee-journal-article/authoring-tools-and-templates/ieee-article-templates/templates-for-transactions/)

## License
These templates are distributed under the LaTeX Project Public License (LPPL). See the source files for more details.
