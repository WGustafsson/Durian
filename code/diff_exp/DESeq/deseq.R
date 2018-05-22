source("https://bioconductor.org/biocLite.R")
biocLite("DESeq2")

directory <- "/home/wigu2376/Durian/analyses/diff_exp/reads_counting/individual_samples"
samples = list.files(directory) 

files = vector()

for (sample in samples) {
	samp_dir = paste(directory, sample, sep="/")
	file = list.files(samp_dir)
	files = c(files)
}
print(files)

