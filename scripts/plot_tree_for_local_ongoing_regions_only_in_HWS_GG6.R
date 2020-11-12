library(qqman);library(tidyverse);library(ape)
source("~/Dropbox/Ongoing_Selection/Scripts/figure_label_topleft.R")
## In LWS
par(mfrow=c(4,2),las=1,mar=c(4.5,3,2,2))
lws.tree=read.tree('Data/AIL_59XHWS_with_GoodallChip_28chrs_BGL4_GP07SM1in236SM_unphaseLWS405053MAF005_KING_tree.txt')
plot(lws.tree,align=T,cex = 1);axis(1,line=1,cex.axis=1.2)
title(xlab='Whole Genome Data in LWS lines',cex.lab=1.2)
fig_label_tl("A",region = "plot",pos = "topleft",cex = 2)
## chr1 35.3Mb
lws_chr1_35.3mb<-
  read.tree("Data/sig_regions_lws_Chr1_from_35287534_to_37779498_KING_tree.txt")
plot(lws_chr1_35.3mb,align=T,cex = 1);axis(1,line=1,cex.axis=1.2)
title(xlab='Chr1 35.3 ~ 37.8 Mb in LWS lines',cex.lab=1.2)
fig_label_tl("B",region = "plot",pos = "topleft",cex = 2)
## chr1 51Mb
lws_chr1_51mb<-
  read.tree("Data/sig_regions_lws_Chr1_from_51447034_to_51907955_KING_tree.txt")
plot(lws_chr1_51mb,align=T,cex = 1);axis(1,line=1,cex.axis=1.2)
title(xlab='Chr1 51.4 ~ 51.9 Mb in LWS lines',cex.lab=1.2)
fig_label_tl("C",region = "plot",pos = "topleft",cex = 2)
## chr1 65Mb
lws_chr1_65mb<-
  read.tree("Data/sig_regions_lws_Chr1_from_65207828_to_65719884_KING_tree.txt")
plot(lws_chr1_65mb,align=T,cex = 1);axis(1,line=1,cex.axis=1.2)
title(xlab='Chr1 65.2 ~ 65.7 Mb in LWS lines',cex.lab=1.2)
fig_label_tl("D",region = "plot",pos = "topleft",cex = 2)
## chr1 82Mb
lws_chr1_82mb<-
  read.tree("Data/sig_regions_lws_Chr1_from_82458878_to_82662010_KING_tree.txt")
plot(lws_chr1_82mb,align=T,cex = 1);axis(1,line=1,cex.axis=1.2)
title(xlab='Chr1 82.4 ~ 82.6 Mb in LWS lines',cex.lab=1.2)
fig_label_tl("E",region = "plot",pos = "topleft",cex = 2)
## chr1 92Mb
lws_chr1_92mb<-
  read.tree("Data/sig_regions_lws_Chr1_from_92770188_to_92884675_KING_tree.txt")
plot(lws_chr1_92mb,align=T,cex = 1);axis(1,line=1,cex.axis=1.2)
title(xlab='Chr1 92.7 ~ 92.8 Mb in LWS lines',cex.lab=1.2)
fig_label_tl("F",region = "plot",pos = "topleft",cex = 2)
## chr1 133Mb
lws_chr1_133mb<-
  read.tree("Data/sig_regions_lws_Chr1_from_133355950_to_133986985_KING_tree.txt")
plot(lws_chr1_133mb,align=T,cex = 1);axis(1,line=1,cex.axis=1.2)
title(xlab='Chr1 133.3 ~ 133.9 Mb in LWS lines',cex.lab=1.2)
fig_label_tl("G",region = "plot",pos = "topleft",cex = 2)
## chr1 152Mb
lws_chr1_152mb<-
  read.tree("Data/sig_regions_lws_Chr1_from_152971336_to_159034418_KING_tree.txt")
