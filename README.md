# NUOL Lao Undergraduate Thesis LaTeX Template

## Important

This template must be compiled with XeLaTeX.
Do not use pdfLaTeX because pdfLaTeX cannot render Lao fonts correctly and does not support `fontspec`.

If you see an error from `fontspec`, change the compiler to XeLaTeX.

## ພາສາລາວ

### ພາບລວມ

ແມ່ແບບນີ້ເປັນ LaTeX template ສຳລັບບົດໂຄງການຈົບຊັ້ນ/ບົດວິທະຍານິພົນລະດັບປະລິນຍາຕີ ທີ່ຮອງຮັບພາສາລາວ ແລະ ພາສາອັງກິດ. ການຈັດຮູບແບບອີງຕາມເອກະສານອ້າງອີງໃນໂຟນເດີ reference ໂດຍສະເພາະ `ການພິມ.pdf`.

### ຄຸນສົມບັດ

- ຮອງຮັບ XeLaTeX/LuaLaTeX.
- ພາສາລາວໃຊ້ Saysettha OT.
- ພາສາອັງກິດໃຊ້ Times New Roman.
- ມີໜ້າປົກ, ໜ້າຮັບຮອງ, ຄຳປະກາດ, ບົດຄັດຫຍໍ້ລາວ/ອັງກິດ.
- ມີໂຄງສ້າງບົດ 1 ຫາ 5.
- ມີຕົວຢ່າງຮູບ, ຕາຕະລາງ, ເອກະສານອ້າງອີງ ແລະ ພາກຜະນວກ.
- ມີຄູ່ມືພາສາລາວສຳລັບນັກສຶກສາ.
- ມີ sample PDF: `sample-output.pdf`.

### ໂຄງສ້າງໂຟນເດີ

