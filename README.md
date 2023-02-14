# chopin-opus-25
LilyPond source files for Chopin's Twelve Etudes, Opus 25.  We are nearly but not completely finished.

## Requirements
LilyPond version 2.24.1 or higher.  It is assumed that `lilypond` is in the PATH of your system.

## Producing PDFs or other outoputs
* To create all etudes in a single book, `cd` into your installation directory and type:

        lilypond twelve-etudes-opus25-book.ly
        
* To create an individual PDF of one etude, type:

        lilypond etude-op25-nox-individual.ly
        
Where *nox* is no1, no2, etc.

The PDFs produced will have point-and-click info in them, which you may not want (it makes the file size much bigger).  To avoid this use the `-dno-point-and-click` command line option, or, if you're including globals, put `\noPointAndClick` in the source files.  This is explained in detail [here](https://lilypond.org/doc/v2.24/Documentation/usage/command_002dline-usage).
    
## Questions, Problems, etc.
If you have a question about these source files or how to produce a PDF, you can contact me at: **knute (at) snortum (dot) net**
