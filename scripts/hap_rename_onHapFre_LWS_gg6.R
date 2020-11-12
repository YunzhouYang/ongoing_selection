rename_haps_lws_gg6<-function(HapFre,pops) {
  library(tidyverse)
  # lineage equals to c("LWS41","LWS50","LWS53") or c("HWS41","HWS50","HWS53")
  #HapFre<-HapFre_LWS405053_3164AIL_lws_Chr1_4Tag_from_51447034_to_51907955
  #pops<-c("LWS41","LWS50","LWS53")
  hapfre_lw<-HapFre %>% filter(pop %in% pops) %>% 
    mutate(hap1=as.character(hap1),newhap1=hap1)
  for (m in levels(as.factor(hapfre_lw$hap1))) {
    if (max(hapfre_lw[hapfre_lw$hap1==m,]$Hap_fre)<0.1) {
      hapfre_lw<-hapfre_lw[hapfre_lw$hap1!=m,]
    }
  }
  
  hapfre_lw_2<-hapfre_lw[order(-hapfre_lw$Hap_fre),]
  hapfre_lw_2<-hapfre_lw_2[!duplicated(hapfre_lw_2$hap1),]
  hapfre_lw_2$newhap1<-paste0("Hap",seq(1,nrow(hapfre_lw_2)))
  for (m in 1:nrow(hapfre_lw)) {
    p<-which(hapfre_lw_2$hap1==hapfre_lw$hap1[m])
    hapfre_lw$newhap1[m]<-hapfre_lw_2$newhap1[p]
  }
  return(hapfre_lw)
}