```text
thesis-template/
|-- main.tex
|-- thesis.cls
|-- sample-output.pdf
|-- config/
|-- frontmatter/
|-- chapters/
|-- references/
|-- appendices/
|-- figures/
|-- tables/
|-- fonts/
|-- guide/
|-- README.md
|-- Makefile
|-- LICENSE
|-- CONTRIBUTING.md
|-- CHANGELOG.md
|-- STUDENT-CHECKLIST.md
|-- RELEASE-CHECKLIST.md
`-- extracted-format-rules.md
```

### ສິ່ງທີ່ຕ້ອງມີ

- XeLaTeX ຫຼື LuaLaTeX.
- Biber.
- Saysettha OT font.
- Times New Roman font.
- Make, ຖ້າຕ້ອງການໃຊ້ `make pdf`.

### ຟອນ

ຕິດຕັ້ງ Saysettha OT ໃນຄອມພິວເຕີ. ຖ້າບໍ່ມີ Times New Roman, template ຈະໃຊ້ TeX Gyre Termes ເປັນ fallback ສຳລັບພາສາອັງກິດ. ຫ້າມ upload ໄຟລ໌ຟອນທີ່ມີລິຂະສິດຂຶ້ນ GitHub.

### ການ Compile

Important: This template must be compiled with XeLaTeX. Do not use pdfLaTeX because pdfLaTeX cannot render Lao fonts correctly and does not support `fontspec`.

ໃຊ້ Makefile:

```bash
make pdf
make guide
make all
```

ຖ້າບໍ່ມີ Make:

```bash
xelatex main.tex
biber main
xelatex main.tex
xelatex main.tex
```

ຖ້າຕ້ອງການສ້າງ PDF ຕົວຢ່າງໂດຍກົງເປັນ `sample-output.pdf`, ໃຊ້:

```bash
xelatex -jobname=sample-output main.tex
biber sample-output
xelatex -jobname=sample-output main.tex
xelatex -jobname=sample-output main.tex
```

### ການໃຊ້ກັບ Overleaf

Upload ໂຟນເດີນີ້ເຂົ້າ Overleaf, ໄປທີ່ Menu, ແລ້ວເລືອກ Compiler ເປັນ XeLaTeX. ຖ້າ Overleaf ບໍ່ມີ Saysettha OT, ນັກສຶກສາຕ້ອງ upload ຟອນເຂົ້າ `fonts/` ສຳລັບການໃຊ້ສ່ວນຕົວ ແຕ່ບໍ່ຄວນ commit ໄຟລ໌ຟອນເຂົ້າ GitHub.

How to set XeLaTeX in Overleaf:

- Open the project in Overleaf.
- Click Menu.
- Go to Settings.
- Change Compiler from pdfLaTeX to XeLaTeX.
- Click Recompile.

### ນັກສຶກສາຄວນແກ້ຫຍັງ

- ແກ້ຊື່ບົດ, ຊື່ນັກສຶກສາ, ລະຫັດ, ອາຈານຜູ້ນຳພາ ໃນ `config/settings.tex`.
- ແກ້ໜ້າປົກ ແລະ front matter ໃນ `frontmatter/`.
- ຂຽນບົດໃນ `chapters/`.
- ໃສ່ຮູບໃນ `figures/`.
- ໃສ່ຕາຕະລາງໃນ `tables/`.
- ເພີ່ມ references ໃນ `references/references.bib`.
- ເພີ່ມ appendices ໃນ `appendices/`.

### ການໃຊ້ GitHub

```bash
git clone https://github.com/YOUR-USERNAME/nuol-thesis-latex-template.git
cd nuol-thesis-latex-template
make pdf
```

ໃຫ້ປ່ຽນ `YOUR-USERNAME` ເປັນ GitHub username ຈິງຂອງເຈົ້າຂອງ repository.

### ແກ້ບັນຫາທີ່ພົບເລື້ອຍ

- Font not found: ຕິດຕັ້ງ Saysettha OT.
- ພາສາລາວບໍ່ສະແດງຖືກ: ໃຊ້ XeLaTeX ຫຼື LuaLaTeX, ຫ້າມໃຊ້ pdfLaTeX.
- Bibliography ບໍ່ຂຶ້ນ: ຮັນ `biber main` ແລ້ວຮັນ XeLaTeX ອີກສອງຄັ້ງ.
- Image not found: ກວດຊື່ໄຟລ໌ ແລະ path.

### Student Submission Checklist

ເບິ່ງ [STUDENT-CHECKLIST.md](STUDENT-CHECKLIST.md).

## English

### Project Overview

This is a GitHub-ready LaTeX undergraduate thesis template for Lao and English academic writing. It is designed for XeLaTeX/LuaLaTeX and follows the extracted formatting rules documented in `extracted-format-rules.md`.

### Features

- Lao and English mixed text support.
- Saysettha OT for Lao text.
- Times New Roman for English text.
- A4 layout with thesis margins.
- Cover page, approval page, declaration, Lao abstract, English abstract, acknowledgements.
- Chapter 1 to Chapter 5 structure.
- Numbered references with Biber.
- Figures, tables, appendices, and student guide examples.
- GitHub-ready files: `.gitignore`, `LICENSE`, `CONTRIBUTING.md`, `CHANGELOG.md`, and checklists.

### Requirements

- XeLaTeX or LuaLaTeX.
- Biber.
- Saysettha OT installed locally.
- Times New Roman installed locally, or TeX Gyre Termes fallback.
- Make is optional but convenient.

### Compile With XeLaTeX

Important: This template must be compiled with XeLaTeX. Do not use pdfLaTeX because pdfLaTeX cannot render Lao fonts correctly and does not support `fontspec`.

```bash
xelatex main.tex
biber main
xelatex main.tex
xelatex main.tex
```

To build the repository sample output directly:

```bash
xelatex -jobname=sample-output main.tex
biber sample-output
xelatex -jobname=sample-output main.tex
xelatex -jobname=sample-output main.tex
```

### Compile With Makefile

```bash
make pdf
make guide
make all
make clean
```

`make pdf` builds `sample-output.pdf` directly. `make clean` removes temporary LaTeX build files but keeps `sample-output.pdf`.

### Use With Overleaf

Upload the repository to Overleaf and set the compiler to XeLaTeX. Upload Saysettha OT into `fonts/` only for private compilation if Overleaf cannot find it. Do not commit font files to GitHub.

How to set XeLaTeX in Overleaf:

- Open the project in Overleaf.
- Click Menu.
- Go to Settings.
- Change Compiler from pdfLaTeX to XeLaTeX.
- Click Recompile.

### Editing Guide

- Thesis information: edit `config/settings.tex`.
- Front matter: edit files in `frontmatter/`.
- Chapters: edit files in `chapters/`.
- Figures: place images in `figures/` and use `figure` with `\caption` and `\label`.
- Tables: edit or add files in `tables/`.
- References: add BibTeX entries to `references/references.bib` and cite with `\cite{key}`.
- Appendices: add files to `appendices/` and include them from `main.tex`.

### GitHub Usage

```bash
git clone https://github.com/YOUR-USERNAME/nuol-thesis-latex-template.git
cd nuol-thesis-latex-template
make pdf
```

Replace `YOUR-USERNAME` with the real GitHub username or organization name.

### Troubleshooting

- Problem: `fontspec package requires either XeTeX or LuaTeX`
  Solution: Change compiler to XeLaTeX.
- `font not found`: install Saysettha OT or check `fonts/README-fonts.txt`.
- Lao text is not rendered correctly: compile with XeLaTeX or LuaLaTeX, not pdfLaTeX.
- Bibliography is missing: run Biber between XeLaTeX passes.
- Figure not found: check filename, extension, and folder path.
- PDF is outdated: compile at least twice after changing headings, figures, tables, or citations.

### Formatting Notes

The official guideline document is treated as the primary source. The template uses A4 paper, left margin 3.25 cm, other margins 2.54 cm, 12 pt body text, 16 pt bold chapter titles, 14 pt section headings, 12 pt subsection headings, and numbered references.

### License

The LaTeX source and template files are released under the MIT License. External fonts such as Saysettha OT and Times New Roman are not included and are not covered by this license.