plot(lws_chr1_152mb,align=T,cex = 1);axis(1,line=1,cex.axis=1.2)
title(xlab='Chr1 152.9 ~ 159 Mb in LWS lines',cex.lab=1.2)
fig_label_tl("H",region = "plot",pos = "topleft",cex = 2)
## In LWS PART2
par(mfrow=c(4,2),las=1,mar=c(4.5,3,2,2))
lws.tree=read.tree('Data/AIL_59XHWS_with_GoodallChip_28chrs_BGL4_GP07SM1in236SM_unphaseLWS405053MAF005_KING_tree.txt')
plot(lws.tree,align=T,cex = 1);axis(1,line=1,cex.axis=1.2)
title(xlab='Whole Genome Data in LWS lines',cex.lab=1.2)
fig_label_tl("A",region = "plot",pos = "topleft",cex = 2)
## chr2 6.45Mb
lws_chr2_6.45mb<-
  read.tree("Data/sig_regions_lws_Chr2_from_6450999_to_7235189_KING_tree.txt")
plot(lws_chr2_6.45mb,align=T,cex = 1);axis(1,line=1,cex.axis=1.2)
title(xlab='Chr2 6.45 ~ 7.23 Mb in LWS lines',cex.lab=1.2)
fig_label_tl("B",region = "plot",pos = "topleft",cex = 2)
## chr2 18Mb
lws_chr2_18mb<-
  read.tree("Data/sig_regions_lws_Chr2_from_18439329_to_20106867_KING_tree.txt")
plot(lws_chr2_18mb,align=T,cex = 1);axis(1,line=1,cex.axis=1.2)
title(xlab='Chr2 18.4~ 20.1 Mb in LWS lines',cex.lab=1.2)
fig_label_tl("C",region = "plot",pos = "topleft",cex = 2)
## chr2 56Mb
lws_chr2_56mb<-
  read.tree("Data/sig_regions_lws_Chr2_from_56199697_to_56629143_KING_tree.txt")
plot(lws_chr2_56mb,align=T,cex = 1);axis(1,line=1,cex.axis=1.2)
title(xlab='Chr2 56.2~ 56.6 Mb in LWS lines',cex.lab=1.2)
fig_label_tl("D",region = "plot",pos = "topleft",cex = 2)
## chr2 106Mb
lws_chr2_106mb<-
  read.tree("Data/sig_regions_lws_Chr2_from_106026793_to_106043743_KING_tree.txt")
plot(lws_chr2_106mb,align=T,cex = 1);axis(1,line=1,cex.axis=1.2)
title(xlab='Chr2 106.02 ~ 106.04 Mb in LWS lines',cex.lab=1.2)
fig_label_tl("E",region = "plot",pos = "topleft",cex = 2)
## chr2 111Mb
lws_chr2_111mb<-
  read.tree("Data/sig_regions_lws_Chr2_from_111593911_to_112055903_KING_tree.txt")
plot(lws_chr2_111mb,align=T,cex = 1);axis(1,line=1,cex.axis=1.2)
title(xlab='Chr2 111.5 ~ 112.0 Mb in LWS lines',cex.lab=1.2)
fig_label_tl("F",region = "plot",pos = "topleft",cex = 2)
## chr2 122Mb
lws_chr2_122mb<-
  read.tree("Data/sig_regions_lws_Chr2_from_122904889_to_122926933_KING_tree.txt")
plot(lws_chr2_122mb,align=T,cex = 1);axis(1,line=1,cex.axis=1.2)
title(xlab='Chr2 122.9 ~ 122.93 Mb in LWS lines',cex.lab=1.2)
fig_label_tl("G",region = "plot",pos = "topleft",cex = 2)
## chr2 132Mb
lws_chr2_132mb<-
  read.tree("Data/sig_regions_lws_Chr2_from_132166569_to_135756542_KING_tree.txt")
plot(lws_chr2_132mb,align=T,cex = 1);axis(1,line=1,cex.axis=1.2)
title(xlab='Chr2 132.1 ~ 135.7 Mb in LWS lines',cex.lab=1.2)
fig_label_tl("H",region = "plot",pos = "topleft",cex = 2)
## In LWS PART3
par(mfrow=c(4,2),las=1,mar=c(4.5,3,2,2))
lws.tree=read.tree('Data/AIL_59XHWS_with_GoodallChip_28chrs_BGL4_GP07SM1in236SM_unphaseLWS405053MAF005_KING_tree.txt')
plot(lws.tree,align=T,cex = 1);axis(1,line=1,cex.axis=1.2)
title(xlab='Whole Genome Data in LWS lines',cex.lab=1.2)
fig_label_tl("A",region = "plot",pos = "topleft",cex = 2)
## chr2 144Mb
lws_chr2_144mb<-
  read.tree("Data/sig_regions_lws_Chr2_from_144565393_to_145588900_KING_tree.txt")
