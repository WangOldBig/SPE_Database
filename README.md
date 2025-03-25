# SPE Database

This project was inspired by [the Confidence Database](https://doi.org/10.1038/s41562-019-0813-1). We aimed at curating a database that include trial-level data and other meta-data from as many empirical studies that used self-matching task from [Sui, He, & Humphreys (2012)](http://www.ncbi.nlm.nih.gov/pubmed/22963229). `<!-- OSF, preprint, and publication links will be directly added to this paragraph -->`

This database compiles data from **24 published papers** , covering **38 experiments** and **2175 participants** in total. Each dataset includes information on reaction times (RTs), accuracy (ACC), and relevant experimental conditions. The included studies come from diverse cultural and experimental backgrounds, facilitating cross-study comparisons and meta-analytic investigations.

The SPE Database is continuously updated as new studies and datasets become available. We welcome contributions from researchers who wish to share their data and help expand this resource. If you are interested in contributing or collaborating, please feel free to reach out!

This project is in parallel with an on-going preregistered meta-analysis leading by Hu Chuan-Peng and Zheng Liu (see registry [here](https://osf.io/euqmf)).

## Leading Team

-   Zhenxin Cai (School of Psychology, Nanjing Normal University,email:[czx\@nnu.edu.cn](mailto:czx@nnu.edu.cn){.email})
-   Xinru Sun (School of Psychology, Nanjing Normal University)
-   Wanke Pan (School of Psychology, Nanjing Normal University)
-   Mengzheng Hu (School of Psychology, Nanjing Normal University)
-   Zheng Liu (Division of Applied Psychology, School of Humanities and Social Science, CUHK-Shenzhen)
-   [Jie Sui, University of Aberdeen](https://www.abdn.ac.uk/people/jie.sui)
-   Hu Chuan-Peng (School of Psychology, Nanjing Normal University, email: [hcp4715\@hotmail.com](mailto:hcp4715@hotmail.com){.email})

### Data contributors

Authors of published studies were invited and listed here, if permitted, as contributors.

Contributors (Alphabetical Order)

-   Letizia Amodeo(Department of Experimental Clinical and Health Psychology, Ghent University)
-   Marco Bertamini(Department of General Psychology, University of Padova)
-   Mario Dalmaso(Department of Developmental and Social Psychology, University of Padova)
-   Merryn D. Constable(Department of Psychology, Northumbria University)
-   Christian Frings(University of Trier, Trier, Germany)
-   Xiangping Gao(Department of Psychology, Shanghai Normal University)
-   Marius Golubickis(University of Aberdeen, Aberdeen, UK)
-   Judith Goris(Department of Experimental Psychology, Ghent University)
-   Lili Guan(School of Psychology, Northeast Normal University)
-   Luis J. Fuentes(Departamento de Psicología Básica y Metodología, Facultad de Psicología y Logopedia, Universidad de Murcia)
-   Ivar Kolvoort(Department of Psychology, Programme Group Psychological Methods, University of Amsterdam)
-   Tal Makovski(Department of Psychology, Tel-Hai Academic College)
-   Víctor Martínez-Pérez(University of Castilla-La Mancha Albacete Campus, Faculty of Medicine (UCLM - Albacete)
-   Mayan Navon(Department of Education and Psychology, The Open University of Israel)
-   Annabel D. Nijhof(Department of Experimental Clinical and Health Psychology, Ghent University)
-   Georg Northoff(Institute of Mental Health Research, University of Ottawa, Ottawa, Ontario, Canada)
-   Prof Lucía B. Palmero(Departamento de Psicología Básica y Metodología, Facultad de Psicología y Logopedia, Universidad de Murcia)
-   Bernhard Pastötter(Bernhard Pastötter, University of Trier, Universitätsring 15)
-   Haoyue Qian(School of Physics and Shanghai Key Laboratory of Magnetic Resonance, East China Normal University;Department of Psychology, Shanghai Normal University)
-   Sarah Schäfer(University of Trier)
-   Jan R. Wiersema(Department of Experimental Clinical and Health Psychology, Ghent University)
-   Mateusz Wozniak(1Social Cognition in Human-Robot Interaction Group, Italian Institute of Technology, Genoa, Italy;Social Mind Center, Department of Cognitive Science, Central European University, Vienna, Austria;Cognition and Philosophy Lab, Department of Philosophy, Monash University, Melbourne, VIC, Australia;Institute of Psychology, Jagiellonian University, Cracow, Poland)
-   Michele Vicovaro(Department of General Psychology, School of Psychology, University of Padua)

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
