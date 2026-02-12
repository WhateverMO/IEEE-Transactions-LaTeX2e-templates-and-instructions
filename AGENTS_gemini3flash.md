# Agent Guidelines for IEEE Transactions LaTeX Templates

This repository contains the IEEE Transactions LaTeX2e templates and instructions. These files are used to produce articles suitable for submission to the Institute of Electrical and Electronics Engineers (IEEE).

## 🛠 Build and Maintenance Commands

### Compilation (Build)
To compile a LaTeX document (e.g., `bare_jrnl_new_sample4.tex`), use the following sequence to ensure all references and citations are correctly resolved:

```bash
# Full build sequence
pdflatex bare_jrnl_new_sample4.tex
bibtex bare_jrnl_new_sample4
pdflatex bare_jrnl_new_sample4.tex
pdflatex bare_jrnl_new_sample4.tex
```

For a quick check of changes:
```bash
pdflatex -interaction=nonstopmode bare_jrnl_new_sample4.tex
```

### Linting
Use standard LaTeX linters to check for common mistakes and stylistic issues:

```bash
# Check for common LaTeX errors
chktex bare_jrnl_new_sample4.tex

# Check for style issues
lacheck bare_jrnl_new_sample4.tex
```

### Cleanup
Remove temporary files generated during compilation:
```bash
rm -f *.aux *.log *.out *.toc *.bbl *.blg *.pdf
```

---

## 🎨 Code Style Guidelines

### 1. Document Class
Always use the `IEEEtran` class with appropriate options:
- Journal: `\documentclass[lettersize,journal]{IEEEtran}`
- Conference: `\documentclass[conference]{IEEEtran}`

### 2. Preamble and Imports
- Keep all `\usepackage{}` declarations in the preamble (before `\begin{document}`).
- Group related packages (e.g., math, graphics, citations).
- Avoid package conflicts; `IEEEtran` is sensitive to certain packages (see `New_IEEEtran_how-to.tex`).

### 3. Naming Conventions
- **Files**: Use descriptive, lowercase filenames with hyphens (e.g., `fig-architecture.png`).
- **Labels**: Use prefixes for consistency:
  - `fig:` for figures (e.g., `\label{fig:results}`)
  - `tab:` for tables
  - `sec:` for sections
  - `eq:` for equations
  - `alg:` for algorithms

### 4. Structure and Formatting
- **Indentation**: Indent the content of environments for readability.
  ```latex
  \begin{itemize}
    \item First item.
    \item Second item.
  \end{itemize}
  ```
- **Sectioning**: Use `\section{}`, `\subsection{}`, and `\subsubsection{}`.
- **Headings**: Section titles should be in Title Case (Capitalize Every Major Word).
- **Paragraphs**: Use a blank line to start a new paragraph. Do not use `\\` for paragraph breaks.

### 5. Typesetting Best Practices
- **First Letter**: Use `\IEEEPARstart{W}{elcome}` for the first letter of the first paragraph of the introduction.
- **References**:
  - Use `\cite{...}` for citations.
  - Use `\ref{...}` for sections, figures, and tables.
  - Use `\eqref{...}` for equations.
- **Math**:
  - Use `amsmath` environments like `equation`, `align`, or `gather`.
  - Use `$` for inline math (e.g., $x+y=z$).
  - For multi-line equations, use `\begin{align} ... \end{align}` to align at the `=` sign.
  - Ensure all variables are in math mode.
- **Quotes**: Use double backticks and double single quotes: `` ``quoted text'' ``.
- **Dashes**:
  - Use `-` for hyphens (e.g., "well-known").
  - Use `--` for ranges (e.g., "1--10").
  - Use `---` for em-dashes (e.g., "text---more text").

### 6. Figures and Tables
- **Placement**: Use `[htbp]` or `[!t]` as recommended by IEEE. Avoid `[h]` if possible as it can lead to poor layout.
- **Captions**:
  - Figures: Captions go *below* the figure. Use `\caption{...}`.
  - Tables: Captions go *above* the table. Use `\caption{...}`.
- **Graphics**: Use `\includegraphics[width=\columnwidth]{...}` for single-column figures and `\includegraphics[width=\textwidth]{...}` for double-column figures.
- **Tables**: Use the `tabular` environment. For professional-looking tables, consider the `booktabs` package, though check if it conforms to the specific IEEE publication.

### 7. Common Packages
- `amsmath`, `amssymb`, `amsfonts`: Essential for math.
- `algorithmic` or `algpseudocode`: For describing algorithms.
- `array`: For better table formatting.
- `url`: For handling web addresses.
- `graphicx`: For including images.
- `cite`: For improved citation handling (e.g., [1]-[5]).

### 8. References (BibTeX)
- Maintain references in a `.bib` file (though not present in this root, it's standard practice).
- Use `\bibliographystyle{IEEEtran}` and `\bibliography{your_bib_file}`.
- Ensure all entries in the `.bib` file follow IEEE formatting requirements:
  - Titles of articles should be in sentence case.
  - Titles of journals and books should be in Title Case.
  - Always provide the full name or standard abbreviation for journals.

### 9. Error Handling and Debugging
- **Logs**: Always check the `.log` file for "Overfull \hbox" or "Underfull \hbox" warnings. These indicate text or figures that bleed into the margins.
- **Undefined References**: If you see "Reference '...' on page X undefined", re-run the build sequence (pdflatex, bibtex, pdflatex, pdflatex).
- **Syntax Errors**: LaTeX errors often cascade. Always look for and fix the *first* error reported in the log.
- **Braces**: Ensure every `\begin{...}` has a corresponding `\end{...}` and all curly braces `{}` are balanced.
- **Special Characters**: Escape special characters like `_`, `%`, `$`, `&`, `#`, `{`, `}` with a backslash (e.g., `\_`).

---

## 🤖 Agent Instructions

### Workflow
1. **Analyze**: Before editing a `.tex` file, identify the document class and loaded packages.
2. **Edit**: When adding content, ensure it matches the existing mathematical notation and citation style.
3. **Verify**: Run `pdflatex -interaction=nonstopmode` to ensure the file still compiles after changes.
4. **Refine**: Check for LaTeX-specific issues like unescaped underscores (`_`) or ampersands (`&`).

### Key Files
- `IEEEtran.cls`: The main class file. DO NOT modify.
- `bare_jrnl_new_sample4.tex`: The primary template for journal articles.
- `New_IEEEtran_how-to.tex`: Detailed instructions and examples.

### Special Commands
- `\balance`: Used on the last page to equalize column lengths.
- `\thanks`: Used in `\author` for affiliations and funding.
- `\markboth`: Used for page headers.

---

*Note: This file is intended for AI agents to understand the repository structure and maintain the quality of LaTeX documents.*
