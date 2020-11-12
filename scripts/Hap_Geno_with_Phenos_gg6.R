hapgeno_with_pheno_gg6<-function(hap_out4) {
  #hap_out4<-HapGenos_LWS405053_3164AIL_Chr1_from_51447034_to_51907955hapL_out4
  library(tidyverse)
  load("~/Dropbox/Ongoing_Selection/Data/ail_F2toF19_phe_commonSM_withBW4BW8_phenoteypes_for3164Samples.RData")
  source("~/Dropbox/Ongoing_Selection/Scripts/Sample_Geno.R")
  hap_geno_df_stch<-Sample_Geno(hap_out4)
  #hap_geno_df_stch<-hap_geno_df
  hap_geno_df_stch$Sample<-gsub("X","",hap_geno_df_stch$Sample)
  hap_geno_df_stch<-hap_geno_df_stch[hap_geno_df_stch$Sample %in% ail_F2toF19_phe_commonSM$ID,]
  hap_geno_df_stch<-hap_geno_df_stch[order(match(hap_geno_df_stch$Sample,ail_F2toF19_phe_commonSM$ID)),]
  hapgeno_with_pheno<-cbind(hap_geno_df_stch,ail_F2toF19_phe_commonSM)
}