# Othello

The Othello project consists of a collection of R and bash scripts designed to analyse sequencing data at repeat loci. These tools facilitate preprocessing, alignment, visualisation, and reporting for both short- and long-read sequencing data. The Duke scripts, which focus on repeat instability and visualization, are part of this larger toolkit.

## Repository Contents

### Duke Scripts

- **`duke.Rmd`**:  
  An R Markdown file that generates an interactive HTML report. It includes:
  - A table of contents for easy navigation.
  - Hidden or expandable code chunks for better readability.
  - Data analysis and visualisation.

- **`run_duke.R`**:  
  An R script designed to set up the environment and execute workflows for analysis. It:
  - Clears the R environment to avoid conflicts.
  - Dynamically sets the working directory.
  - Produces an output HTML report.
  
---

### Other Scripts in the Othello Project

- **`bianca.sh`**:  
  Prepares reference sequences for analysis. It integrates with tools such as BWA, SAMtools, Bowtie2, and Picard.

- **`brabanzio.sh`**:  
  General sequence alignment and variant calling for single-end sequencing data (e.g., long-read sequencing). It supports alignment to custom regions of interest and variant analysis.

- **`clown.sh`**:  
  Focused on paired-end sequencing data, this script handles alignment and variant calling using tools such as GATK, BWA, and SAMtools.

- **`duke.sh`**:  
  Analyses repeat instability using flanking sequences and integrates with BLAST databases. This complements `duke.Rmd` by generating aligned and cleaned datasets.

- **`iago.sh`**:  
  Focuses on repeat instability analysis using a synthetic reference genome. Supports multiple platforms and includes clean-up options.

- **`merge_fastq.R`**:  
  An R script to preprocess and merge FASTQ files. It includes functions for trimming, quality control, and formatting for downstream analysis.

- **`montano.sh`**:  
  Calculates repeat lengths using read group tagging (RGT). Useful for examining loci with length variability.

- **`pb_demultiplex.sh`**:  
  A helper script for handling PacBio native barcoding data. It prepares barcodes and runs demultiplexing pipelines.

- **`vcf_filter.sh`**:  
  Filters and annotates VCF files based on specified regions of interest. Integrates with snpEff for annotation.

---
  
## Usage

### Prerequisites
Ensure you have the following installed:
- **R** (version 4.0 or higher recommended)
- **Bash** for running shell scripts
- Required tools and packages, such as:
  - `BWA`, `SAMtools`, `GATK`, `Bowtie2`, `Picard`, `snpEff`
  - R packages: `knitr`, `rmarkdown`, and any dependencies listed in the scripts

### Running the Duke Scripts
1. Clone this repository:
   ```bash
   git clone https://github.com/mike-flower/othello.git
   cd othello
   ```

2. Execute the Duke pipeline:
   - Run `run_duke.R` in RStudio or R Console.
   - Open `duke.Rmd` in RStudio and click "Knit" to generate the report.

### Running Other Scripts
Each script has detailed usage instructions in the comments. For example:
- Run `bianca.sh` to prepare reference sequences:
  ```bash
  ./bianca.sh REF=reference.fasta
  ```

- Run `clown.sh` for paired-end sequencing alignment:
  ```bash
  ./clown.sh DIR=data_directory OUT=output_directory REF=reference_genome
  ```

---

## Publication and Citation

The Othello project, including the Duke scripts, is made publicly available following the publication of research utilizing these tools. If you use this repository in your research, please cite:

**Michael Flower, UCL Institute of Neurology and UK DRI, London. Research funded by CHDI, UK DRI, and the Movement Disorders Foundation.**

For citation details or publication references, see the project page or contact the author at michael.flower@ucl.ac.uk.

---

## Contributing

If you'd like to contribute to the Othello project:
1. Fork the repository.
2. Create a feature branch (`git checkout -b feature-branch`).
3. Commit your changes and push them to your fork.
4. Submit a pull request.

---

## License

These materials were developed by Michael Flower at the UCL Institute of Neurology and UK DRI, London. Research is funded by CHDI, UK DRI, and the Movement Disorders Foundation. For more information, please contact the author at michael.flower@ucl.ac.uk.