plot(lws_chr2_144mb,align=T,cex = 1);axis(1,line=1,cex.axis=1.2)
title(xlab='Chr2 144.5 ~ 145.5 Mb in LWS lines',cex.lab=1.2)
fig_label_tl("B",region = "plot",pos = "topleft",cex = 2)
## chr3 19Mb
lws_chr3_19mb<-
  read.tree("Data/sig_regions_lws_Chr3_from_19155544_to_19904561_KING_tree.txt")
plot(lws_chr3_19mb,align=T,cex = 1);axis(1,line=1,cex.axis=1.2)
title(xlab='Chr3 19.1 ~ 19.9 Mb in LWS lines',cex.lab=1.2)
fig_label_tl("C",region = "plot",pos = "topleft",cex = 2)
## chr3 66Mb
lws_chr3_66mb<-
  read.tree("Data/sig_regions_lws_Chr3_from_66436198_to_67140287_KING_tree.txt")
plot(lws_chr3_66mb,align=T,cex = 1);axis(1,line=1,cex.axis=1.2)
title(xlab='Chr3 66.4 ~ 67.1 Mb in LWS lines',cex.lab=1.2)
fig_label_tl("D",region = "plot",pos = "topleft",cex = 2)
## chr3 76Mb
lws_chr3_76mb<-
  read.tree("Data/sig_regions_lws_Chr3_from_76370945_to_77428429_KING_tree.txt")
plot(lws_chr3_76mb,align=T,cex = 1);axis(1,line=1,cex.axis=1.2)
title(xlab='Chr3 76.3 ~ 77.4 Mb in LWS lines',cex.lab=1.2)
fig_label_tl("E",region = "plot",pos = "topleft",cex = 2)
## chr4 17Mb
lws_chr4_17mb<-
  read.tree("Data/sig_regions_lws_Chr4_from_17796179_to_17905439_KING_tree.txt")
plot(lws_chr4_17mb,align=T,cex = 1);axis(1,line=1,cex.axis=1.2)
title(xlab='Chr4 17.79~ 17.9 Mb in LWS lines',cex.lab=1.2)
fig_label_tl("F",region = "plot",pos = "topleft",cex = 2)
## chr4 28Mb
lws_chr4_28mb<-
  read.tree("Data/sig_regions_lws_Chr4_from_28948443_to_29266937_KING_tree.txt")
plot(lws_chr4_28mb,align=T,cex = 1);axis(1,line=1,cex.axis=1.2)
title(xlab='Chr4 28.9 ~ 29.2 Mb in LWS lines',cex.lab=1.2)
fig_label_tl("G",region = "plot",pos = "topleft",cex = 2)
## chr4 64Mb
lws_chr4_64mb<-
  read.tree("Data/sig_regions_lws_Chr4_from_64229317_to_64237190_KING_tree.txt")
plot(lws_chr4_64mb,align=T,cex = 1);axis(1,line=1,cex.axis=1.2)
title(xlab='Chr4 64.2~ 64.23 Mb in LWS lines',cex.lab=1.2)
fig_label_tl("H",region = "plot",pos = "topleft",cex = 2)
## In LWS PART4
par(mfrow=c(4,2),las=1,mar=c(4.5,3,2,2))
lws.tree=read.tree('Data/AIL_59XHWS_with_GoodallChip_28chrs_BGL4_GP07SM1in236SM_unphaseLWS405053MAF005_KING_tree.txt')
plot(lws.tree,align=T,cex = 1);axis(1,line=1,cex.axis=1.2)
title(xlab='Whole Genome Data in LWS lines',cex.lab=1.2)
fig_label_tl("A",region = "plot",pos = "topleft",cex = 2)
## chr5 1.1Mb
lws_chr5_1.1mb<-
  read.tree("Data/sig_regions_lws_Chr5_from_1163894_to_1287930_KING_tree.txt")
