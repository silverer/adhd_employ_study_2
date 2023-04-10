# Study 2: Personality Tests & ADHD

## Elisabeth R. Silver, Mikki Hebl, & Fredrick L. Oswald

This code repository contains the code necessary to replicate the analyses reported by Silver et al. in their study on the implications of using personality testing in selection contexts for job applicants with ADHD. 

Some code and data files are not included in the public-facing repository. Specifically, the file `calculate_adhd_scores.R` uses Ustun and colleagues' (2017) propriety scoring algorithm for their ASRS-5 assessment of ADHD symptoms. Because it is proprietary, we do not reproduce it. 

In addition, the data files for the sample can be provided via email request to the corresponding author (Elisabeth Silver, elisabeth.silver[@]rice.edu). The data files are not included here to protect participants' privacy. 

## Code files

1. `Power analysis.Rmd` conducts a power analysis to determine the number of participants required for adequate statistical power. Raw outputs are available in the document titled `Power-analysis.docx` and formatted outputs are available in the document titled `ADHD Study 2 Power Analysis.docx`.

2. `Study 2 Cleaning and analysis.Rmd` cleans the survey data and conducts all hypothesis tests and exploratory analyses. The code produces all of the outputs reported in the paper and supplementary materials, which are stored in the `outputs/` subfolder. This script calls `calculate_adhd_scores.R`. To override issues with references to this file, we recommend creating a `calculate_adhd_scores.R` script with a function labelled `get_adhd_sums` that sums responses to the ASRS items. 

3. `calculate_adhd_scores.R` calculates participants' scores on the ADHD symptom severity screener using the propriety scoring algorithm developed by [Ustun and colleagues (2017)](https://doi.org/10.1001/jamapsychiatry.2017.0298). 

## Input files

1. `data/survey_data.csv` contains the original survey data collected from Qualtrics. This is available to researchers upon request. 

2. `data/variable_recode.csv` contains the mapping of original item names to clean item names. 

3. `data/facet_names.csv` contains information regarding the facet items and labels.

4. `style-ref.docx` helper file to format R Markdown outputs. 

## Packages

This project uses a number of packages. Please see the code files for a complete list. One package, `statstring`, was developed by the corresponding author. To download this package, use `devtools::install_github(silverer/statstring)`. 

