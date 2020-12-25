#install.packages("seqinr")
library('seqinr')

#### Dowloads the required file ####
temp <- tempfile(pattern = "", fileext = ".txt.gz")

# Downloads the required sequence data from PDB's HTTP services
print('Downloading PDB sequence dataset. This may take a minute or so')
download.file("https://cdn.rcsb.org/etl/kabschSander/ss_dis.txt.gz", temp)

print('Reading file to R may also take some time')
ss_dis <- read.fasta(temp)
unlink(temp)


##### Intitates the function ####

AliFinder <- function(ID_CHAIN) {

  # Adds ID to the global environment
  ID_CHAIN <<- ID_CHAIN

  # Turns the ID and Chain into the required IDs for the dataset
  seqID <- paste(ID_CHAIN, "sequence", sep = ":")
  disID <- paste(ID_CHAIN, "disorder", sep = ":")

  # Isolates the sequence anf the sequence of disordered residues
  sequence <- ss_dis[[seqID]]
  disorder <- ss_dis[[disID]]

  # Creates an index of which residues to remove from the amino acid sequence
  del_boy <- which(disorder == "x")

  # Replaces the disordered resides with NA
  for (i in 1:length(del_boy)) {

    sequence[del_boy[i]] <- NA

  }

  #Removes the NA's all at once
  pdb_seq <<- toupper(na.omit(sequence))

  # Puts the Sequence for the alignment in your current working directory
  # in the FASTA format.
  wd <- getwd()
  write.fasta(pdb_seq, ID_CHAIN, file.out = paste0(wd,'/pdb_out.fasta'))

}
