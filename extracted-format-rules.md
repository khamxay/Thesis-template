# Extracted Formatting Rules

This file records the formatting rules detected from the reference documents in `../references/`.

## Sources Reviewed

- `ການພິມ.pdf` - official printing/formatting guideline. It is image-based, so rules were read visually from rendered pages.
- `ຕົວຢ່າງບົດແທ້.pdf` - compiled sample final-year project report.
- `ຕົວຢ່າງຮູບແບບບົດສໍາມະນາ.docx` - editable Word seminar template.

## Detected Rules

| Item | Rule Implemented | Evidence / Notes |
| --- | --- | --- |
| Paper size | A4, portrait | `pdfinfo` reports A4 for both PDFs. Official guideline section 5.2.1 states A4 21 cm x 29.7 cm. |
| Margins | Left 3.25 cm, top/right/bottom 2.54 cm | Official guideline section 5.3 and margin diagrams. DOCX body sections use about left 3.25 cm and 2.54 cm elsewhere. |
| Lao font | Saysettha OT | Official guideline section 5.1.1 and sample PDF embedded font list. |
| English font | Times New Roman | Official guideline section 5.1.1 and sample PDF embedded font list. |
| Body size | 12 pt | Official guideline section 5.1.2 says ordinary text is 12 normal. |
| Chapter heading | 16 pt bold, centered | Official guideline section 5.1.2 and diagrams; sample thesis uses centered chapter title pages. |
| Major section heading | 14 pt bold | Official guideline section 5.1.2: 1.1, 1.2 headings use 14 bold. |
| Subsection heading | 12 pt bold | Official guideline section 5.1.2: 1.1.1 headings use 12 bold. |
| Lists | 12 pt normal; use 1), 2), 3), then Lao/Latin lettered subitems where needed | Official guideline section 5.1.2. |
| Footnotes | 10 pt | Official guideline section 5.1.3. |
| Line spacing | Single spacing in the official guideline; 1.5 line spacing is also common for thesis readability | The official guideline section 5.2.2 says single. The template defaults to single to follow the official source; students can switch to 1.5 in `config/settings.tex` if a department requests it. |
| Paragraph indentation | About 1.5 cm first-line indent for bibliography examples; body paragraphs use academic indentation | Official bibliography diagram shows 1.5 cm hanging/indent. Body template uses 1.25 cm first-line indent as a practical LaTeX equivalent. |
| Page number | Bottom center, about 2 cm from bottom edge; front matter lowercase Roman, main matter Arabic | Official diagrams show centered bottom page number. Sample thesis uses Roman numerals for TOC/list pages and Arabic for chapters. |
| Table of contents | Lao title `ສາລະບານ`; page label `ໜ້າ`; dotted leaders | Sample thesis pages. |
| List of tables | Lao title `ສາລະບານຕາຕະລາງ` | Sample thesis pages. |
| List of figures | Lao title `ສາລະບານຮູບ` | Sample thesis pages. |
| Figure captions | `ຮູບທີ <chapter>.<number> ...`, centered below figure | Sample thesis list of figures and chapter pages. |
| Table captions | `ຕາຕະລາງທີ <chapter>.<number> ...`, above table | Sample thesis table captions. |
| Numbering | Chapters numbered; figures/tables numbered by chapter, e.g. 2.1, 3.1 | Sample thesis lists. |
| Bibliography | Numbered references `[1]`, `[2]`, etc. | Sample thesis bibliography uses numbered IEEE-like web references. |
| Cover page | Lao cover with university/faculty/program, Lao and English titles, student names, faculty, academic year; sample also includes optional logo | Sample thesis first pages and DOCX cover pages. |
| Inner/approval pages | Lao inner cover lists students and advisor; English cover also appears in sample. Approval/declaration pages are not explicit in the sample PDF but are required for thesis submission, so formal placeholders are included. |
| Chapter structure | Chapter 1 introduction, Chapter 2 theory/literature, Chapter 3 analysis/methodology/design, Chapter 4 results, Chapter 5 conclusion | Sample thesis and undergraduate thesis convention. |
| Appendix/author bio | Sample thesis ends with author biographies; template includes appendices and a place to add biographies if required. |

## Assumptions

- `ການພິມ.pdf` is treated as the highest-priority formatting source.
- When DOCX and PDF conflict on cover margins, the thesis body uses the official 3.25 cm left / 2.54 cm other margins. Cover pages use centered vertical spacing similar to the sample.
- The reference style is implemented with `biblatex` numeric IEEE-like formatting because the sample uses numbered references. If a department requires APA, change the `biblatex` style in `config/packages.tex`.
- Saysettha OT font files are not included because font redistribution rights are unclear. The template supports installed fonts and local font files placed in `fonts/`.
