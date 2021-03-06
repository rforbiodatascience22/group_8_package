Group8
================

<!-- README.md is generated from README.Rmd. Please edit that file -->

``` r
library(Group8)
```

Link to github:
<https://github.com/rforbiodatascience22/group_8_package>

Description of the package: The package is used to describe the central
dogma of biology. A conjugtion function of package is that it can
translate a DNA sequence into peptide sequence using a codon translation
table. In total the package contain five functions.

Description of the functions: Function 1 (clean_dna) removes every
character that is not a nucleotide (A,C,G or T) from raw DNA sequence in
FASTA format and deletes new lines. The input (raw_seq) is the FASTA
document. Everything that are not the 4 nucleotides is removed and a new
sequence is stored in clean_seq. Additionally, it removes all the blank
spaces and new lines and create a vector called dna_seq that will be the
output.

To use function 1: clean_DNA \<- clean_dna(DNA_sequence)

Function 2 (tforu) substitutes all “T”s of a given DNA sequence for
“U”s.

To use function 2: RNA \<- tforu(clean_DNA)

Function 3 (finds_codons) splits a string containing an DNA/RNA sequence
into the individual codons.

To use function 3: codons \<- finds_codons(RNA)

Function 4 (prot_synthesis): translates a vector with codons into a
protein sequence

To use function 4: protein \<- prot_syntesis(codons)

Function 5: from a protein sequence displays residue frequencies (as a
plot): Loads the following packages and functions as dependencies:
stringr: str_split, str_count (by “stringr::str_split”) ggplot2: ggplot,
geom_col, theme_bw, aes (by “ggplot2::ggplot”) magrittr: %\>% (by
“@importFrom magrittr %\>%”)

To use function 5: plot \<- prot_stats(protein)

This package can be used to individual several functions described
above. But when using the packages function in conjunction. A DNA fasta
sequence can be turned into a plot displaying residue frequencies.

Discussion about dependencies: It is important to limited the
dependencies that your package have due to people using the package has
download others package to make it work.

Also the author of the package is not in control of changes of dependent
packages. Sometimes dependencies can not be avoided like. An exemplar of
this is when the dependencies package is is doing something which would
be to time required to write yourself like ggplot.

It is possible to import an package in two ways: ‘package::function()’
and ‘@importFrom package function’. The main difference between these to
is that ‘package::function()’ is more explicit telling which package and
function is applied.
