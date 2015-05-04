# Case issue with `pdfpages` and XeLaTeX

## Preliminaries

Create a two-page `includeme.PDF`, by compiling `includeme.tex` and changing the file extension of the output to upper-case (`.PDF`).

## pdfLaTeX

Including both pages with
```
\includepdf[pages=-]{includeme.PDF}
```
works as expected:
```
$ pdflatex includer1.tex 
This is pdfTeX, Version 3.14159265-2.6-1.40.15 (TeX Live 2014) (preloaded format=pdflatex)
 restricted \write18 enabled.
entering extended mode
(./includer1.tex
LaTeX2e <2014/05/01>
Babel <3.9l> and hyphenation patterns for 79 languages loaded.
(/usr/local/texlive/2014/texmf-dist/tex/latex/base/article.cls
Document Class: article 2014/09/29 v1.4h Standard LaTeX document class
(/usr/local/texlive/2014/texmf-dist/tex/latex/base/size10.clo))
(/usr/local/texlive/2014/texmf-dist/tex/latex/pdfpages/pdfpages.sty
(/usr/local/texlive/2014/texmf-dist/tex/latex/base/ifthen.sty)
(/usr/local/texlive/2014/texmf-dist/tex/latex/tools/calc.sty)
(/usr/local/texlive/2014/texmf-dist/tex/latex/eso-pic/eso-pic.sty
(/usr/local/texlive/2014/texmf-dist/tex/generic/oberdiek/atbegshi.sty
(/usr/local/texlive/2014/texmf-dist/tex/generic/oberdiek/infwarerr.sty)
(/usr/local/texlive/2014/texmf-dist/tex/generic/oberdiek/ltxcmds.sty)
(/usr/local/texlive/2014/texmf-dist/tex/generic/oberdiek/ifpdf.sty))
(/usr/local/texlive/2014/texmf-dist/tex/latex/graphics/keyval.sty)
(/usr/local/texlive/2014/texmf-dist/tex/latex/xcolor/xcolor.sty
(/usr/local/texlive/2014/texmf-dist/tex/latex/latexconfig/color.cfg)
(/usr/local/texlive/2014/texmf-dist/tex/latex/pdftex-def/pdftex.def)))
(/usr/local/texlive/2014/texmf-dist/tex/latex/graphics/graphicx.sty
(/usr/local/texlive/2014/texmf-dist/tex/latex/graphics/graphics.sty
(/usr/local/texlive/2014/texmf-dist/tex/latex/graphics/trig.sty)
(/usr/local/texlive/2014/texmf-dist/tex/latex/latexconfig/graphics.cfg)))
(/usr/local/texlive/2014/texmf-dist/tex/latex/pdfpages/pppdftex.def))
No file includer1.aux.
(/usr/local/texlive/2014/texmf-dist/tex/context/base/supp-pdf.mkii
[Loading MPS to PDF converter (version 2006.09.02).]
) (/usr/local/texlive/2014/texmf-dist/tex/generic/oberdiek/pdftexcmds.sty
(/usr/local/texlive/2014/texmf-dist/tex/generic/oberdiek/ifluatex.sty))
(/usr/local/texlive/2014/texmf-dist/tex/latex/oberdiek/epstopdf-base.sty
(/usr/local/texlive/2014/texmf-dist/tex/latex/oberdiek/grfext.sty
(/usr/local/texlive/2014/texmf-dist/tex/generic/oberdiek/kvdefinekeys.sty))
(/usr/local/texlive/2014/texmf-dist/tex/latex/oberdiek/kvoptions.sty
(/usr/local/texlive/2014/texmf-dist/tex/generic/oberdiek/kvsetkeys.sty
(/usr/local/texlive/2014/texmf-dist/tex/generic/oberdiek/etexcmds.sty)))
(/usr/local/texlive/2014/texmf-dist/tex/latex/latexconfig/epstopdf-sys.cfg))
<includeme.PDF, id=1, 597.50829pt x 845.0471pt> <use includeme.PDF>
<use includeme.PDF> <includeme.PDF, id=4, page=1, 597.50829pt x 845.0471pt>
<use includeme.PDF, page 1> <use includeme.PDF, page 1>
<use includeme.PDF, page 1> <use includeme.PDF, page 1>
<use includeme.PDF, page 1> [1 <./includeme.PDF{/usr/local/texlive/2014/texmf-v
ar/fonts/map/pdftex/updmap/pdftex.map}>]
<includeme.PDF, id=21, page=2, 597.50829pt x 845.0471pt>
<use includeme.PDF, page 2> <use includeme.PDF, page 2>
<use includeme.PDF, page 2> [2 <./includeme.PDF>] (./includer1.aux) )</usr/loca
l/texlive/2014/texmf-dist/fonts/type1/public/amsfonts/cm/cmbx12.pfb></usr/local
/texlive/2014/texmf-dist/fonts/type1/public/amsfonts/cm/cmr10.pfb>
Output written on includer1.pdf (2 pages, 33214 bytes).
Transcript written on includer1.log.
```

