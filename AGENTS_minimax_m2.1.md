# AGENTS.md - IEEE Transactions LaTeX2e Template Repository

## Overview

This repository contains the official IEEE Transactions LaTeX2e template (`IEEEtran.cls`) and sample files for preparing papers submitted to IEEE Transactions journals. This is a **LaTeX document template repository**, not a software project.

## Build Commands (LaTeX Compilation)

There are no traditional build/test/lint commands since this is not software. However:

- **Compile LaTeX documents**: `pdflatex <filename.tex>` or use an IDE like TeXShop, VS Code with LaTeX Workshop, or Overleaf
- **Compile with bibliography**: `pdflatex <filename.tex>` then `bibtex <filename>` then `pdflatex` twice more
- **View compiled PDF**: Open the resulting `.pdf` file in any PDF viewer

## Code Style Guidelines

This section applies when editing LaTeX source files (.cls, .tex):

### General Principles

- Follow IEEE formatting guidelines exactly as specified in `New_IEEEtran_how-to.pdf`
- Maintain backward compatibility with the `IEEEtran.cls` class file
- Preserve the official IEEE template structure and class options

### LaTeX Conventions

- Use `\documentclass{IEEEtran}` for standard journal papers
- Place all package imports (`\usepackage{}`) in the preamble
- Group related packages together with clear separation
- Use `\iftex` guards when making conditional code for different TeX engines

### Naming Conventions

- Class files: `IEEEtran.cls` (lowercase, descriptive)
- Document files: `bare_jrnl_*.tex` (sample files follow IEEE naming pattern)
- Figures: Use descriptive lowercase names (`fig1.png`, `diagram_structure.pdf`)

### Error Handling

- Test any `.cls` changes with the sample `.tex` files before committing
- Verify PDF output matches IEEE submission requirements
- Check for LaTeX package dependencies and document them

### Formatting Standards

- Use 2-space indentation in LaTeX code for readability
- Limit line length to 80 characters where practical
- Add comments for non-obvious LaTeX commands
- Use semantic LaTeX commands over direct formatting

## Repository Structure

- `IEEEtran.cls` - The main LaTeX class file defining document formatting
- `New_IEEEtran_how-to.tex` - Documentation on using the template
- `bare_jrnl_new_sample4.tex` - Example IEEE journal paper
- `fig1.png` - Sample figure used in the example paper

## Contribution Guidelines

- Do not modify `IEEEtran.cls` unless fixing bugs or adding documented features
- Test changes against IEEE's official submission requirements
- Update documentation when adding new features
- Do not add compiled `.pdf` files to version control (they're in `.gitignore`)

## AI Agent Notes

When working in this repository:
- Focus on LaTeX document preparation, not software development
- Verify changes compile correctly with standard LaTeX engines (pdfTeX, XeLaTeX, LuaLaTeX)
- Consult `New_IEEEtran_how-to.pdf` for authoritative guidance
- Be aware this is a template distribution, not a development project
