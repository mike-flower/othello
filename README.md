# Duke Analysis Scripts

This repository contains R scripts for analysis of short and long read sequencing of repeat loci. The scripts automate preprocessing, analysis, visualisation and report generation.

## Repository Contents

- **`duke.Rmd`**:  
  An R Markdown file that generates an interactive HTML report. It includes:
  - A table of contents for easy navigation.
  - Hidden or expandable code chunks for better readability.
  - Data analysis and visualisation.

- **`run_duke.R`**:  
  An R script designed to set up the environment and execute analysis workflows. Key functionalities:
  - Clears the R environment to avoid conflicts.
  - Dynamically sets the working directory to the script's location.
  - Directs the output of an HTML report.

## Usage

### Prerequisites
Ensure you have the following installed:
- R (version 4.0 or higher recommended)
- RStudio (optional, but recommended for `.Rmd` files)
- Required R packages (install using `install.packages()`):
  - `knitr`
  - `rmarkdown`
  - Other dependencies specified in the scripts.

### Running the Scripts

1. Clone this repository:
   ```bash
   git clone https://github.com/mike-flower/othello.git
   cd duke-analysis
   ```

2. **Run the R script**:
   - Open `run_duke.R` in RStudio or an R console.
   - Execute the script to prepare the environment for analysis.


## Contributing

If you'd like to contribute to this repository:
1. Fork the repository.
2. Create a feature branch (`git checkout -b feature-branch`).
3. Commit your changes and push them to your fork.
4. Submit a pull request.

## Publication and citation

These materials were developed by Michael Flower at the UCL Institute of Neurology and UK DRI, London. Research is funded by CHDI, UK DRI, and the Movement Disorders Foundation. For more information, please contact the author at michael.flower@ucl.ac.uk.

This repository is made publicly available following the publication of research utilising these scripts. If you use these scripts in your research or publications, please ensure you cite the following:

Michael Flower, UCL Institute of Neurology and UK DRI, London. https://github.com/mike-flower/othello.git.