Including both pages *individually* with
```
\includepdf[pages=1]{includeme.PDF}
\includepdf[pages=2]{includeme.PDF}
```
also works as expected:
```
$ pdflatex includer2.tex 
This is pdfTeX, Version 3.14159265-2.6-1.40.15 (TeX Live 2014) (preloaded format=pdflatex)
 restricted \write18 enabled.
entering extended mode
(./includer2.tex
LaTeX2e <2014/05/01>
Babel <3.9l> and hyphenation patterns for 79 languages loaded.
(/usr/local/texlive/2014/texmf-dist/tex/latex/base/article.cls
Document Class: article 2014/09/29 v1.4h Standard LaTeX document class
(/usr/local/texlive/2014/texmf-dist/tex/latex/base/size10.clo))
(/usr/local/texlive/2014/texmf-dist/tex/latex/pdfpages/pdfpages.sty
(/usr/local/texlive/2014/texmf-dist/tex/latex/base/ifthen.sty)
(/usr/local/texlive/2014/texmf-dist/tex/latex/tools/calc.sty)
(/usr/local/texlive/2014/texmf-dist/tex/latex/eso-pic/eso-pic.sty
(/usr/local/texlive/2014/texmf-dist/tex/generic/oberdiek/atbegshi.sty
(/usr/local/texlive/2014/texmf-dist/tex/generic/oberdiek/infwarerr.sty)
(/usr/local/texlive/2014/texmf-dist/tex/generic/oberdiek/ltxcmds.sty)
(/usr/local/texlive/2014/texmf-dist/tex/generic/oberdiek/ifpdf.sty))
(/usr/local/texlive/2014/texmf-dist/tex/latex/graphics/keyval.sty)
(/usr/local/texlive/2014/texmf-dist/tex/latex/xcolor/xcolor.sty
(/usr/local/texlive/2014/texmf-dist/tex/latex/latexconfig/color.cfg)
(/usr/local/texlive/2014/texmf-dist/tex/latex/pdftex-def/pdftex.def)))
(/usr/local/texlive/2014/texmf-dist/tex/latex/graphics/graphicx.sty
(/usr/local/texlive/2014/texmf-dist/tex/latex/graphics/graphics.sty
(/usr/local/texlive/2014/texmf-dist/tex/latex/graphics/trig.sty)
(/usr/local/texlive/2014/texmf-dist/tex/latex/latexconfig/graphics.cfg)))
(/usr/local/texlive/2014/texmf-dist/tex/latex/pdfpages/pppdftex.def))
No file includer2.aux.
(/usr/local/texlive/2014/texmf-dist/tex/context/base/supp-pdf.mkii
[Loading MPS to PDF converter (version 2006.09.02).]
) (/usr/local/texlive/2014/texmf-dist/tex/generic/oberdiek/pdftexcmds.sty
(/usr/local/texlive/2014/texmf-dist/tex/generic/oberdiek/ifluatex.sty))
(/usr/local/texlive/2014/texmf-dist/tex/latex/oberdiek/epstopdf-base.sty
(/usr/local/texlive/2014/texmf-dist/tex/latex/oberdiek/grfext.sty
(/usr/local/texlive/2014/texmf-dist/tex/generic/oberdiek/kvdefinekeys.sty))
(/usr/local/texlive/2014/texmf-dist/tex/latex/oberdiek/kvoptions.sty
(/usr/local/texlive/2014/texmf-dist/tex/generic/oberdiek/kvsetkeys.sty
(/usr/local/texlive/2014/texmf-dist/tex/generic/oberdiek/etexcmds.sty)))
(/usr/local/texlive/2014/texmf-dist/tex/latex/latexconfig/epstopdf-sys.cfg))
<includeme.PDF, id=1, 597.50829pt x 845.0471pt> <use includeme.PDF>
<use includeme.PDF> <includeme.PDF, id=4, page=1, 597.50829pt x 845.0471pt>
<use includeme.PDF, page 1> <use includeme.PDF, page 1>
<use includeme.PDF, page 1> <use includeme.PDF, page 1>
<use includeme.PDF, page 1> [1 <./includeme.PDF{/usr/local/texlive/2014/texmf-v
ar/fonts/map/pdftex/updmap/pdftex.map}>] <use includeme.PDF>
<use includeme.PDF> <includeme.PDF, id=23, page=2, 597.50829pt x 845.0471pt>
<use includeme.PDF, page 2> <use includeme.PDF, page 2>
<use includeme.PDF, page 2> <use includeme.PDF, page 2>
<use includeme.PDF, page 2> [2 <./includeme.PDF>] (./includer2.aux) )</usr/loca
l/texlive/2014/texmf-dist/fonts/type1/public/amsfonts/cm/cmbx12.pfb></usr/local
/texlive/2014/texmf-dist/fonts/type1/public/amsfonts/cm/cmr10.pfb>
Output written on includer2.pdf (2 pages, 33218 bytes).
Transcript written on includer2.log.
```

