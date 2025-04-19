# cmsc408-sp2025-hw8

Continuing with the theme of roleplaying as database wizards to get practice with SQL, I’ve been *hired* by the World Bank as a data analyst charged with working with the World Development Indicator database. For this assignment, I'm working with data pulled containing WDI data and being introduced to **case statements** and **CTEs (common table expressions)**.

This repo features the report.qmd file mixed with python and sql used to make the report described above.


## To View the Report without Building
1. Copy the url of this repo.
2. In the terminal, navigate to the directory where you want to keep a copy of this project.
3. Run _git clone \<URL you copied\>_ from the terminal.
4. From your File Explorer (Finder), navigate to the reports folder in your cloned project directory.
5. Double click on report.html.


## Requirements to Build and Run
- Poetry
- Quarto
- Python


## To Build the Report
1. Pull the repo to your preferred directory.
2. After navigating into the pulled repo, run the command **poetry install** to install the project dependencies.
3. Run the command **poetry shell** (or **poetry run pwsh** if in powershell) to enter a virtual environment with all the necessary packages installed.
4. Run **quarto render <path_to_report.qmd>** to render the report.html file.


## Folders

*./reports* - contains the Quarto document and rendered HTML <br/>


