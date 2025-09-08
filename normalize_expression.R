#LOading the data ,Noramalize it,and saving it
# 1.Install packages if needed
if(!requireNamespace("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install(c("GEOquery", "limma"), ask = FALSE)

#2. Load libraries
library(GEOquery)
library(limma)

# Step 1: Load breast cancer dataset from GEO
gset <- getGEO("GSE15852", GSEMatrix = TRUE)
gset <- gset[[1]]   # extract first dataset
expr_data <- exprs(gset)   # expression matrix

# Step 2: Check data size
dim(expr_data)

# Step 3: Boxplot before normalization
boxplot(expr_data[,1:10], main="Before Normalization", col="pink", las=2)

# Step 4: Normalize data
norm_data <- normalizeBetweenArrays(expr_data, method="quantile")

# Step 5: Boxplot after normalization
boxplot(norm_data[,1:10], main="After Normalization", col="lightgreen", las=2)

# Step 6: Save results
write.csv(norm_data, "breast_cancer_normalized.csv")

