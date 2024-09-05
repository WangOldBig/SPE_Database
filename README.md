# SPE Database
This project is inspired by [Rahnev et al., (2020)](https://doi.org/10.1038/s41562-019-0813-1). We aimed at curating a database that include trial-level data from as many empirical studies that used self-matching task from [Sui, He, & Humphreys (2012)](http://www.ncbi.nlm.nih.gov/pubmed/22963229).

## Contributors
- Zhenxin Cai (NNU)
- Wanke Pan (NNU)
- [Jie Sui, University of Aberdeen](https://www.abdn.ac.uk/people/jie.sui)
- Hu Chuan-Peng (NNU)

## OSF page

## Preprint

## Summary of the database

## Folder structure
```
root
│  .gitignore
│  README.md
│  Dataset_inf.xlsx 
├─1_Clean_Data 
│   └─ <Author>_<Year>_<Journal>
│       └─ <Author>_<Year>_<Journal>_<Exp-id>_Clean.csv
│       └─ Codebook_<Author>_<Year>_<Journal>_<Exp-id>_Clean.xlsx
├─2_Raw_Data # raw data will be stored on OSF
│   └─ <Author>_<Year>_<Journal>
│       └─ <Author>_<Year>_<Journal>_<Exp-id>_raw.csv
│       └─ Readme.md  # Including 'Authors'、'CItation'、'Participants'、'Procedure'、'Data Files'.
├─3_Code
│   └─ Clean_Data.Rproj
│   └─ Clean_Data.Rmd
│   └─ README.md
└─4_Reports
     │
     └─ README.md

```
