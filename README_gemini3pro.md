# IEEE Transactions LaTeX Templates

This repository contains the IEEE Transactions LaTeX class (`IEEEtran.cls`) and associated template files. These files are used for formatting papers for submission to IEEE Transactions journals and conferences.

## Contents

The repository includes the following files:

*   **`IEEEtran.cls`**: The core IEEE Transactions LaTeX class file (Version 1.8b).
*   **`bare_jrnl_new_sample4.tex`**: A sample article file demonstrating how to use the class.
*   **`bare_jrnl_new_sample4.pdf`**: The compiled PDF version of the sample article.
*   **`New_IEEEtran_how-to.tex`**: Updated instructions and documentation for using the class.
*   **`New_IEEEtran_how-to.pdf`**: The compiled PDF version of the instructions.
*   **`fig1.png`**: A sample figure used in the documentation/template.

## Prerequisites

To use these templates, you need a LaTeX distribution installed on your system. Common distributions include:

*   **TeX Live** (Linux/Windows)
*   **MacTeX** (macOS)
*   **MiKTeX** (Windows)

Ensure you have the standard packages installed, including `amsmath`, `graphicx`, `cite`, and others commonly used in scientific writing.

## Getting Started

1.  **Clone or Download** this repository.
2.  **Locate the Sample**: Open `bare_jrnl_new_sample4.tex` in your LaTeX editor.
3.  **Edit**: Modify the content of the sample file to insert your own text, equations, and figures.
4.  **Compile**: Build the file to generate your PDF.

## Building (Compiling)

To "build" your paper, you need to compile the `.tex` file using a LaTeX compiler. The recommended compiler is `pdflatex`.

### Using the Command Line

Run the following command in your terminal:

```bash
pdflatex bare_jrnl_new_sample4.tex
```

If you are using BibTeX for references (optional, as the sample currently uses manual references), you would run:

```bash
pdflatex bare_jrnl_new_sample4.tex
bibtex bare_jrnl_new_sample4
pdflatex bare_jrnl_new_sample4.tex
pdflatex bare_jrnl_new_sample4.tex
```

### Using a LaTeX Editor

Most editors (Overleaf, TeXShop, TeXstudio, VS Code with LaTeX Workshop) have a "Build" or "Compile" button that automates this process.

## Linting

While there are no strict "linting" rules built into this project, you can ensure code quality using standard LaTeX tools:

*   **chktex**: Checks for common typographic errors.
    ```bash
    chktex bare_jrnl_new_sample4.tex
    ```
*   **lacheck**: A simple syntax checker.
    ```bash
    lacheck bare_jrnl_new_sample4.tex
    ```

## Testing

"Testing" in this context involves verifying that your document compiles without errors and looks correct.

1.  **Check the Log**: After compiling, check the `.log` file (e.g., `bare_jrnl_new_sample4.log`) for errors or warnings.
2.  **Visual Inspection**: Open the generated `.pdf` file and ensure formatting (columns, figures, equations) appears as expected.
3.  **Specific Checks**:
    *   Verify references are correctly linked.
    *   Check that figures are not floating to unexpected locations (use `\begin{figure}[!t]` or `\begin{figure}[!b]` to control placement).
    *   Ensure the two-column layout is maintained (except for the abstract/title if applicable).

## Official Documentation

For detailed instructions on using the `IEEEtran` class, refer to the included documentation:

*   **`New_IEEEtran_how-to.pdf`**

Additional resources can be found at:
*   [CTAN: IEEEtran](https://www.ctan.org/pkg/ieeetran)
*   [IEEE Author Center](https://journals.ieeeauthorcenter.ieee.org/create-your-ieee-journal-article/create-the-text-of-your-article/ieee-standard-latex-templates/)
