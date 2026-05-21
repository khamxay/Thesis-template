Font Instructions
=================

Do not upload font files to GitHub.

Required fonts:
- Lao text: Saysettha OT
- English text: Times New Roman

Students should install Saysettha OT on their computer before compiling the final thesis. Times New Roman is commonly available on Windows and macOS. If Times New Roman is not available, the template uses TeX Gyre Termes as an English fallback.

Compile with XeLaTeX or LuaLaTeX only.
Do not use pdfLaTeX because it cannot reliably render Lao text with the required fonts.

This folder should normally contain only instruction files. If you must use local fonts for private compilation, place them here locally, but do not commit them to GitHub. The `.gitignore` file excludes:

- fonts/*.ttf
- fonts/*.otf
- fonts/*.TTF
- fonts/*.OTF

Suggested local Lao font filename:

- saysettha_ot.ttf
