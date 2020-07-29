#_______________________________________________________________________________
#
# Author: Valerio Villani
#
# Date  : 2020-07-29
#
#
# Description
#
# This script converts .tex files into Word document (.docx).
# In order to do so, you need to place you LaTeX document's source code (.tex)
# and your references file (.bib) in the same folder.
# if you want to convert your LaTeX document into other formats, change the file
# extension, as specified within the variable 'fext'.
# Once you are happy with the script's parameters, just run the whole script:
# select all the code and press run (on Win OS: ctrl+a and then ctrl+Enter)
#
# N.B.: make sure you have pandoc installed on your machine before running this
#       script or the conversion will fail!!!
#
#_______________________________________________________________________________


# clean workspace
rm( list = ls() )


### ---> [ CHANGE FILE EXTENSION HERE ] <--- ###

# define (pandoc-compatible) output format for your to-be-exported file
fext  <- ".docx"            # <--- change extension according to your preference
                            # for instance: ".rtf"


# set working directory
msg <- "Select folder with .tex and .bib files"
setwd( choose.dir(caption = msg) )


# upload source files
my_tex <- choose.files(caption = "Select .tex file to convert"           )
my_tex <- basename(my_tex)                                    # .tex file

my_bib <- choose.files(caption = "Select .bib file to include references")
my_bib <- basename(my_bib)                                    # .bib file


# set name of to-be-exported file
fname <- paste0( tools::file_path_sans_ext(my_tex),           # get file-name
                "_EXP_",                                      # add"exported"
                gsub("-", "",                                 # clean date-time 
                     gsub(" ", "_",
                          gsub(":", "-", Sys.time()) )
                     ),                       
                fext)                                         # add extension

# convert file
convert_cmd <- paste0( "pandoc -s ", my_tex,                  # pandoc command
                       " --bibliography=", my_bib, " -o ",
                      paste0(fname) )
system(convert_cmd)                                           # convert file