plot(lws_chr5_1.1mb,align=T,cex = 1);axis(1,line=1,cex.axis=1.2)
title(xlab='Chr5 1.16 ~ 1.28 Mb in LWS lines',cex.lab=1.2)
fig_label_tl("B",region = "plot",pos = "topleft",cex = 2)
## chr5 10.2Mb
lws_chr5_10.2mb<-
  read.tree("Data/sig_regions_lws_Chr5_from_10224753_to_10639667_KING_tree.txt")
plot(lws_chr5_10.2mb,align=T,cex = 1);axis(1,line=1,cex.axis=1.2)
title(xlab='Chr5 10.2 ~ 10.6 Mb in LWS lines',cex.lab=1.2)
fig_label_tl("C",region = "plot",pos = "topleft",cex = 2)
## chr6 8Mb
lws_chr6_8mb<-
  read.tree("Data/sig_regions_lws_Chr6_from_8196297_to_8397234_KING_tree.txt")
plot(lws_chr6_8mb,align=T,cex = 1);axis(1,line=1,cex.axis=1.2)
title(xlab='Chr6 8.19 ~ 8.39 Mb in LWS lines',cex.lab=1.2)
fig_label_tl("D",region = "plot",pos = "topleft",cex = 2)
## chr7 1.5Mb
lws_chr7_1.5mb<-
  read.tree("Data/sig_regions_lws_Chr7_from_1579747_to_1654371_KING_tree.txt")
plot(lws_chr7_1.5mb,align=T,cex = 1);axis(1,line=1,cex.axis=1.2)
title(xlab='Chr7 1.57 ~ 1.65 Mb in LWS lines',cex.lab=1.2)
fig_label_tl("E",region = "plot",pos = "topleft",cex = 2)
## chr10 8Mb
lws_chr10_8mb<-
  read.tree("Data/sig_regions_lws_Chr10_from_8466147_to_8471652_KING_tree.txt")
plot(lws_chr10_8mb,align=T,cex = 1);axis(1,line=1,cex.axis=1.2)
title(xlab='Chr10 8.46 ~ 8.47 Mb in LWS lines',cex.lab=1.2)
fig_label_tl("F",region = "plot",pos = "topleft",cex = 2)
## chr11 6Mb
lws_chr11_6mb<-
  read.tree("Data/sig_regions_lws_Chr11_from_6368091_to_7516022_KING_tree.txt")
plot(lws_chr11_6mb,align=T,cex = 1);axis(1,line=1,cex.axis=1.2)
title(xlab='Chr11 6.36 ~ 7.52 Mb in LWS lines',cex.lab=1.2)
fig_label_tl("G",region = "plot",pos = "topleft",cex = 2)
## chr12 18Mb
lws_chr12_18mb<-
  read.tree("Data/sig_regions_lws_Chr12_from_18565881_to_18664832_KING_tree.txt")
plot(lws_chr12_18mb,align=T,cex = 1);axis(1,line=1,cex.axis=1.2)
title(xlab='Chr12 18.5 ~ 18.6 Mb in LWS lines',cex.lab=1.2)
fig_label_tl("H",region = "plot",pos = "topleft",cex = 2)
## In LWS PART5
par(mfrow=c(3,2),las=1,mar=c(4.5,3,2,2))
lws.tree=read.tree('Data/AIL_59XHWS_with_GoodallChip_28chrs_BGL4_GP07SM1in236SM_unphaseLWS405053MAF005_KING_tree.txt')
plot(lws.tree,align=T,cex = 1);axis(1,line=1,cex.axis=1.2)
title(xlab='Whole Genome Data in LWS lines',cex.lab=1.2)
fig_label_tl("A",region = "plot",pos = "topleft",cex = 2)
## chr15 6.7Mb
lws_chr15_6.7mb<-
  read.tree("Data/sig_regions_lws_Chr15_from_6710602_to_6937892_KING_tree.txt")
plot(lws_chr15_6.7mb,align=T,cex = 1);axis(1,line=1,cex.axis=1.2)
title(xlab='Chr15 6.71 ~ 6.93 Mb in LWS lines',cex.lab=1.2)
fig_label_tl("B",region = "plot",pos = "topleft",cex = 2)
## chr8 9.1Mb
lws_chr18_9.1mb<-
  read.tree("Data/sig_regions_lws_Chr18_from_9115418_to_9623135_KING_tree.txt")
