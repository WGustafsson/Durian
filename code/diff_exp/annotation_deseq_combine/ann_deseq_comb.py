import csv

de_genes = []
with open('data/diff_exp_aril_other_mk.csv', 'r') as de_file:
    de_reader = csv.DictReader(de_file, delimiter=',')
    for row in de_reader:
        de_dict = {}
        de_dict['gene'] = row['gene']
        de_dict['log2FoldChange'] = row['log2FoldChange']
        de_dict['pvalue'] = row['pvalue']
        de_dict['padj'] = row['padj']
        de_genes.append(de_dict)

egg_genes = []
with open('data/eggnog_annotation.tsv') as egg_file:
    egg_reader = csv.DictReader(egg_file, dialect='excel-tab')
    for row in egg_reader:
        egg_dict = {}
        egg_dict['gene'] = row['gene']
        egg_dict['best_OG|evalue|score'] = row['best_OG|evalue|score']
        egg_dict['eggNOG_HMM_model_annotation'] = row['eggNOG_HMM_model_annotation']
        egg_genes.append(egg_dict)

print(len(de_genes))
print(len(egg_genes))

saved = []
for egg_row in egg_genes:
    egg_copy = egg_row.copy()
    for de_row in de_genes:
        de_copy = de_row.copy()
        if egg_copy['gene'] == de_copy['gene'].split(':')[0]:
            egg_copy.update(de_copy)
            saved.append(egg_copy)

saved = sorted(saved, key = lambda k: k['gene'])

print(saved[0])