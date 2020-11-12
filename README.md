# ongoing_selection
Raw data and scripts used in the ongoing selection project
## Imputation for XWS41/50/53
We imputed low-density chip genotypes for XWS41/50/53 to a higher whole-genome wide levels which increased the number of markers from 26K to more than 1 million. The data we used were:

  * Genotypes by beadchips for XWS41/50/53 have been published ([Mats *et al*, 2013](https://www.g3journal.org/content/3/12/2305.short)).
  * Re-sequencing data was published by [Yanjun&Thibaut *et al* (2017)](https://gsejournal.biomedcentral.com/articles/10.1186/s12711-019-0487-1).
  * The software we used was BEAGLE4 as it always gave us the genotyping posterior for (1) estimate the imputation quality, (2) filtration. Command lines were like:
    - Impute: **java -jar /path/to/beagle.r1399.jar gt=reseqXWS41_chipXWS415053.vcf.gz window=50 overlap=20 out=reseqXWS41_chipXWS415053_BGL4**. The software could be downloaded from [BEAGLE4 website](https://faculty.washington.edu/browning/beagle/b4_0.html).
    - Filter: we had an easy python script to filter those bad imputed genotypes based on genotyping quality.**extract_sites_with_gp07sm1_177chip59AILsamples.py**. **$1** is the vcf file, **$2** was the positions to be excluded.
  * **Optional:** As you already have both ~30X resequed and imputed XWS41 genotypes,you can compare the imputation accuracy for the same individual in a different way:
    - change imputed genotypes of "0|1, 1|0, 0|0 and 1|1" to "1, 1, 0 and 2",
    - change ~30X resequenced genotypes of "0/1,  0|0 and 1|1" to "1, 0 and 2",
    - which means heterozygotes were changed to 1, ref/ref and alt/alt homozygotes were changed to 0 and 2, repectively.
    - using R command table(impute_column,resequed_column) could give us the number of markers which were (or were not) consistent between different markers. We have no R script to do this and you can write this command lines by yourselves.

## How to impute low coverage sequencing data (LCS)
There were several ways to do the imputation for the low coverage sequencing data and we chose the [STITCH software](https://github.com/rwdavies/STITCH). They have published their results in [*Nature Genetics*](https://www.nature.com/articles/ng.3594). The main steps were:
  * **00 ** instructions for installing STITCH was on their website. I installed R version on Linux server.
  * **01 **align your fastq files to GG6, transform the sam files to bam files
  * **02 **add read groups to and remove duplicates from your bam files.
  * **03 ** 10 XWS41 samples (5 from LWS41 and 5 from HWS41) were downsampled to ~0.4X (**on chr28**) as control samples to compare the concordance by using different K values. K was the most important parameters for STITCH and should be tested.
  * **04 **K>9 and number of generations (n) set to 19 would gave very stable results.
  * **05**We then imputed all chromosomes by setting K=10 and n=19 and R script was */scripts/STITCH_Rcpp.R*.
  * **06**Tips for using STITCH:
    - Do imputation one chromosome one by one.
    - assign enough memories to your job. I assigned 256Gb memory when i imputed chr1 (~200Mb for 3160 samples).
    - This was also related (positively i guess) to your sequencing depth.
    - Too large chromosomes should be split to segments and they can be merge together afterwards.

## How to do sweep analysis by using hapFLK software
The protocols were very detailed at their website [hapFLK website](https://forge-dga.jouy.inra.fr/projects/hapflk) and [published paper](https://www.genetics.org/content/193/3/929.abstract).

## How to build phylogenetic trees and Do association studies
Once we got results about selective sweeps on genomes among populations in each lineage, significant regions above thresholds would be selected and many things could be done:
  * **01 **Plot Phylogenetic trees:
    - The SNPs were exracted from imputed XWS41/50/53 by commands: *vcftools --gzvcf xx.vcf.gz --positions xx.txt --recode --stdout|bgzip > xws_Chrx_from_xbp_to_ybp.vcf.gz*.
    - Use output vcf files (**transformed to ped/map formats**) as inputs of hapFLK and do: *hapflk --file xxx -p xxx_KING*
    - intall and load R package named *ape* and plot the trees (ended with *tree.txt*).
    - the script name was here *./ongoing_selection/scripts/plot_tree_for_local_ongoing_regions_only_in_HWS_GG6.R*.
  
  * **02 **Select tag SNPs which were related to 56-day body weight independently.
    - BE method allowsd no missing genotypes and we have use BEAGLE4 to imputed the vcf files (you got from last step) before doing next step.
    - Use **getPhe4STCH_geno_DF_nofilterAFD05_add_GG6_3164Samples.R** to merge phenotype data with genotypes within the genomic regions detected in last two steps.
    - Use BE method stored in **Function_findTagSNPs_among3164Samples_noyj20_BW8_GG6.R** to find tag SNPs.
    
    
    
    
    
    
