library(qqman);library(tidyverse);library(ape)
source("~/Dropbox/Ongoing_Selection/Scripts/function_extract_significant_SNPs_from_hapFLK_and_phylogenic_trees.R")
lws_chr1_35.3mb<-read.tree("Data/sig_regions_lws_Chr1_from_35287534_to_37779498_KING_tree.txt")
## chr1 51Mb
lws_chr1_51mb<-read.tree("Data/sig_regions_lws_Chr1_from_51447034_to_51907955_KING_tree.txt")
## chr1 65Mb
lws_chr1_65mb<-read.tree("Data/sig_regions_lws_Chr1_from_65207828_to_65719884_KING_tree.txt")
## chr1 82Mb
lws_chr1_82mb<-read.tree("Data/sig_regions_lws_Chr1_from_82458878_to_82662010_KING_tree.txt")
## chr1 92Mb
lws_chr1_92mb<-read.tree("Data/sig_regions_lws_Chr1_from_92770188_to_92884675_KING_tree.txt")
## chr1 133Mb
lws_chr1_133mb<-read.tree("Data/sig_regions_lws_Chr1_from_133355950_to_133986985_KING_tree.txt")
## chr1 152Mb
lws_chr1_152mb<-read.tree("Data/sig_regions_lws_Chr1_from_152971336_to_159034418_KING_tree.txt")
## chr2 6.45Mb
lws_chr2_6.45mb<-read.tree("Data/sig_regions_lws_Chr2_from_6450999_to_7235189_KING_tree.txt")
## chr2 18Mb
lws_chr2_18mb<-read.tree("Data/sig_regions_lws_Chr2_from_18439329_to_20106867_KING_tree.txt")
## chr2 106Mb
lws_chr2_106mb<-read.tree("Data/sig_regions_lws_Chr2_from_106026793_to_106043743_KING_tree.txt")
## chr2 111Mb
lws_chr2_111mb<-read.tree("Data/sig_regions_lws_Chr2_from_111593911_to_112055903_KING_tree.txt")
## chr2 122Mb
lws_chr2_122mb<-read.tree("Data/sig_regions_lws_Chr2_from_122904889_to_122926933_KING_tree.txt")
## chr2 132Mb
lws_chr2_132mb<-read.tree("Data/sig_regions_lws_Chr2_from_132166569_to_135756542_KING_tree.txt")
## chr3 19Mb
lws_chr3_19mb<-read.tree("Data/sig_regions_lws_Chr3_from_19155544_to_19904561_KING_tree.txt")
## chr3 66Mb
lws_chr3_66mb<-read.tree("Data/sig_regions_lws_Chr3_from_66436198_to_67140287_KING_tree.txt")
## chr4 64Mb
lws_chr4_64mb<-read.tree("Data/sig_regions_lws_Chr4_from_64229317_to_64237190_KING_tree.txt")
## chr5 1.1Mb
lws_chr5_1.1mb<-read.tree("Data/sig_regions_lws_Chr5_from_1163894_to_1287930_KING_tree.txt")
## chr5 10.2Mb
lws_chr5_10.2mb<-read.tree("Data/sig_regions_lws_Chr5_from_10224753_to_10639667_KING_tree.txt")
## chr5 11.6Mb
lws_chr5_11.6mb<-read.tree("Data/sig_regions_lws_Chr5_from_1163894_to_1287930_KING_tree.txt")
## chr6 8Mb
lws_chr6_8mb<-read.tree("Data/sig_regions_lws_Chr6_from_8196297_to_8397234_KING_tree.txt")
## chr7 1.5Mb
lws_chr7_1.5mb<-read.tree("Data/sig_regions_lws_Chr7_from_1579747_to_1654371_KING_tree.txt")
## chr11 6Mb
lws_chr11_6mb<-read.tree("Data/sig_regions_lws_Chr11_from_6368091_to_7516022_KING_tree.txt")
## chr12 18Mb
lws_chr12_18mb<-read.tree("Data/sig_regions_lws_Chr12_from_18565881_to_18664832_KING_tree.txt")
## chr15 6.7Mb
lws_chr15_6.7mb<-read.tree("Data/sig_regions_lws_Chr15_from_6710602_to_6937892_KING_tree.txt")
## chr8 9.1Mb
## In LW
lws_chr18_9.1mb<-read.tree("Data/sig_regions_lws_Chr18_from_9115418_to_9623135_KING_tree.txt")
## chr21 3.7Mb
lws_chr21_3.7mb<-read.tree("Data/sig_regions_lws_Chr21_from_3753353_to_4307838_KING_tree.txt")
## chr21 6.2Mb
lws_chr21_6.2mb<-read.tree("Data/sig_regions_lws_Chr21_from_6232605_to_6307412_KING_tree.txt")
## chr23 1.29Mb
lws_chr23_1mb<-read.tree("Data/sig_regions_lws_Chr23_from_1296402_to_1393433_KING_tree.txt")

