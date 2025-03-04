# SPE Database
This project was inspired by [the Confidence Database](https://doi.org/10.1038/s41562-019-0813-1). We aimed at curating a database that include trial-level data and other meta-data from as many empirical studies that used self-matching task from [Sui, He, & Humphreys (2012)](http://www.ncbi.nlm.nih.gov/pubmed/22963229). <!-- OSF, preprint, and publication links will be directly added to this paragraph -->

This project is in parallel with an on-going preregistered meta-analysis leading by Hu Chuan-Peng and Zheng Liu (see registry [here](https://osf.io/euqmf)).

## Leading Team
- Zhenxin Cai (School of Psychology, Nanjing Normal University,email:czx@nnu.edu.cn)
- Xinru Sun (School of Psychology, Nanjing Normal University)
- Wanke Pan (School of Psychology, Nanjing Normal University)
- Mengzheng Hu (School of Psychology, Nanjing Normal University)
- Zheng Liu (Division of Applied Psychology, School of Humanities and Social Science, CUHK-Shenzhen)
- [Jie Sui, University of Aberdeen](https://www.abdn.ac.uk/people/jie.sui)
- Hu Chuan-Peng (School of Psychology, Nanjing Normal University, email: hcp4715@hotmail.com)

### Data contributors
Authors of published studies were invited and listed here, if permitted, as contributors.

Contributors (Alphabetical Order)
- Letizia Amodeo (); 
- Marco Bertamini; 
- Mario Dalmaso; 
- Christian Frings (Department of Cognitive Psychology, University of Trier); 
- Xiangping Gao; 
- Marius Golubickis; 
- Judith Goris; 
- Lili Guan; 
- Ivar Kolvoort; 
- Tal Makovski; 
- Víctor Martínez-Pérez; 
- Mayan Navon; 
- Annabel D. Nijhof; 
- Georg Northoff; 
- Marel Pauly; 
- Lucía B. Palmero; 
- Bernhard Pastötter; 
- Haoyue Qian; 
- Sarah Schäfer; 
- Michele Vicovaro; 
- Dirk Wentura; 
- Jan R. Wiersema; 
- Mateusz Wozniak

## Folder structure

```
root
│  .gitignore
│  README.md
│  Dataset_inf.xlsx 
│  Contact information.xlsx
│  Dataset_inf.xlsx 
├─1_Clean_Data 
│   └─ <Author>_<Year>_<Journal>
│       └─ <Author>_<Year>_<Journal>_<Exp-id>_Clean.csv
│       └─ Codebook_<Author>_<Year>_<Journal>_<Exp-id>_Clean.xlsx
├─2_Raw_Data # raw data will be stored on OSF
│   └─ <Author>_<Year>_<Journal>
│       └─ <Author>_<Year>_<Journal>_<Exp-id>_raw.csv
│       └─ Readme.md  # Including 'Authors'、'Citation'、'Participants'、'Procedure'、'Data Files'.
├─3_Code
│   └─ Clean_Data.Rproj
│   └─ Clean_Data.Rmd
│   └─ README.md
└─4_Reports
     │
     └─ README.md

```