## XeLaTeX

Including both pages with
```
\includepdf[pages=-]{includeme.PDF}
```
includes **only the first page**:
```
$ xelatex includer1.tex 
This is XeTeX, Version 3.14159265-2.6-0.99991 (TeX Live 2014) (preloaded format=xelatex)
 restricted \write18 enabled.
entering extended mode
(./includer1.tex
LaTeX2e <2014/05/01>
Babel <3.9k> and hyphenation patterns for 79 languages loaded.
(/usr/local/texlive/2014/texmf-dist/tex/latex/base/article.cls
Document Class: article 2014/09/29 v1.4h Standard LaTeX document class
(/usr/local/texlive/2014/texmf-dist/tex/latex/base/size10.clo))
(/usr/local/texlive/2014/texmf-dist/tex/latex/pdfpages/pdfpages.sty
(/usr/local/texlive/2014/texmf-dist/tex/latex/base/ifthen.sty)
(/usr/local/texlive/2014/texmf-dist/tex/latex/tools/calc.sty)
(/usr/local/texlive/2014/texmf-dist/tex/latex/eso-pic/eso-pic.sty
(/usr/local/texlive/2014/texmf-dist/tex/generic/oberdiek/atbegshi.sty
(/usr/local/texlive/2014/texmf-dist/tex/generic/oberdiek/infwarerr.sty)
(/usr/local/texlive/2014/texmf-dist/tex/generic/oberdiek/ltxcmds.sty)
(/usr/local/texlive/2014/texmf-dist/tex/generic/oberdiek/ifpdf.sty))
(/usr/local/texlive/2014/texmf-dist/tex/latex/graphics/keyval.sty)
(/usr/local/texlive/2014/texmf-dist/tex/latex/xcolor/xcolor.sty
(/usr/local/texlive/2014/texmf-dist/tex/latex/latexconfig/color.cfg)
(/usr/local/texlive/2014/texmf-dist/tex/xelatex/xetex-def/xetex.def)))
(/usr/local/texlive/2014/texmf-dist/tex/latex/graphics/graphicx.sty
(/usr/local/texlive/2014/texmf-dist/tex/latex/graphics/graphics.sty
(/usr/local/texlive/2014/texmf-dist/tex/latex/graphics/trig.sty)
(/usr/local/texlive/2014/texmf-dist/tex/latex/latexconfig/graphics.cfg)))
(/usr/local/texlive/2014/texmf-dist/tex/latex/pdfpages/ppxetex.def))
No file includer1.aux.
<use  "includeme.PDF"  page1>

Package pdfpages Warning: Erroneous page width of 0.0pt is corrected.


Package pdfpages Warning: Erroneous page height of 0.0pt is corrected.

<use  "includeme.PDF"  page1> <use  "includeme.PDF"  page1>
<use  "includeme.PDF"  page1> <use  "includeme.PDF"  page1> [1]
(./includer1.aux) )
Output written on includer1.pdf (1 page).
Transcript written on includer1.log.
```

