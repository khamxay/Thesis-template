\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{thesis}[2026/05/21 Lao undergraduate thesis class]

\LoadClass[12pt,a4paper,oneside]{report}

\RequirePackage{iftex}
\ifPDFTeX
  \ClassError{thesis}{This class requires XeLaTeX or LuaLaTeX}{Compile with xelatex or lualatex. pdfLaTeX cannot render Lao fonts correctly.}
\fi

\RequirePackage{geometry}
\RequirePackage{fontspec}
\RequirePackage{setspace}
\RequirePackage{indentfirst}
\RequirePackage{titlesec}
\RequirePackage{tocloft}
\RequirePackage{caption}
\RequirePackage{chngcntr}
\RequirePackage{fancyhdr}
\RequirePackage{etoolbox}

\geometry{
  a4paper,
  left=3.25cm,
  right=2.54cm,
  top=2.54cm,
  bottom=2.54cm,
  footskip=1.2cm
}

\setlength{\parindent}{1.25cm}
\setlength{\parskip}{0pt}
\AtBeginDocument{\singlespacing}
\raggedbottom

\ifXeTeX
  \XeTeXlinebreaklocale "lo"
  \XeTeXlinebreakskip=0pt plus 1pt
\fi

\newcommand{\thesis@chaptername}{ບົດທີ}
\newcommand{\thesis@contentsname}{ສາລະບານ}
\newcommand{\thesis@listfigurename}{ສາລະບານຮູບ}
\newcommand{\thesis@listtablename}{ສາລະບານຕາຕະລາງ}
\newcommand{\thesis@bibname}{ເອກະສານອ້າງອີງ}
\newcommand{\thesis@figurename}{ຮູບທີ}
\newcommand{\thesis@tablename}{ຕາຕະລາງທີ}

\renewcommand{\contentsname}{\thesis@contentsname}
\renewcommand{\listfigurename}{\thesis@listfigurename}
\renewcommand{\listtablename}{\thesis@listtablename}
\renewcommand{\bibname}{\thesis@bibname}
\renewcommand{\chaptername}{\thesis@chaptername}
\renewcommand{\figurename}{\thesis@figurename}
\renewcommand{\tablename}{\thesis@tablename}

\titleformat{\chapter}[display]
  {\normalfont\bfseries\centering\fontsize{16pt}{20pt}\selectfont}
  {\thesis@chaptername\ \thechapter}
  {0.5em}
  {}
\titlespacing*{\chapter}{0pt}{0pt}{24pt}

\titleformat{\section}
  {\normalfont\bfseries\fontsize{14pt}{18pt}\selectfont}
  {\thesection}{0.75em}{}
\titlespacing*{\section}{0pt}{12pt}{6pt}

\titleformat{\subsection}
  {\normalfont\bfseries\fontsize{12pt}{16pt}\selectfont}
  {\thesubsection}{0.75em}{}
\titlespacing*{\subsection}{0pt}{10pt}{4pt}

\titleformat{\subsubsection}
  {\normalfont\bfseries\fontsize{12pt}{16pt}\selectfont}
  {\thesubsubsection}{0.75em}{}
\titlespacing*{\subsubsection}{0pt}{8pt}{3pt}

\counterwithin{figure}{chapter}
\counterwithin{table}{chapter}

\DeclareCaptionLabelSeparator{laospace}{\quad}
\captionsetup{
  font=normalsize,
  labelfont=normalfont,
  labelsep=laospace,
  justification=centering,
  singlelinecheck=false
}
\captionsetup[figure]{name=\thesis@figurename,position=bottom}
\captionsetup[table]{name=\thesis@tablename,position=top}

\renewcommand{\thefigure}{\thechapter.\arabic{figure}}
\renewcommand{\thetable}{\thechapter.\arabic{table}}

\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
\fancyfoot[C]{\thepage}
\pagenumbering{roman}

\newcommand{\frontmatter}{
  \cleardoublepage
  \pagenumbering{roman}
  \pagestyle{fancy}
}

\newcommand{\mainmatter}{
  \cleardoublepage
  \pagenumbering{arabic}
  \pagestyle{fancy}
}

\newcommand{\backmatter}{
  \cleardoublepage
  \pagestyle{fancy}
}

\newcommand{\thesisappendix}{
  \appendix
  \renewcommand{\chaptername}{ພາກຜະນວກ}
  \renewcommand{\thechapter}{\Alph{chapter}}
}

\renewcommand{\cfttoctitlefont}{\hfill\bfseries\fontsize{16pt}{20pt}\selectfont}
\renewcommand{\cftaftertoctitle}{\hfill}
\renewcommand{\cftloftitlefont}{\hfill\bfseries\fontsize{16pt}{20pt}\selectfont}
\renewcommand{\cftafterloftitle}{\hfill}
\renewcommand{\cftlottitlefont}{\hfill\bfseries\fontsize{16pt}{20pt}\selectfont}
\renewcommand{\cftafterlottitle}{\hfill}
\setlength{\cftbeforechapskip}{4pt}
\setlength{\cftbeforesecskip}{1pt}
\renewcommand{\cftchapfont}{\bfseries}
\renewcommand{\cftchappagefont}{\bfseries}

\newcommand{\frontmattertitle}[1]{%
  \chapter*{\centering\fontsize{16pt}{20pt}\selectfont #1}%
  \addcontentsline{toc}{chapter}{#1}%
}

\newcommand{\signatureline}[2][5cm]{%
  \begin{tabular}{c}
    \rule{#1}{0.4pt}\\
    #2
  \end{tabular}%
}

\endinput
