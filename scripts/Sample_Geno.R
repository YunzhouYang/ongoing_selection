Sample_Geno<-function(Hap_Geno){
  library(tidyverse)
  #Hap_Geno = Hap_Genos_on_197_HWSR_LWSR_and_2667_AIL_samples_chr2_from_107808532_to_107927029hapL_out4
  Hap_Geno<- Hap_Geno %>% as.data.frame() %>% separate(sample_names,c("Samples","Suffix"),sep = "\\.") 
  Hap_Geno<-Hap_Geno[,-ncol(Hap_Geno)]
  Hap_Geno$Samples<-gsub("X","",Hap_Geno$Samples)
  samples<-unique(as.character(Hap_Geno$Samples))
  hap_geno_df<-as.data.frame(array(data = NA,dim=c(length(samples),2))) %>% rename(Sample=V1,Genotypes=V2) %>% 
    mutate(Sample=samples)
  for (sm in 1:nrow(hap_geno_df)) {
    Hap_Geno_sub<-Hap_Geno[Hap_Geno$Samples==hap_geno_df$Sample[sm],]
    hap_geno_df$Genotypes[sm]<-paste0(Hap_Geno_sub$hap1[1],"/",paste0(Hap_Geno_sub$hap1[2]))
  }
  return(hap_geno_df)
}
