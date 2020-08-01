#Hiram Sarabia, M.S.
#May 2020

#PROBLEM: State agency has 60+ data reports data from different laboratories in PDFs 
#that are all in different formats. Rather than capture those data by hand or request
#digital copies from individual labs, explore using R 
#to complete task either in an automated or interactive way.

#Notes on resolving issues with JAVA
#https://stackoverflow.com/questions/29522088/rjava-install-error-java-home-cannot-be-determined-from-the-registry

if(!require(tabulizer)){install.packages("tabulizer")}
if(!require(shiny)){install.packages("shiny")}
if(!require(miniUI)) install.packages("miniUI")

setwd("C:/R/Tabulizer")
x <- file.choose()
library("tabulizer")
tab <- extract_areas(x)
y <- as.numeric(length(tab))

for (i in 1:y){
df <- as.data.frame(tab[[i]])
write.csv(df, paste0((x),"_p",(i),"_",format(Sys.time(), "%d-%b-%Y %H.%M"), ".csv"))
}




