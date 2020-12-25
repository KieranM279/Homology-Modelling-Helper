# Homology Modelling Helper
 Contains different scripts that may help you durng your Homology modelling project

# AliFinder

As Modeller does not read the unobserved residues, they must be removed prior to the alignment step of the project.

The script AliFinder.R first downloads a dataset directly from PDB HTTP services (https://www.rcsb.org/pages/download/http). The FASTA formatted dataset contains three pieces of information about every entry in the Protein Data Bank: the amino acid sequence; the secondary structure (DSSP); and the residues in each sequence which have not been experimentally observed.

The function AliFinder() is then initiated. This takes your PDB ID and Chain of interest and isolates the sequences, removing the residues which have not been experimentally observed. The sequence is then output as a FASTA formatted file in the current working directory.
#### Usage ####
```R
AliFinder('PDB_ID:CHAIN')
```
e.g. AliFinder('3ERR:A')
#### Prerequisites ####
```R
library('seqinr')
```
# PySplitter.py

Used for splitting up large PDB files. Useful when working with large mutli-domian proteins. You can define and name with regions you want in the dictionary SE_Dict. An example is included (along with a PDB file), for 6 erythronolide B synthase (DEBS).

ATM it only works with protein dimers.
