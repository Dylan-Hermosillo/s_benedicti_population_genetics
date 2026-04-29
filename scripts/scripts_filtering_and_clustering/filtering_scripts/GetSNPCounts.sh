#!/bin/bash

path_to_initial_vcf="/scratch/bioconsult/zakas_project/snps.pass.vcf.gz"
path_to_vcf_lowQualSitesFiltered="/scratch/bioconsult/zakas_project/SNV_Calls_Filtered/snps.pass.lowqualfiltered_passed.vcf.gz"
path_to_vcf_lowQualSitesFiltered_lowDepthSitesFiltered="/scratch/bioconsult/zakas_project/SNV_Calls_Filtered/snps.pass.lowqualfiltered_passed_lowdepthfiltered_passed.vcf.gz"

module load bcftools/1.13

echo COUNT PRE-FILTERING
bcftools view ${path_to_initial_vcf} | grep -v "^#" | wc -l

echo COUNT POST-LOW QUALITY SITE FILTERING
bcftools view ${path_to_vcf_lowQualSitesFiltered} | grep -v "^#" | wc -l

echo COUNT POST-LOW DEPTH SITE FILTERING
bcftools view ${path_to_vcf_lowQualSitesFiltered_lowDepthSitesFiltered} | grep -v "^#" | wc -l
