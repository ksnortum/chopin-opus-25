# chopin-opus-25
LilyPond source files for Chopin's Twelve Etudes, Opus 25

## Requirements
LilyPond version 2.24.0 or higher.  It is assumed that `lilypond` is in the PATH of your system.

## Producing PDFs
* To create all etudes in a single book, `cd` into your installation directory and type:

        lilypond twelve-etudes-opus25-book.ly
        
* To create an individual PDF of one etude, type:

        lilypond etude-op25-nox-individual.ly
        
Where *nox* is no1, no2, etc.

The PDFs produced will have point-and-click info in them, which you may not want (it makes the file size much bigger).  
To avoid this use the `-dno-point-and-click` command line option, or, if you're including globals, put `\noPointAndClick` in the source files.
    
## Questions, Problems, etc.
If you have a question about these source files or how to produce a PDF, you can contact me at: **knute (at) snortum (dot) net**
