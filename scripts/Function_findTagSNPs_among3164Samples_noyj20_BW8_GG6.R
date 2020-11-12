Function_TagSNP_noyj20_BW8_gg6 <-function(GenoPhe) {
  source("~/Dropbox/Ongoing_Selection/Scripts/BEFDR.R")
  #GenoPhe<-lws_chr11_6Mb_PhewithGeno_logq1.3_ongoing
mrksT<-colnames(GenoPhe)[7:ncol(GenoPhe)]
# find the id without missing values
geno_reg<-GenoPhe[,7:ncol(GenoPhe)]
for(n in 1:ncol(geno_reg)) {
  geno_reg[,n]<-as.character(geno_reg[,n])
}
  
  
tag_snps<-c()
if (length(mrksT)>100) {
  for (m in 1:as.integer((length(mrksT)/100))) {
    #m=1
    n<-m*100-99
    x<-paste0(n,"---",m*100)
    print(x)
    mrksT_sub<-mrksT[n:(m*100)]
    # construct full model including all markers within the reg
    id.full<- which(colnames(geno_reg) %in% mrksT_sub)
    geno_add <- paste("as.factor(geno_reg[,",id.full,"])",sep="",collapse="+")
    test_phe<-GenoPhe$BW8 %>% as.numeric()
    test_fx1<-GenoPhe$SEX %>% as.factor()
    test_gnr<-GenoPhe$GENERATION %>% as.factor()
    fm <- as.formula(paste("test_phe ~ test_fx1 + test_gnr +",geno_add,sep=""))
    reg.lm <- lm(fm, y=TRUE)
    summary(reg.lm)
    # min model
    fm.min<- as.formula(paste("test_phe ~ test_fx1 + test_gnr",sep=""))
    min.lm <- lm(fm.min,y=TRUE)
    
    #Perform Backward-Elimination in the original data at different adaptive FDR thresholds
    fitFDR5 <- BEFDR( minimal.lm = min.lm, maximal.lm = reg.lm, FDR.q = 0.05,mfactor=1)
    ### get out the name of kept snp
    if(sum(grepl("geno_reg",rownames(summary(fitFDR5)$coefficients)))>0){
      terms5<-rownames(summary(fitFDR5)$coefficients)[grep("geno_reg",rownames(summary(fitFDR5)$coefficients))]
      idx5<-unlist(strsplit(terms5,",|[]]"))
      name5<-colnames(geno_reg)[as.numeric(idx5[seq(2,length(idx5),3)])]
      id.in5<- name5 # this is the maker pass the FDR
      tag_snps<-c(tag_snps,id.in5)
    }
  }
  
  ######### Last few markers
  mrksT_sub<-mrksT[(m*100+1):length(mrksT)]
  id.full<- which(colnames(geno_reg) %in% mrksT_sub)
  geno_add <- paste("as.factor(geno_reg[,",id.full,"])",sep="",collapse="+")
  test_phe<-GenoPhe$BW8#phe[nna]
  test_fx1<-GenoPhe$SEX#fx1[nna]
  test_gnr<-GenoPhe$GENERATION
  fm <- as.formula(paste("test_phe ~ test_fx1 + test_gnr +",geno_add,sep=""))
  reg.lm <- lm(fm, y=TRUE)
  # min model
  
  fm.min<- as.formula(paste("test_phe ~ test_fx1 + test_gnr",sep=""))
  min.lm <- lm(fm.min,y=TRUE)
  fitFDR5 <- BEFDR( minimal.lm = min.lm, maximal.lm = reg.lm, FDR.q = 0.05,mfactor=1)
  ### get out the name of kept snp
  if(sum(grepl("geno_reg",rownames(summary(fitFDR5)$coefficients)))>0){
    terms5<-rownames(summary(fitFDR5)$coefficients)[grep("geno_reg",rownames(summary(fitFDR5)$coefficients))]
    idx5<-unlist(strsplit(terms5,",|[]]"))
    name5<-colnames(geno_reg)[as.numeric(idx5[seq(2,length(idx5),3)])]
    id.in5<- name5 # this is the maker pass the FDR
    tag_snps<-c(tag_snps,id.in5)
  }
  return(tag_snps)
} else {
  id.full<- which(colnames(geno_reg) %in% mrksT)
  geno_add <- paste("as.factor(geno_reg[,",id.full,"])",sep="",collapse="+")
  test_phe<-GenoPhe$BW8#phe[nna]
  test_fx1<-GenoPhe$SEX#fx1[nna]
  test_gnr<-GenoPhe$GENERATION
  fm <- as.formula(paste("test_phe ~ test_fx1 + test_gnr +",geno_add,sep=""))
  reg.lm <- lm(fm, y=TRUE)
  
  # min model
  fm.min<- as.formula(paste("test_phe ~ test_fx1 + test_gnr",sep=""))
  min.lm <- lm(fm.min,y=TRUE)
  
  #Perform Backward-Elimination in the original data at different adaptive FDR thresholds
  fitFDR5 <- BEFDR( minimal.lm = min.lm, maximal.lm = reg.lm, FDR.q = 0.05,mfactor=1)
  ### get out the name of kept snp
  if(sum(grepl("geno_reg",rownames(summary(fitFDR5)$coefficients)))>0){
    terms5<-rownames(summary(fitFDR5)$coefficients)[grep("geno_reg",rownames(summary(fitFDR5)$coefficients))]
    idx5<-unlist(strsplit(terms5,",|[]]"))
    name5<-colnames(geno_reg)[as.numeric(idx5[seq(2,length(idx5),3)])]
    id.in5<- name5 # this is the maker pass the FDR
    tag_snps<-id.in5
  }
  
  return(tag_snps)
}
}

