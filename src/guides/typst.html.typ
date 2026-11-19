#title[Writing a thesis with Typst]

Typst lets you write chapters in plain-text source files and generate a PDF as you work. Use the #link("https://typst.app/")[Typst web app] or follow the #link("https://github.com/typst/typst#installation")[official installation instructions] for local editing. The #link("https://typst.app/docs/tutorial/")[official tutorial] covers basic syntax and formatting.

= Organize chapters

Keep a main file that applies your thesis formatting and includes the chapters in reading order. For example, create each file referenced below and put the corresponding chapter heading inside it.

```typ
#outline()
#include "chapters/introduction.typ"
#include "chapters/methods.typ"
#include "chapters/results.typ"
#include "chapters/conclusion.typ"
```

= Manage references and figures

Store references in a BibLaTeX or Hayagriva file and load it with #link("https://typst.app/docs/reference/model/bibliography/")[`bibliography`]. Use citation keys as you write. Give figures labels and use #link("https://typst.app/docs/reference/model/ref/")[cross-references] so their numbering can follow the document.

= Export a draft

Download the PDF from the web app, or run the following from your project folder if you work locally. Replace `thesis.typ` with the name of your main file.

```sh
typst compile thesis.typ
```

Use the submission review on the guide home page when you check your final draft.
