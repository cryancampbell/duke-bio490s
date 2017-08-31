---
title: "hypoxia_analysis"
output: html_document
---

Data description - short version of RNAseq output from cufflinks, comparing human cells in hypoxic and normal conditions, gene families included are:
TOMM - Translocase of outer mitochondrial membrane
TIMM - Translocase of inner mitochondrial membrane
ZNF - Zinc Finger
RAS - involved in transmitting signals within cells
OR - Olfactory Receptors
PK - Protein Kinases
HK - Hexokinase
NFK - Nuclear Factor Kappa

Let's explore the data --

First, make sure you're in the right place:
```{r}
getwd()

#setwd("~/Documents/git_repos/duke-bio490s/labs/20170831_lab_intro/")

list.files()

```


Read the datafile into R and clean it
(we want to plot results from the tested genes, where the "status" column's value is "OK")
```{r}

hypoxiaRaw <- read.table("hsap_hypoxia_gene_exp_FORCLASS.diff", header = TRUE, dec = ".")

hypoxiaTested <- hypoxiaRaw[hypoxiaRaw$status == "OK",]

hypoxiaNFK <- hypoxiaTested[hypoxiaTested$gene_family == "NFK",]

```

Plot all the results, then compare to a single family of genes
```{r}
plot(hypoxiaTested$value_2,hypoxiaTested$value_1, xlim = c(0,100), ylim = c(0,100), ylab = "FKPM, Hypoxic Condition", xlab = "FKPM, Normal Condition")

plot(hypoxiaNFK$value_2,hypoxiaNFK$value_1, xlim = c(0,100), ylim = c(0,100), ylab = "FKPM, Hypoxic Condition", xlab = "FKPM, Normal Condition")
```

now, plot those results together, highlighting the specific gene family
```{r}
plot(hypoxiaTested$value_2,hypoxiaTested$value_1, xlim = c(0,100), ylim = c(0,100), col = "grey30", ylab = "FKPM, Hypoxic Condition", xlab = "FKPM, Normal Condition")
points(hypoxiaNFK$value_2,hypoxiaNFK$value_1, col = "red", pch = 19)

```