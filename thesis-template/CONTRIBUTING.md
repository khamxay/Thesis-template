# Contributing / ການຮ່ວມພັດທະນາ

Thank you for helping improve this Lao/English thesis template. ຂອບໃຈທີ່ຊ່ວຍປັບປຸງແມ່ແບບນີ້.

## Report Problems / ລາຍງານບັນຫາ

Open a GitHub issue and include:

- What you were trying to do.
- Your operating system and LaTeX distribution.
- The compiler used, preferably XeLaTeX.
- The error message or screenshot.
- A small example if possible.

ເມື່ອລາຍງານບັນຫາ ກະລຸນາລະບຸວ່າທ່ານກຳລັງເຮັດຫຍັງ, ໃຊ້ລະບົບໃດ, ໃຊ້ compiler ໃດ, ແລະ ມີຂໍ້ຄວາມ error ຫຍັງ.

## Suggest Improvements / ສະເໜີການປັບປຸງ

Suggestions are welcome for formatting, Lao wording, English wording, examples, documentation, and Overleaf support. Please keep student-facing instructions simple and clear.

ຖ້າສະເໜີການປັບປຸງ ກະລຸນາໃຫ້ຄຳອະທິບາຍສັ້ນໆ ແລະ ຊັດເຈນ ໂດຍຄິດເຖິງນັກສຶກສາທີ່ອາດຈະເລີ່ມໃຊ້ LaTeX ເປັນຄັ້ງທຳອິດ.

## Pull Requests / ການສົ່ງ Pull Request

Before submitting a pull request:

- Keep LaTeX code clean and readable.
- Keep formatting logic in `thesis.cls` or `config/`.
- Keep thesis content examples in `frontmatter/`, `chapters/`, `tables/`, and `appendices/`.
- Test compilation with XeLaTeX before submitting.
- Do not upload copyrighted font files.
- Do not modify the original reference documents.
- Update README or guide files when behavior changes.

ກ່ອນສົ່ງ Pull Request ຄວນຄອມໄພລ໌ກວດກາກ່ອນ ແລະ ບໍ່ຄວນໃສ່ໄຟລ໌ຟອນທີ່ມີລິຂະສິດເຂົ້າ repository.

## Test Compilation / ທົດສອບການຄອມໄພລ໌

Run:

```bash
make pdf
make guide
```

If `make` is not installed, run:

```bash
xelatex main.tex
biber main
xelatex main.tex
xelatex main.tex
```

For the Lao guide:

```bash
cd guide
xelatex latex-user-guide-lo.tex
xelatex latex-user-guide-lo.tex
```