Including both pages *individually* with
```
\includepdf[pages=1]{includeme.PDF}
\includepdf[pages=2]{includeme.PDF}
```
**triggers an error**:
```
$ xelatex includer2.tex 
This is XeTeX, Version 3.14159265-2.6-0.99991 (TeX Live 2014) (preloaded format=xelatex)
 restricted \write18 enabled.
entering extended mode
(./includer2.tex
LaTeX2e <2014/05/01>
Babel <3.9k> and hyphenation patterns for 79 languages loaded.
(/usr/local/texlive/2014/texmf-dist/tex/latex/base/article.cls
Document Class: article 2014/09/29 v1.4h Standard LaTeX document class
(/usr/local/texlive/2014/texmf-dist/tex/latex/base/size10.clo))
(/usr/local/texlive/2014/texmf-dist/tex/latex/pdfpages/pdfpages.sty
(/usr/local/texlive/2014/texmf-dist/tex/latex/base/ifthen.sty)
(/usr/local/texlive/2014/texmf-dist/tex/latex/tools/calc.sty)
(/usr/local/texlive/2014/texmf-dist/tex/latex/eso-pic/eso-pic.sty
(/usr/local/texlive/2014/texmf-dist/tex/generic/oberdiek/atbegshi.sty
(/usr/local/texlive/2014/texmf-dist/tex/generic/oberdiek/infwarerr.sty)
(/usr/local/texlive/2014/texmf-dist/tex/generic/oberdiek/ltxcmds.sty)
(/usr/local/texlive/2014/texmf-dist/tex/generic/oberdiek/ifpdf.sty))
(/usr/local/texlive/2014/texmf-dist/tex/latex/graphics/keyval.sty)
(/usr/local/texlive/2014/texmf-dist/tex/latex/xcolor/xcolor.sty
(/usr/local/texlive/2014/texmf-dist/tex/latex/latexconfig/color.cfg)
(/usr/local/texlive/2014/texmf-dist/tex/xelatex/xetex-def/xetex.def)))
(/usr/local/texlive/2014/texmf-dist/tex/latex/graphics/graphicx.sty
(/usr/local/texlive/2014/texmf-dist/tex/latex/graphics/graphics.sty
(/usr/local/texlive/2014/texmf-dist/tex/latex/graphics/trig.sty)
(/usr/local/texlive/2014/texmf-dist/tex/latex/latexconfig/graphics.cfg)))
(/usr/local/texlive/2014/texmf-dist/tex/latex/pdfpages/ppxetex.def))
No file includer2.aux.
<use  "includeme.PDF"  page1>

Package pdfpages Warning: Erroneous page width of 0.0pt is corrected.


Package pdfpages Warning: Erroneous page height of 0.0pt is corrected.

<use  "includeme.PDF"  page1> <use  "includeme.PDF"  page1>
<use  "includeme.PDF"  page1> <use  "includeme.PDF"  page1> [1]

! Package pdfpages Error: page 2 of `includeme.PDF' does not exist.

See the pdfpages package documentation for explanation.
Type  H <return>  for immediate help.
 ...                                              
                                                  
l.6 \includepdf[pages=2]{includeme.PDF}
                                       
? H
You have set a wrong page number in the `pages' option. Document 
`includeme.PDF' does not have 2 pages.
? x
Output written on includer2.pdf (1 page).
Transcript written on includer2.log.
```