#################################################
## chr1 19Mb
hws_chr1_19mb<-read.tree("Data/sig_regions_hwsr_Chr1_from_19301484_to_20276123_KING_tree.txt")
## chr1 38Mb
hws_chr1_38mb<-read.tree("Data/sig_regions_hwsr_Chr1_from_38820298_to_40341715_KING_tree.txt")
## chr1 58Mb
hws_chr1_58mb<-read.tree("Data/sig_regions_hwsr_Chr1_from_58300928_to_58834210_KING_tree.txt")
## chr1 83Mb
hws_chr1_83mb<-read.tree("Data/sig_regions_hwsr_Chr1_from_83198873_to_83263919_KING_tree.txt")
## chr1 92Mb
hws_chr1_92mb<-read.tree("Data/sig_regions_hwsr_Chr1_from_92342320_to_92865144_KING_tree.txt")
## chr1 151Mb
hws_chr1_151mb<-read.tree("Data/sig_regions_hwsr_Chr1_from_151210004_to_151293465_KING_tree.txt")
## chr1 167Mb
hws_chr1_167mb<-read.tree("Data/sig_regions_hwsr_Chr1_from_167084659_to_167665472_KING_tree.txt")
## chr2 38Mb
hws_chr2_38mb<-read.tree("Data/sig_regions_hwsr_Chr2_from_38191912_to_39573345_KING_tree.txt")
## chr2 107Mb
hws_chr2_107mb<-read.tree("Data/sig_regions_hwsr_Chr2_from_107269765_to_112174857_KING_tree.txt")
## chr3 48mb
hws_chr3_48mb<-read.tree("Data/sig_regions_hwsr_Chr3_from_48696136_to_49789661_KING_tree.txt")
## chr3 52mb
hws_chr3_52mb<-read.tree("Data/sig_regions_hwsr_Chr3_from_52263905_to_56076233_KING_tree.txt")
## chr4 42mb
hws_chr4_42mb<-read.tree("Data/sig_regions_hwsr_Chr4_from_42322650_to_43134507_KING_tree.txt")
## chr5 3.5mb
hws_chr5_3.5mb<-read.tree("Data/sig_regions_hwsr_Chr5_from_3576831_to_4816792_KING_tree.txt")
## chr5 49mb
hws_chr5_49mb<-read.tree("Data/sig_regions_hwsr_Chr5_from_49868017_to_50078891_KING_tree.txt")
## chr8 13mb
hws_chr8_13mb<-read.tree("Data/sig_regions_hwsr_Chr8_from_13207053_to_13289997_KING_tree.txt")
## chr12 14mb
hws_chr12_14mb<-read.tree("Data/sig_regions_hwsr_Chr12_from_14766574_to_14926687_KING_tree.txt")
## chr18 10mb
hws_chr18_10mb<-read.tree("Data/sig_regions_hwsr_Chr18_from_10255613_to_10299568_KING_tree.txt")
## chr24 4mb
hws_chr24_4mb<-read.tree("Data/sig_regions_hwsr_Chr24_from_4084538_to_4132053_KING_tree.txt")

extract_sig_chr_pos_lws(tree_txt = "Data/sig_regions_hwsr_Chr3_from_71838113_to_72135789_KING_tree.txt",
                        hapflk_logQ1.3 = hws405053_hapflk_logq1.3)









