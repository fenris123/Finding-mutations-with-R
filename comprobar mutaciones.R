

#######  SCRIPT TO DETECT MUTATIONS#######

####### This functions take  FASTA files on a directory and compares against another FASTA file ####

####### WARNING: package "seqinr" it's required . be sure you have it installed.#########

####### Remember to insert the variables inside of  " " ####



library (seqinr)

mutaciones <- function (modelo,directorio){
     
     
     modelsequence <- read.fasta(modelo)                               ### this read the FASTA used as model to compare, and 
     clearsequence <- as.vector(unlist(modelsequence))                 ### gives us only the sequence. 
     
     
     
     muestras <- list.files (directorio, full.names=TRUE)              ### This creates a list with all the files of our directory.
     
     
 
     
#### From here we begin the comparation between chains   
     
          
for (i in 1:length(muestras)){                                          ### This select all the files on the directory
    
     
     fastatested <- read.fasta (muestras[i])
     tested <-as.vector(unlist(fastatested))
          
     
     
          
     for (j in 1:length(clearsequence)){                               ### This compares the sequence, checking if there is mutations
               
          if (tested[j] != clearsequence[j]) {
                    
               cat ("Existe una mutacion en la posicion", paste (j), "del archivo", paste (muestras[i]), sep =" ")
               
               
            
               next15tested <- paste(tested[(j+1):(j+16)], sep="", collapse="")                   ###this check if the mutations afect to the reading frame
               
               next15clear  <- paste(clearsequence[(j+1):(j+16)], sep="", collapse="")
               
               if (next15tested != next15clear) {
                    
                    
                    message ("Es posible que la mutacion afecte a la pauta de lectura")
                    break}
                    
               else  { 
                 
                 message ("la mutacion no parece afectar a la pauta de lectura")  
            
            
            
                          
                    
                     }
               }
               
          }   
          
     }
     
}