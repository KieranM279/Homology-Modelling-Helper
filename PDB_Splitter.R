setwd("C:/Users/kiera/Documents/GitHub/Homology-Modelling-Helper/")


pdb <- 'H1_ACP_KS1.pdb'

df <- read.delim(pdb, col.names = 'lines', header = FALSE)


for (line in readLines(pdb)){
  
  aminoacid <- substring(line,23,26)
  print(as.integer(aminoacid))
  

}






