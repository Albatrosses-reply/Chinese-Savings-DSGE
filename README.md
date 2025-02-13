# Chinese Household Savings DSGE

This repository contains the code used for a DSGE-based analysis of how declining household savings in China affect fiscal and monetary policy effectiveness. It includes MATLAB code for simulation and Bayesian estimation (Dynare) as well as a Python (IPython Notebook) script for SVAR analysis.

--------------------------------
## TABLE OF CONTENTS
1. Project Overview
2. Folder & File Structure
3. Environment Setup & How to Run
4. License

--------------------------------
## 1. PROJECT OVERVIEW

Goal:
- Investigate the macroeconomic effects of declining household savings in China on fiscal and monetary policy.

Approach:
- **DSGE Model (MATLAB + Dynare)**: Two-Agent New Keynesian (TANK) framework, capturing Rule-of-Thumb households and Ricardian households.
- **Bayesian Estimation**: Parameter estimation using quarterly data.
- **SVAR Analysis (Python)**: Validate DSGE findings and analyze policy impacts using actual time-series data.

--------------------------------
## 2. ENVIRONMENT SETUP & HOW TO RUN

### 1) Required Software:
   - MATLAB (R2018 or higher recommended)
   - Dynare (v4.6 or higher recommended)
   - Python 3.x (Anaconda environment recommended)
   - Jupyter Notebook (for running .ipynb files)

### 2) Python Dependencies:
   Make sure you have the following libraries installed:
       pip install pandas numpy matplotlib statsmodels pandas_datareader seaborn

   Required Libraries:
   - pandas
   - numpy
   - matplotlib
   - statsmodels
   - pandas_datareader
   - seaborn

### 3) Running the Bayesian Estimation (MATLAB + Dynare):
   - Navigate to the "Bayesian estimation/" folder in MATLAB.
   - Run the following command:
         dynare Bayesian_test_er_eta04.mod
   - Dynare will perform parameter estimation and store outputs (including .mat files).
   - Check MATLAB console and Dynare output for logs, parameter estimates, and convergence details.

### 4) Running the Monetary/Fiscal Shock Simulations:
   - Navigate to the "Monetary and Fiscal shocks/" folder in MATLAB.
   - Run the following command:
         dynare test_eta04.mod
   - Dynare will generate impulse response functions (IRFs) and additional output files/logs.
   - Review "test_eta04.log" for any warnings/errors and to confirm successful simulation.

### 5) SVAR Analysis (Python):
   - Launch Jupyter Notebook:
         jupyter notebook
   - Open "China SVAR result.ipynb".
   - Execute each cell in sequence.
   - The notebook will load data from "var.xlsx" (or as specified within the notebook), estimate the VAR/SVAR, and plot the results.

--------------------------------
## 4. LICENSE

This repository is released under the MIT License.
You are free to use, modify, and distribute this code with proper attribution.
