


dd <- read.csv(file="C:/Users/Ale/Dropbox/IBM/vacantes_generales.csv", header=TRUE, sep=",")
descripton <- as.data.frame(subset(dd, select=c("description")) )

f = 400 / 5

for (i in 1:f) 
{
  des_1 = toString(dd[i,7])
  des_2 = toString(dd[i+1,7])
  des_3 = toString(dd[i+2,7])
  des_4 = toString(dd[i+3,7])
  des_5 = toString(dd[i+4,7])
  
  des_1 = gsub('\n','',des_1)
  des_2 = gsub('\n','',des_2)
  des_3 = gsub('\n','',des_3)
  des_4 = gsub('\n','',des_4)
  des_5 = gsub('\n','',des_5)
  
  desc_to_save <- paste (toString(des_1), toString(des_2), toString(des_3), toString(des_4), toString(des_5),  sep = "  \n    <END>   \n    ")
  nombre = paste ("C:/Users/Ale/Dropbox/IBM/descr_" , toString(i), ".txt")
  write.table(desc_to_save, nombre, sep="\t")
  
  
  i=i+5
}





