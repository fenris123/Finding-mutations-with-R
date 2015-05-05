

#######  SCRIPT TO DETECT MUTATIONS#######

####### This functions take  FASTA files on a directory and compares against another FASTA file ####

####### WARNING: package "seqinr" it's required  #########

####### Remember to insert the variables inside of  " " ####



mutaciones <- function (modelo,directorio){
     
     
     modelsequence <- read.fasta(modelo)                            ### this read the FASTA used as model to compare, and 
     clearsequence <- as.vector(unlist(modelsequence))                           ### gives us only the sequence. 
         
     
     
     muestras <- list.files (directorio, full.names=TRUE)           ### This creates a list with all the files of our directory.
     
     
     
     
     
          for (i in 1:length(muestras)){                              ### This select all the files on the directory
               
               
               fastatested <- read.fasta (muestras[i])
               tested <-as.vector(unlist(fastatested))
               
               
                    for (j in 1:length(clearsequence)){                ### This compares the sequence, checking if there is mutations
          
                         if (tested[j] != (clearsequence[j])) {
                             
                              cat ("Existe una mutacion en la posicion", paste (j), "del archivo", paste (muestras[i]), sep =" ")
                              
                              
                              
                              if (length(clearsequence)==length(tested)){                      ### this test if the mutation afects or not to the read fase
                                   
                                   message ("La mutacion no afecta a la fase de lectura")}
                                   
                              else {
                                   
                                   message ("La mutacion afecta a la fase de lectura")}
                                   
                              break   
                             
                              
                              
                              }
                    
                    }   
     
          }
          
}