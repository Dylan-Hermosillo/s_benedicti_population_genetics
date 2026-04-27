library(tidyverse)

setwd("MODIFY AS NEEDED")
scores <- read.csv("QualityScores_SNPVCF_LowQualSitesFiltered_DPFiltered.table", header = TRUE, sep = "\t")

#DP
df_DP <- data.frame(DP = log10(scores$DP))
png("SNPVCF_DP_Density_LowQualSitesFiltered_LowDepthSitesFiltered.png", width=1600, height=1200)
ggplot(df_DP, aes(x = DP)) + geom_density() + theme(linewidth = 20, axis.text.x = element_text(size = 30), axis.text.y = element_text(size = 30), axis.title.x = element_text(size = 30),axis.title.y = element_text(size = 30))
dev.off()

#QD
df_QD <- data.frame(QD = log10(scores$QD))
png("SNPVCF_QD_Density_LowQualSitesFiltered_LowDepthSitesFiltered.png", width=1600, height=1200)
ggplot(df_QD, aes (x = QD)) + geom_density() + theme(linewidth = 20, axis.text.x = element_text(size = 30), axis.text.y = element_text(size = 30), axis.title.x = element_text(size = 30),axis.title.y = element_text(size = 30))
dev.off()

#FS
df_FS <- data.frame(FS = log10(scores$FS))
png("SNPVCF_FS_Density_LowQualSitesFiltered_LowDepthSitesFiltered.png", width=1600, height=1200)
ggplot(df_FS, aes (x = FS)) + geom_density() + theme(linewidth = 20, axis.text.x = element_text(size = 30), axis.text.y = element_text(size = 30), axis.title.x = element_text(size = 30),axis.title.y = element_text(size = 30))
dev.off()

#MQ
df_MQ <- data.frame(MQ = log10(scores$MQ))
png("SNPVCF_MQ_Density_LowQualSitesFiltered_LowDepthSitesFiltered.png", width=1600, height=1200)
ggplot(df_MQ, aes (x = MQ)) + geom_density() + theme(linewidth = 20, axis.text.x = element_text(size = 30), axis.text.y = element_text(size = 30), axis.title.x = element_text(size = 30),axis.title.y = element_text(size = 30))
dev.off()

#MQRankSum
df_MQRankSum <- data.frame(MQRankSum = log10(scores$MQRankSum))
png("SNPVCF_MQRankSum_Density_LowQualSitesFiltered_LowDepthSitesFiltered.png", width=1600, height=1200)
ggplot(df_MQRankSum, aes (x = MQRankSum)) + geom_density() + theme(linewidth = 20, axis.text.x = element_text(size = 30), axis.text.y = element_text(size = 30), axis.title.x = element_text(size = 30),axis.title.y = element_text(size = 30))
dev.off()

#SOR
df_SOR <- data.frame(SOR = log10(scores$SOR))
png("SNPVCF_SOR_Density_LowQualSitesFiltered_LowDepthSitesFiltered.png", width=1600, height=1200)
ggplot(df_SOR, aes (x = SOR)) + geom_density() + theme(linewidth = 20, axis.text.x = element_text(size = 30), axis.text.y = element_text(size = 30), axis.title.x = element_text(size = 30),axis.title.y = element_text(size = 30))
dev.off()

#ReadPosRankSum
df_ReadPosRankSum <- data.frame(ReadPosRankSum = log10(scores$ReadPosRankSum))
png("SNPVCF_ReadPosRankSum_Density_LowQualSitesFiltered_LowDepthSitesFiltered.png", width=1600, height=1200)
ggplot(df_ReadPosRankSum, aes (x = ReadPosRankSum)) + geom_density() + theme(linewidth = 20, axis.text.x = element_text(size = 30), axis.text.y = element_text(size = 30), axis.title.x = element_text(size = 30),axis.title.y = element_text(size = 30))
dev.off()