plot(lws_chr18_9.1mb,align=T,cex = 1);axis(1,line=1,cex.axis=1.2)
title(xlab='Chr18 9.1 ~ 9.6 Mb in LWS lines',cex.lab=1.2)
fig_label_tl("C",region = "plot",pos = "topleft",cex = 2)
## chr21 3.7Mb
lws_chr21_3.7mb<-
  read.tree("Data/sig_regions_lws_Chr21_from_3753353_to_4307838_KING_tree.txt")
plot(lws_chr21_3.7mb,align=T,cex = 1);axis(1,line=1,cex.axis=1.2)
title(xlab='Chr21 3.75 ~ 4.3 Mb in LWS lines',cex.lab=1.2)
fig_label_tl("D",region = "plot",pos = "topleft",cex = 2)
## chr21 6.2Mb
lws_chr21_6.2mb<-
  read.tree("Data/sig_regions_lws_Chr21_from_6232605_to_6307412_KING_tree.txt")
plot(lws_chr21_6.2mb,align=T,cex = 1);axis(1,line=1,cex.axis=1.2)
title(xlab='Chr21 6.23 ~ 6.3 Mb in LWS lines',cex.lab=1.2)
fig_label_tl("E",region = "plot",pos = "topleft",cex = 2)
## chr23 1.29Mb
lws_chr23_1mb<-
  read.tree("Data/sig_regions_lws_Chr23_from_1296402_to_1393433_KING_tree.txt")
plot(lws_chr23_1mb,align=T,cex = 1);axis(1,line=1,cex.axis=1.2)
title(xlab='Chr23 1.29 ~ 1.39 Mb in LWS lines',cex.lab=1.2)
fig_label_tl("F",region = "plot",pos = "topleft",cex = 2)

#################################################
par(mfrow=c(4,2),las=1,mar=c(4.5,3,2,2))
## In HWS
hws.tree<-
  read.tree("Data/AIL_59XHWS_with_GoodallChip_28chrs_BGL4_GP07SM1in236SM_unphase_HWS405053MAF005_KING_tree.txt")
plot(hws.tree,align=T,cex = 1);axis(1,line=1,cex.axis=1.2)
title(xlab='Whole Genome Data in HW lines',cex.lab=1.2)
fig_label_tl("A",region = "plot",pos = "topleft",cex = 2)
## chr1 19Mb
hws_chr1_19mb<-
  read.tree("Data/sig_regions_hwsr_Chr1_from_19301484_to_20276123_KING_tree.txt")
plot(hws_chr1_19mb,align=T,cex = 1);axis(1,line=1,cex.axis=1.2)
title(xlab='Chr1 19.3 ~ 20.2 Mb in HW lines',cex.lab=1.2)
fig_label_tl("B",region = "plot",pos = "topleft",cex = 2)
## chr1 38Mb
hws_chr1_38mb<-
  read.tree("Data/sig_regions_hwsr_Chr1_from_38820298_to_40341715_KING_tree.txt")
plot(hws_chr1_38mb,align=T,cex = 1);axis(1,line=1,cex.axis=1.2)
title(xlab='Chr1 38.8 ~ 40.3 Mb in HW lines',cex.lab=1.2)
fig_label_tl("C",region = "plot",pos = "topleft",cex = 2)
## chr1 58Mb
hws_chr1_58mb<-
  read.tree("Data/sig_regions_hwsr_Chr1_from_58300928_to_58834210_KING_tree.txt")
plot(hws_chr1_58mb,align=T,cex = 1);axis(1,line=1,cex.axis=1.2)
title(xlab='Chr1 58.3 ~ 58.8 Mb in HW liness',cex.lab=1.2)
fig_label_tl("D",region = "plot",pos = "topleft",cex = 2)
## chr1 83Mb
hws_chr1_83mb<-
  read.tree("Data/sig_regions_hwsr_Chr1_from_83198873_to_83263919_KING_tree.txt")
plot(hws_chr1_83mb,align=T,cex = 1);axis(1,line=1,cex.axis=1.2)
title(xlab='Chr1 83.1 ~ 83.2 Mb in HW lines',cex.lab=1.2)
fig_label_tl("E",region = "plot",pos = "topleft",cex = 2)
## chr1 92Mb
hws_chr1_92mb<-
  read.tree("Data/sig_regions_hwsr_Chr1_from_92342320_to_92865144_KING_tree.txt")
