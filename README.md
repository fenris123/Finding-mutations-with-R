# Finding mutations with R

This script compares DNA secuences and found mutations.

WARNING: This script needs the seqinr package. You must load it manually.

WARNING:  You must write inside " " the route to the file used as a model, an the directory where you store the files to compare, 




This script it's designed to search for point mutations in a specific gene.

This script will take your FASTA file, extract the secuence, and compare it  with the secuences of all the FASTA files inside a directory to search mutations.

After finding a point mutation, the program check the next 15 nucleotides. If there is no diferences with the model, the program asume that the read pattern it's not afected and will continue.

If there is whatever difference on these 15 nucleotides, the program assumes that the reading frame could be compromised. it gives a warning and stop the analisis of this gene.

