# tex2word
Convert your \LaTeX document into Word with R and RStudio, via pandoc!
**In order for the script to work, please make sure to install [pandoc](https://pandoc.org/) on your machine.**

The script was created and tested on Windows 10 OS and converts scientific manuscripts
(paper, thesis, etc.) from *.tex* to *.docx*.
As such, it is assumed that the manuscript to convert includes references as a .bib file.
This file needs to be fed into the script too, when the appropriate windows pops out.

Other pandoc-compatible ouput formats (e.g., *.rtf*) are also accepted.

The script is simple and far from being perfect. Feel free to fork this repo and make improvements of any sorts.
For instance, I know that RMarkdown uses pandoc under the hood to produce its documents, but I was not able
to use that... Maybe there is a way the user can take advantage of the built-in functions and avoid
installing pandoc.

I hope this helps.

Best,
Valerio