plot(hws_chr1_92mb,align=T,cex = 1);axis(1,line=1,cex.axis=1.2)
title(xlab='Chr1 92.3 ~ 92.8 Mb in HW liness',cex.lab=1.2)
fig_label_tl("F",region = "plot",pos = "topleft",cex = 2)
## chr1 147Mb
hws_chr1_147mb<-
  read.tree("Data/sig_regions_hwsr_Chr1_from_147162148_to_147208262_KING_tree.txt")
plot(hws_chr1_147mb,align=T,cex = 1);axis(1,line=1,cex.axis=1.2)
title(xlab='Chr1 147.1 ~ 147.2 Mb in HW lines',cex.lab=1.2)
fig_label_tl("G",region = "plot",pos = "topleft",cex = 2)
## chr1 151Mb
hws_chr1_151mb<-
  read.tree("Data/sig_regions_hwsr_Chr1_from_151210004_to_151293465_KING_tree.txt")
plot(hws_chr1_151mb,align=T,cex = 1);axis(1,line=1,cex.axis=1.2)
title(xlab='Chr1 151.2 ~ 151.3 Mb in HW lines',cex.lab=1.2)
fig_label_tl("H",region = "plot",pos = "topleft",cex = 2)
## In HWS Part 2
par(mfrow=c(4,2),las=1,mar=c(4.5,3,2,2))
hws.tree<-read.tree("Data/AIL_59XHWS_with_GoodallChip_28chrs_BGL4_GP07SM1in236SM_unphase_HWS405053MAF005_KING_tree.txt")
plot(hws.tree,align=T,cex = 1);axis(1,line=1,cex.axis=1.2)
title(xlab='Whole Genome Data in HW lines',cex.lab=1.2)
fig_label_tl("A",region = "plot",pos = "topleft",cex = 2)
## chr1 167Mb
hws_chr1_167mb<-read.tree("Data/sig_regions_hwsr_Chr1_from_167084659_to_167665472_KING_tree.txt")
plot(hws_chr1_167mb,align=T,cex = 1);axis(1,line=1,cex.axis=1.2)
title(xlab='Chr1 167.1 ~ 167.6 Mb in HW lines',cex.lab=1.2)
fig_label_tl("B",region = "plot",pos = "topleft",cex = 2)
## chr2 38Mb
hws_chr2_38mb<-read.tree("Data/sig_regions_hwsr_Chr2_from_38191912_to_39573345_KING_tree.txt")
plot(hws_chr2_38mb,align=T,cex = 1);axis(1,line=1,cex.axis=1.2)
title(xlab='Chr2 38.19 ~ 39.57 Mb in HW lines',cex.lab=1.2)
fig_label_tl("C",region = "plot",pos = "topleft",cex = 2)
## chr2 107Mb
hws_chr2_107mb<-read.tree("Data/sig_regions_hwsr_Chr2_from_107269765_to_112174857_KING_tree.txt")
plot(hws_chr2_107mb,align=T,cex = 1);axis(1,line=1,cex.axis=1.2)
title(xlab='Chr2 107.3 ~ 112.1 Mb in HW lines',cex.lab=1.2)
fig_label_tl("D",region = "plot",pos = "topleft",cex = 2)
## chr3 48mb
hws_chr3_48mb<-read.tree("Data/sig_regions_hwsr_Chr3_from_48696136_to_49789661_KING_tree.txt")
plot(hws_chr3_48mb,align=T,cex = 1);axis(1,line=1,cex.axis=1.2)
title(xlab='Chr3 48.6 ~ 49.7 Mb in HW lines',cex.lab=1.2)
fig_label_tl("E",region = "plot",pos = "topleft",cex = 2)
## chr3 52mb
hws_chr3_52mb<-read.tree("Data/sig_regions_hwsr_Chr3_from_52263905_to_56076233_KING_tree.txt")
plot(hws_chr3_52mb,align=T,cex = 1);axis(1,line=1,cex.axis=1.2)
title(xlab='Chr3 52.2 ~ 56.1 Mb in HW lines',cex.lab=1.2)
fig_label_tl("F",region = "plot",pos = "topleft",cex = 2)
## chr3 71mb
hws_chr3_71mb<-read.tree("Data/sig_regions_hwsr_Chr3_from_71838113_to_72135789_KING_tree.txt")
plot(hws_chr3_71mb,align=T,cex = 1);axis(1,line=1,cex.axis=1.2)
title(xlab='Chr3 52.2 ~ 56.1 Mb in HW lines',cex.lab=1.2)
fig_label_tl("G",region = "plot",pos = "topleft",cex = 2)
## chr4 42mb
hws_chr4_42mb<-read.tree("Data/sig_regions_hwsr_Chr4_from_42322650_to_43134507_KING_tree.txt")
plot(hws_chr4_42mb,align=T,cex = 1);axis(1,line=1,cex.axis=1.2)
title(xlab='Chr4 42.3 ~ 43.1 Mb in HW lines',cex.lab=1.2)
fig_label_tl("H",region = "plot",pos = "topleft",cex = 2)
## In HWS Part 3
par(mfrow=c(4,2),las=1,mar=c(4.5,3,2,2))
hws.tree<-read.tree("Data/AIL_59XHWS_with_GoodallChip_28chrs_BGL4_GP07SM1in236SM_unphase_HWS405053MAF005_KING_tree.txt")
plot(hws.tree,align=T,cex = 1);axis(1,line=1,cex.axis=1.2)
title(xlab='Whole Genome Data in HW lines',cex.lab=1.2)
fig_label_tl("A",region = "plot",pos = "topleft",cex = 2)
## chr5 3.5mb
hws_chr5_3.5mb<-read.tree("Data/sig_regions_hwsr_Chr5_from_3576831_to_4816792_KING_tree.txt")
plot(hws_chr5_3.5mb,align=T,cex = 1);axis(1,line=1,cex.axis=1.2)
title(xlab='Chr5 3.57 ~ 4.81 Mb in HW lines',cex.lab=1.2)
fig_label_tl("B",region = "plot",pos = "topleft",cex = 2)
## chr5 49mb
hws_chr5_49mb<-read.tree("Data/sig_regions_hwsr_Chr5_from_49868017_to_50078891_KING_tree.txt")
plot(hws_chr5_49mb,align=T,cex = 1);axis(1,line=1,cex.axis=1.2)
title(xlab='Chr5 49.8 ~ 50.01 Mb in HW lines',cex.lab=1.2)
fig_label_tl("C",region = "plot",pos = "topleft",cex = 2)
## chr8 13mb
hws_chr8_13mb<-read.tree("Data/sig_regions_hwsr_Chr8_from_13207053_to_13289997_KING_tree.txt")
plot(hws_chr8_13mb,align=T,cex = 1);axis(1,line=1,cex.axis=1.2)
title(xlab='Chr8 13.2 ~ 13.28 Mb in HW lines',cex.lab=1.2)
fig_label_tl("D",region = "plot",pos = "topleft",cex = 2)
## chr9 16mb
hws_chr9_16mb<-read.tree("Data/sig_regions_hwsr_Chr9_from_16790357_to_17682031_KING_tree.txt")
plot(hws_chr9_16mb,align=T,cex = 1);axis(1,line=1,cex.axis=1.2)
title(xlab='Chr9 16.7 ~ 17.6 Mb in HW lines',cex.lab=1.2)
fig_label_tl("E",region = "plot",pos = "topleft",cex = 2)
## chr12 14mb
hws_chr12_14mb<-read.tree("Data/sig_regions_hwsr_Chr12_from_14766574_to_14926687_KING_tree.txt")
plot(hws_chr12_14mb,align=T,cex = 1);axis(1,line=1,cex.axis=1.2)
title(xlab='Chr12 14.7 ~ 14.9 Mb in HW lines',cex.lab=1.2)
fig_label_tl("F",region = "plot",pos = "topleft",cex = 2)
## chr18 10mb
hws_chr18_10mb<-read.tree("Data/sig_regions_hwsr_Chr18_from_10255613_to_10299568_KING_tree.txt")
plot(hws_chr18_10mb,align=T,cex = 1);axis(1,line=1,cex.axis=1.2)
title(xlab='Chr18 10.2 ~ 10.3 Mb in HW lines',cex.lab=1.2)
fig_label_tl("G",region = "plot",pos = "topleft",cex = 2)
## chr24 4mb
hws_chr24_4mb<-read.tree("Data/sig_regions_hwsr_Chr24_from_4084538_to_4132053_KING_tree.txt")
plot(hws_chr24_4mb,align=T,cex = 1);axis(1,line=1,cex.axis=1.2)
title(xlab='Chr24 4.08 ~ 4.13 Mb in HW lines',cex.lab=1.2)
fig_label_tl("H",region = "plot",pos = "topleft",cex = 2)

