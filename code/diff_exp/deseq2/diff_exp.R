source("https://bioconductor.org/biocLite.R")
biocLite("DESeq2")

directory <- "/home/wiktgust/Durian/analyses/diff_exp/reads_counting/individual_samples/all"

tissues = c("mk_other", "mk_other", "mk_other", "mk_other", "mk_aril", "mt_aril", "mt_aril", "mt_aril")
files = list.files(directory)


sampleFiles <- files[grep("SRR604", files)]
sampleCondition <- tissues[grep("mk",tissues)]
sampleTable <- data.frame(sampleName = sampleFiles,
                          fileName = sampleFiles,
                          condition = sampleCondition)

library("DESeq2")
dds <- DESeqDataSetFromHTSeqCount(sampleTable = sampleTable,
                                       directory = directory,
                                       design= ~ condition)
dds

keep = rowSums((counts(dds))) >= 10
dds = dds[keep,]

dds$condition <- factor(dds$condition, levels = c("mk_other","mk_aril"))

dds = DESeq(dds)
res = results(dds)
res

ordered = res[order(res$pvalue),]
ordered

write.csv(as.data.frame(ordered),
          file="/home/wiktgust/Durian/analyses/diff_exp/deseq2/diff_exp_aril_other_mk.csv")

library("pheatmap")
df <- as.data.frame(colData(dds)[,c("condition")])
ntd <- normTransform(dds)
pheatmap(assay(vsd)[select,], cluster_rows=FALSE, show_rownames=FALSE,
         cluster_cols=FALSE, annotation_col=df)
