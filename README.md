# ongoing_selection
Raw data and scripts used in the ongoing selection project
## How to build phylogenetic trees
Once we got results about selective sweeps on genomes among populations in each lineage, significant regions above thresholds would be selected:
  * The SNPs were exracted from imputed XWS41/50/53 by commands: *vcftools --gzvcf xx.vcf.gz --positions xx.txt --recode --stdout|bgzip > xws_Chrx_from_xbp_to_ybp.vcf.gz*.
  * Use output vcf files (**transformed to ped/map formats**) as inputs of hapFLK and do: *hapflk --file xxx -p xxx_KING*
  * intall and load R package named *ape* and plot the trees (ended with *tree.txt*).
  * the script name was here *./ongoing_selection/scripts/plot_tree_for_local_ongoing_regions_only_in_HWS_GG6.R*.