## In articles
par(mfrow=c(2,4),las=1,mar=c(4.5,3,2,2))
lws.tree=read.tree('Data/AIL_59XHWS_with_GoodallChip_28chrs_BGL4_GP07SM1in236SM_unphaseLWS405053MAF005_KING_tree.txt')
plot(lws.tree,align=T,cex = 1);axis(1,line=1,cex.axis=1.2)
title(xlab='Whole Genome Data in LWS lines',cex.lab=1.2)
fig_label_tl("A",region = "plot",pos = "topleft",cex = 2)
## chr1 152Mb
lws_chr1_152mb<-
  read.tree("Data/sig_regions_lws_Chr1_from_152971336_to_159034418_KING_tree.txt")
plot(lws_chr1_152mb,align=T,cex = 1);axis(1,line=1,cex.axis=1.2)
title(xlab='Chr1 152.9 ~ 159 Mb in LWS lines',cex.lab=1.2)
fig_label_tl("B",region = "plot",pos = "topleft",cex = 2)
## chr2 111Mb
lws_chr2_111mb<-
  read.tree("Data/sig_regions_lws_Chr2_from_111593911_to_112055903_KING_tree.txt")
plot(lws_chr2_111mb,align=T,cex = 1);axis(1,line=1,cex.axis=1.2)
title(xlab='Chr2 111.5 ~ 112.0 Mb in LWS lines',cex.lab=1.2)
fig_label_tl("C",region = "plot",pos = "topleft",cex = 2)
## chr5 1.1Mb
lws_chr5_1.1mb<-
  read.tree("Data/sig_regions_lws_Chr5_from_1163894_to_1287930_KING_tree.txt")
