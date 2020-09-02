# Homology Modelling Helper
 Contains different scripts that may help you durng your Homology modelling project

# AliFinder

As Modeller does not read the unobserved residues, they must be removed prior to the alignment step of the project.

The script AliFinder.R first downloads a dataset directly from PDB HTTP services (https://www.rcsb.org/pages/download/http). The FASTA formated datatset contains three pices of information about every entry in the Protein Data Bank: the amino acid sequence; the secondary structure (DSSP); and the residues in each sequence which have not been experimentally observed.

The function AliFinder() is then initiated. This takes your PDB ID and Chain of interest, then isolates the sequences, and then removes the residues which have not been experimentally observed. The sequence is then output as a FASTA formatted file in the current working directory.
#### Usage ####

AliFinder('PDB_ID:CHAIN')

formatted as above. all caps.
