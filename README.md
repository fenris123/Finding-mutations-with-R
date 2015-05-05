# Finding-mutations-with-RT

This script compares DNA secuences and found mutations.

WARNING: This script needs the seqinr package. You must load it manually.

WARNING:  You must write inside " " the route to the file used as a model, an the directory where you store the files to compare, 




This script it's designed to search for point mutations in a specific gene.

This script will take your FASTA file, extract the secuence, and compare it  with the secuences of all the FASTA files inside a directory to search mutations.




Actually, the program will stop inthe first mutation of every FASTA file. It evaluates if this mutation affect or not the reading frame

To this it compares if the length (number of nucleotides) it's the same or not. 

If there it's a mutation and the lengths are diferent, we asume that these diference it's originated by the mutation.

