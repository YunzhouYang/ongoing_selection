getPhe4STCH_geno_DF_noAFD05_oriBW8_GG6<-function(genoDF) {
  #lineage is either HW or LW or NA
  #we use this function to assign phenotypes to all 2667 Samples.
  library(tidyverse)
  load("~/Dropbox/Ongoing_Selection/Data/ail_F2toF19_phe_commonSM_withBW4BW8_phenoteypes_for3164Samples.RData")
  ##### 
  #genoDF<-"Data/significant_regions_from_hapflk_LWS/sig_regions_lws_Chr11_from_6368091_to_7516022_KING_tree_chrpos_BGL4_genoDF.txt"
  genos<-read.table(genoDF,header = T,stringsAsFactors = F,sep = "\t") %>% select(-c(3,6:9)) %>% 
    mutate(Chr=CHROM) %>% select(1,Chr,everything())

  for (m in 6:ncol(genos)) {
    genos[,m]<-str_split_fixed(genos[,m],":",3)[,1]
  }
  

  smples<-colnames(genos)[6:ncol(genos)];smples<-gsub("X","",smples);colnames(genos)[6:ncol(genos)]<-smples
  genos<-genos %>% mutate(chr_pos=paste0(genos$Chr,"_",genos$POS)) %>% select(chr_pos,everything()) %>% select(-c(2:6))

  for (m in 2:ncol(genos)) {
    #print(m)
    #m=2
    genos[,m]<-as.character(genos[,m])
    genos[,m]<-gsub("0\\|0","0",genos[,m])
    genos[,m]<-gsub("0\\|1","1",genos[,m])
    genos[,m]<-gsub("1\\|0","1",genos[,m])
    genos[,m]<-gsub("1\\|1","2",genos[,m])
    genos[,m]<-gsub("\\.|\\.",NA,genos[,m])
  }
  ## missing is not allowed in BE analysis
  genos_nomiss_t<-genos %>% na.omit() %>% t()
  
  colnames(genos_nomiss_t)<-as.character(unlist(genos_nomiss_t[1,]))
  genos_nomiss_t<-genos_nomiss_t[-1,]
  genos_nomiss_t<-as.data.frame(genos_nomiss_t)

  ################################################################
  sm<-row.names(genos_nomiss_t)
  genos_nomiss_t$sm<-sm
  genos_nomiss_t<-genos_nomiss_t[,c(ncol(genos_nomiss_t),1:(ncol(genos_nomiss_t)-1))]
  
  ail_F2toF19_phe_commonSM<-
    ail_F2toF19_phe_commonSM[order(match(ail_F2toF19_phe_commonSM$ID,genos_nomiss_t$sm)),]
  phe_geno_3164<-cbind(ail_F2toF19_phe_commonSM,genos_nomiss_t)
  return(phe_geno_3164)
}

