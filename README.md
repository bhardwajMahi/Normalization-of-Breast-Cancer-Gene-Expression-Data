# Normalization-of-Breast-Cancer-Gene-Expression-Data

Normalization of Breast Cancer Gene Expression Data (GSE15852)

This repository provides an R script to download, normalize, and save gene expression data from the GEO dataset GSE15852 (Breast Cancer).
Normalization is performed using the quantile normalization method from the limma package.

📌 Features

Downloads raw microarray expression data from NCBI GEO.

Performs quantile normalization using normalizeBetweenArrays().

Generates boxplots before and after normalization.

Saves normalized expression values into a CSV file.
.

📂 Repository Structure
📂 breast-cancer-normalization
 ┣ 📂 scripts/             
 ┃ ┗ normalize_expression.R   # Main script
 ┣ install_packages.R         # Installs required packages
 ┣ README.md                  # Documentation
 ┣ .gitignore                 
 ┣ LICENSE                    # Usage license

🔧 Installation

Clone this repository:

git clone https://github.com/your-username/breast-cancer-normalization.git
cd breast-cancer-normalization


Install required R packages by running:

source("install_packages.R")

▶️ Usage

Run the normalization script in R:

source("scripts/normalize_expression.R")


This will:

Download GSE15852 dataset from GEO.

Normalize expression values.

Save results as:

breast_cancer_normalized.csv

📊 Example Outputs

Boxplot Before Normalization

Boxplot After Normalization

(Generated automatically by the script)

📚 Dataset Information

GEO ID: GSE15852

Organism: Homo sapiens

Experiment: Breast cancer tissue expression profiling

📜 License

This project is licensed under the MIT License.
You are free to use, modify, and distribute this code with proper citation.

🙌 Citation

If you use this code, please cite the original dataset:

Langerød, A., et al. (2007). Breast cancer gene expression profiles reflect underlying biological characteristics and clinical outcome. Molecular Oncology.