plot(lws_chr5_1.1mb,align=T,cex = 1);axis(1,line=1,cex.axis=1.2)
title(xlab='Chr5 1.16 ~ 1.28 Mb in LWS lines',cex.lab=1.2)
fig_label_tl("D",region = "plot",pos = "topleft",cex = 2)
## In HWS
hws.tree<-
  read.tree("Data/AIL_59XHWS_with_GoodallChip_28chrs_BGL4_GP07SM1in236SM_unphase_HWS405053MAF005_KING_tree.txt")
plot(hws.tree,align=T,cex = 1);axis(1,line=1,cex.axis=1.2)
title(xlab='Whole Genome Data in HWS lines',cex.lab=1.2)
fig_label_tl("E",region = "plot",pos = "topleft",cex = 2)
## chr1 167Mb
hws_chr1_167mb<-read.tree("Data/sig_regions_hwsr_Chr1_from_167084659_to_167665472_KING_tree.txt")
plot(hws_chr1_167mb,align=T,cex = 1);axis(1,line=1,cex.axis=1.2)
title(xlab='Chr1 167.1 ~ 167.6 Mb in HWS lines',cex.lab=1.2)
fig_label_tl("F",region = "plot",pos = "topleft",cex = 2)
## chr3 48mb
hws_chr3_48mb<-read.tree("Data/sig_regions_hwsr_Chr3_from_48696136_to_49789661_KING_tree.txt")
plot(hws_chr3_48mb,align=T,cex = 1);axis(1,line=1,cex.axis=1.2)
title(xlab='Chr3 48.6 ~ 49.7 Mb in HWS lines',cex.lab=1.2)
fig_label_tl("G",region = "plot",pos = "topleft",cex = 2)
## chr4 42mb
hws_chr4_42mb<-read.tree("Data/sig_regions_hwsr_Chr4_from_42322650_to_43134507_KING_tree.txt")
plot(hws_chr4_42mb,align=T,cex = 1);axis(1,line=1,cex.axis=1.2)
title(xlab='Chr4 42.3 ~ 43.1 Mb in HWS lines',cex.lab=1.2)
fig_label_tl("H",region = "plot",pos = "topleft",cex = 2)

