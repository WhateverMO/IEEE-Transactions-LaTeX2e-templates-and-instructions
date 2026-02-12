# IEEE Transactions LaTeX Template Guidelines

This repository contains LaTeX templates and instructions for IEEE Transactions journals and conferences. This guide outlines the build processes, code style, and conventions for coding agents working within this codebase.

## 1. Build, Lint, and Test Commands

### Build Process
The primary build artifact is a PDF generated from the `.tex` source files.

*   **Standard Build:**
    Use `pdflatex` to compile the document. You may need to run it multiple times to resolve cross-references.
    ```bash
    pdflatex bare_jrnl_new_sample4.tex
    ```

*   **Full Build (with BibTeX):**
    If the document uses a separate `.bib` file (though the samples often use embedded bibliographies):
    ```bash
    pdflatex bare_jrnl_new_sample4.tex
    bibtex bare_jrnl_new_sample4
    pdflatex bare_jrnl_new_sample4.tex
    pdflatex bare_jrnl_new_sample4.tex
    ```

*   **Automated Build (Recommended):**
    If `latexmk` is available, it automates the dependency management and multiple runs:
    ```bash
    latexmk -pdf bare_jrnl_new_sample4.tex
    ```

### Linting
There are no enforced linter configuration files in this repository. However, you should:
*   **Check Log Output:** Always examine the output of the `pdflatex` command for "Reference `...` on page `...` undefined" warnings or "Overfull \hbox" warnings.
*   **Syntax Checking:** Ensure all environments (`\begin{...} ... \end{...}`) are properly closed.

### Testing
"Testing" in this context refers to the successful compilation of the LaTeX document without errors.
*   **Single File Test:**
    To "test" a specific change, compile the file and check for exit code 0.
    ```bash
    pdflatex -interaction=nonstopmode bare_jrnl_new_sample4.tex
    ```
*   **Visual Verification:**
    For layout changes, visual inspection of the generated `.pdf` is required (using a PDF viewer).

## 2. Code Style and Conventions

### File Structure & Imports
*   **Class:** Always start with `\documentclass[<options>]{IEEEtran}`.
    *   Common options: `journal`, `conference`, `onecolumn`, `twocolumn`.
*   **Preamble:**
    *   Load packages immediately after `\documentclass`.
    *   Common packages: `amsmath`, `amsfonts`, `graphicx`, `cite`, `algorithmic`, `array`, `url`.
    *   Avoid loading conflicting packages.

### Formatting & Syntax
*   **Indentation:** Use 2 or 4 spaces for indentation inside environments (e.g., `begin{figure}`, `begin{equation}`) to improve readability.
*   **Line Breaks:** Keep lines to a reasonable length (e.g., 80-100 characters) where possible, but do not break lines in the middle of a command or a keyword.
*   **Comments:** Use `%` for comments. 
    *   Add comments to explain complex equation derivations or non-standard formatting hacks.
    *   Use `%` at the end of lines inside macros to prevent unwanted spaces if necessary.

### Naming Conventions
*   **Files:** Use descriptive names, typically lowercase with underscores (e.g., `bare_jrnl_new.tex`).
*   **Labels:** Use semantic prefixes for `\label{}`:
    *   Figures: `\label{fig:description}`
    *   Tables: `\label{tab:description}`
    *   Equations: `\label{eq:description}`
    *   Sections: `\label{sec:description}`
    *   Algorithms: `\label{alg:description}`

### Specific IEEEtran Conventions

#### 1. Title and Authors
*   **Title:** No math or chemical formulas in the title if possible.
*   **Authors:** Use `\author{...}` block. Use `\IEEEmembership{...}` for member status.
*   **Thanks:** Use `\thanks{...}` for affiliations and manuscript dates.

#### 2. Abstract & Keywords
*   Use `\begin{abstract} ... \end{abstract}`. No math or chemical formulas.
*   Use `\begin{IEEEkeywords} ... \end{IEEEkeywords}` for index terms.

#### 3. Sectioning
*   **Drop Cap:** Use `\IEEEPARstart{F}{irst}` for the very first word of the Introduction.
*   **Headings:** Use `\section{...}`, `\subsection{...}`.
*   **No Indent:** Sections are automatically numbered.

#### 4. Equations (Mathematical Typography)
*   **Environment:** Use `\begin{equation} ... \end{equation}` for numbered single-line equations.
*   **Multi-line:** Use `\begin{align} ... \end{align}` for multi-line equations.
    *   **Do NOT use `eqnarray`.** It is obsolete and causes spacing issues.
*   **Sub-numbering:** Use `subequations` environment if needed (e.g., 1a, 1b).
*   **Matrices:** Use `bmatrix` (brackets), `pmatrix` (parentheses), `vmatrix` (pipes).
*   **Text in Math:** Use `\text{...}` for words inside math mode (e.g., `\text{if}`).
*   **Functions:** Use `\sin`, `\cos`, `\log`, etc. For custom functions, use `\text{func}` or declare an operator.

#### 5. Figures
*   **Environment:** `\begin{figure}[!t] ... \end{figure}`.
*   **Positioning:** IEEE prefers top of page `[!t]`.
*   **Caption:** `\caption{...}` goes **after** the graphic.
*   **Label:** `\label{...}` goes **inside or after** the caption.
*   **Subfigures:** Use `\usepackage{subfig}` and `\subfloat[]...`.

#### 6. Tables
*   **Environment:** `\begin{table}[!t] ... \end{table}`.
*   **Caption:** `\caption{...}` goes **before** the table content (unlike figures).
*   **Text Size:** Tables often use `\footnotesize` or `\scriptsize`? (Check specific template, `bare_jrnl` implies standard but `how-to` mentions it). Actually, `bare_jrnl` example doesn't explicitly set size, but IEEE style often defaults smaller.
*   **Lines:** Minimize vertical lines. Use `\hline` sparingy.

#### 7. References
*   **Citations:** Use `\cite{ref_key}`.
*   **Multiple:** `\cite{ref1,ref2}` (no spaces recommended).
*   **Style:** `\bibliographystyle{IEEEtran}`.
*   **Database:** `\bibliography{IEEEabrv,mybibfile}` or manual `\begin{thebibliography}`.

### Error Handling
*   **Missing Graphics:** If a graphic is missing, `pdflatex` will error. Use "draft" mode or dummy images if the file is not available.
*   **Undefined References:** Run LaTeX multiple times.
*   **Package Conflicts:** IEEEtran is sensitive. Stick to the recommended packages list in `New_IEEEtran_how-to.tex`.

### Version Control
*   **Ignore:** `.aux`, `.log`, `.out`, `.bbl`, `.blg`, `.synctex.gz`, `.fls`, `.fdb_latexmk`.
*   **Commit:** Only `.tex`, `.bib`, `.cls`, `.bst`, and image source files (e.g., `.png`, `.pdf`, `.eps`).

## Example Workflow for Agents

1.  **Read:** Analyze the existing `.tex` file to understand the document class and packages.
2.  **Edit:** Make changes using `edit` or `write` tools. Ensure `\label` and `\ref` consistency.
3.  **Compile:** Run `pdflatex <filename>` via the `bash` tool.
4.  **Verify:** Check the output log for `?` or `!` indicating errors.
5.  **Fix:** If compilation fails, analyze the line number in the log and correct the LaTeX syntax.
