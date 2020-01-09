# Contributing

Changes to Guelph Coding Community (GCC) policy documents will be welcomed via Pull Request (PR) by members of the current club executive body.

## Document Style

For Pandoc Markdown source documents, please adhere to the following guidelines:

 - Begin each document with a YAML front-matter which defines page styling for [Pandoc](https://pandoc.org)
 - Begin a new line for each sentence, this eases the review process and has no impact on the compiled document
 - Do not litter this repository with images

### Pandoc YAML Frontmatter

It is suggested to embed a small YAML "frontmatter" (or metadata) document at the top of each Pandoc Markdown file to instruct Pandoc how to style the PDF before it is compiled via `pdflatex`.

The recommended YAML block is as follows.

```yaml
---
lang: en-CA             # Set the document locale.
title: Title            # Set the document title, as shown on the title page.
subtitle: Subtitle      # Set the document subtitle, as shown on the title page.
date: datestring        # Set the text for the date field on the title page.

documentclass: scrartcl # Specify the LaTeX document class.
numbersections: true    # Should sections be numbered?
geometry:               # LaTeX document geometry, each command in a new bullet.
 - margin=1in

urlcolor: blue          # Set the URL colour
fontsize: 11pt          # What size should the font be?

header-includes:        # Include any LaTeX packages or set up commands below.
 - \usepackage{enumitem}
 - \usepackage{amsfonts}
 - \setlist[itemize,1]{label=$\bullet$}
 - \setlist[itemize,2]{label=$\circ$}
...


You can begin the rest of the document below as regular Markdown.
```

Note that the header (`---`) and footer (`...`) delimiters are required to identify the beginning and end of the metadata block.

### Compiling Pandoc Documents

Though Pandoc supports many output formats, GCC renders its policy as PDFs.

You can compile any single document by running

```
pandoc path/to/source.md -o path/to/output.pdf
```

More compilation options and formats are explained in the [Pandoc User Guide](https://pandoc.org/MANUAL.html).


## Policy changes

Changes to policy will be welcomed on an ad-hoc basis.
To propose a policy change, please do the following:

 1. Clone this repository.
 2. Create a new branch with the following pattern `name/topic-of-change`.
    e.g. `janesmith/update-committee-list`
 3. Submit a pull request with your changes.
 4. Request review from the current President and at least two other members of the executive.

## Constitutional changes

The Guelph Coding Community Consistution is a small, defining document which should not be often changed.
If a consitutional amendment is proposed, please do the following:

 1. Clone this repository.
 2. Create a new branch with the following pattern`YYYY-mm-dd/constitutional-changes`.
 3. Submit a pull request with your changes.
 4. Request review from all current executive.
 5. Request that the President schedule an executive meeting to review the changes in person.
