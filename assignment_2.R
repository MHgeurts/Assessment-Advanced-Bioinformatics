# assessment prior to the course Advanced Bioinformatics, Data mining and data integration for biomedical research
# name: Maarten Geurts
# Studentnr: 3823067

# assignment 2 

# install.packages('cgdsr') # I guess you have this package installed already ;)

library(cgdsr) 
library(ggplot2)
mycgds = CGDS("http://www.cbioportal.org/public-portal/") # load the R portal for cbioportal
thyroid_study <- getCancerStudies(mycgds)[116,1] # visual inspection revealed thca_tcga is on #116 in the first column
thyroid_caselist <- getCaseLists(mycgds,thyroid_study)[1,1] # get all the case ID's that are part of the thca_tcga
thyroid_geneticprofile <- getGeneticProfiles(mycgds, thyroid_study)[1,1] # get the genetic profiles for the thyroid study =
braf_mutations <- getProfileData(mycgds, "BRAF", thyroid_geneticprofile, thyroid_caselist) # create vector containing just the mutations in the BRAF gene
braf_mutations[is.na(braf_mutations)] <- "No mutation" # Change all NA values to value that can be used in barplot 
braf_df <- data.frame(table(braf_mutations)) #create a data frame from the braf_mutations which counts the frequency per mutation
colnames(braf_df) <- c("BRAF_mutation_type","frequency")# change the colnames for clarity 


ggplot(braf_df, aes(BRAF_mutation_type, frequency)) +   # aes has mutation_type and frequency which are colnames in the braf_df 
  geom_bar(stat="identity" ,col="blue" ,fill="lightblue") +
  geom_text(aes(label = frequency), vjust=-0.5) +
  ylim(0, 250) 
