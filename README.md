# SPE Database

This project was inspired by [the Confidence Database](https://doi.org/10.1038/s41562-019-0813-1). We aimed at curating a database that include trial-level data and other meta-data from as many empirical studies that used self-matching task from [Sui, He, &amp; Humphreys (2012)](http://www.ncbi.nlm.nih.gov/pubmed/22963229). `<!-- OSF, preprint, and publication links will be directly added to this paragraph -->`

Currently, the SPE database includes trial-level data from **23 published papers**, covering **38 experiments** and **2175 participants** in total. Each dataset includes information on reaction times (RTs), accuracy (ACC), and other information reported in papers. Participants in these included studies come from diverse cultural backgrounds, facilitating cross-study comparisons and meta-analytic investigations.

The SPE Database is continuously updated as new studies and datasets become available. We welcome contributions from researchers who wish to share their data and help expand this resource. If you are interested in contributing or collaborating, please feel free to reach out!

This project is in parallel with an on-going preregistered meta-analysis leading by Hu Chuan-Peng and Zheng Liu (see registry [here](https://osf.io/euqmf)).

## Leading Team

- Zhenxin Cai (School of Psychology, Nanjing Normal University,email:[czx@nnu.edu.cn](czx@nnu.edu.cn))
- Xinru Sun (School of Psychology, Nanjing Normal University)
- Wanke Pan (School of Psychology, Nanjing Normal University)
- Mengzheng Hu (School of Psychology, Nanjing Normal University)
- Zheng Liu (Division of Applied Psychology, School of Humanities and Social Science, CUHK-Shenzhen)
- Jie Sui ([School of Psychology, University of Aberdeen](https://www.abdn.ac.uk/people/jie.sui))
- **Hu Chuan-Peng** (**Corresponding author**, School of Psychology, Nanjing Normal University, email: [hcp4715@hotmail.com](hcp4715@hotmail.com))

### Data contributors

Authors of original studies were invited and listed here, if permitted, as contributors. We will adhere to Sage's authorship criteria for authors in our future data descriptor paper. That is, authors of our data descriptor paper must have been responsible for at least one of the following [CRediT](https://us.sagepub.com/en-us/nam/credit) roles:

- Conceptualization
- Methodology
- Formal Analysis
- Investigation

AND at least one of the following:

- Writing - Original Draft Preparation
- Writing - Review & Editing

Contributors

- Marco Bertamini (Department of General Psychology, University of Padova)
- Mario Dalmaso (Department of Developmental and Social Psychology, University of Padova)
- Michele Vicovaro (Department of General Psychology, University of Padova)
- Merryn D. Constable (Department of Psychology, Northumbria University)
- Christian Frings (University of Trier)
- Céline Haciahmet (University of Trier)
- Sarah Schäfer (University of Trier)
- Bernhard Pastötter (University of Trier)
- Judith Goris (Department of Experimental Psychology, Ghent University)
- Letizia Amodeo (Department of Experimental Clinical and Health Psychology, Ghent University)
- Annabel D. Nijhof (Department of Experimental Clinical and Health Psychology, Ghent University)
- Jan R. Wiersema (Department of Experimental Clinical and Health Psychology, Ghent University)
- Lili Guan (School of Psychology, Northeast Normal University)
- Luis J. Fuentes (Departamento de Psicología Básica y Metodología, Facultad de Psicología y Logopedia, Universidad de Murcia)
- Lucía B. Palmero (Departamento de Psicología Básica y Metodología, Facultad de Psicología y Logopedia, Universidad de Murcia)
- Ivar Kolvoort (Department of Psychology, Programme Group Psychological Methods, University of Amsterdam)
- Tal Makovski (Department of Psychology, Tel-Hai Academic College)
- Víctor Martínez-Pérez (University of Castilla-La Mancha Albacete Campus, Faculty of Medicine (UCLM - Albacete))
- Mayan Navon (Department of Education and Psychology, the Open University of Israel)
- Georg Northoff (Institute of Mental Health Research, University of Ottawa)
- Xiangping Gao (Department of Psychology, Shanghai Normal University)
- Haoyue Qian (School of Physics and Shanghai Key Laboratory of Magnetic Resonance, East China Normal University; Department of Psychology, Shanghai Normal University)
- Kalai Hung (Tsinghua University)
- Michella Feldborg (University of Aberdeen)
- Fei Wang (Tsinghua University)
- Qiongdan Liang (Tsinghua University)
- Yongfa Zhang (Tsinghua University)
- Tuo Liu(Goethe University Frankfurt)
- Mateusz Wozniak (Social Cognition in Human-Robot Interaction Group, Italian Institute of Technology; Social Mind Center, Department of Cognitive Science, Central European University; Cognition and Philosophy Lab, Department of Philosophy, Monash University; Institute of Psychology, Jagiellonian University)

## Data Version

### Version 0.1.2 — 2025-06-16

**New features/changes**

* **[Data Filtering]**: Performed initial data filtering using R, retaining behavioral variables required for calculating the Self-Prioritization Effect (SPE), including Matching, Shape/Face/Voice, Label, Identity (Shape_Identity standardized as: NonPerson, Self, Close, Acquaintance, Celebrity, Stranger), RT_ms, and ACC. Demographic variables (e.g., gender, age, handedness) were also retained when available.
* **[SPE Analysis]**: Conducted exploratory analysis of SPE using Clean_Data, calculating sequential dependency effects and analyzing the impact of different Identity categories on RT and ACC.
* **[Visualization]**: Visualized the distribution of SPE for each participant, providing a clear view of SPE performance across different Identity categories.

**Bugs/glitches discovered after the release**

* **[Insufficient Preprocessing]**: Data filtering was performed rather than full preprocessing, which may lead to invalid values during data exploration (e.g., ACC values may include -1 for no response, 2 for incorrect key press). Users must perform their own preprocessing based on their analysis goals. Details of each article's Clean_Data are available in the Codebook within the Clean_Data folder.

---

### Version 0.1.0 — 2025-05-16

**New features/changes**

* **[Data Structure Setup]**: Established the initial data structure of the SPE database, including behavioral and demographic data.
* **[Data Integration]**: Integrated raw data from multiple published articles, including behavioral variables (e.g., RT, ACC) and demographic variables.
* **[README File]**: Provided a basic README file explaining the database structure and usage guidelines.

**Bugs/glitches discovered after the release**

* **[Inconsistent Variable Names]**: Some raw data files contained inconsistent variable names, causing issues during data integration.
* **[Missing Demographic Variables]**: Certain articles lacked demographic variables, resulting in incomplete metadata.

---

### Unreleased

**Planned**

* **[Label_Identity Cleanup]**: Re-clean the Label_Identity variable from the raw data for more accurate classification.
* **[Metadata in JSON Format]**: Transition metadata storage from .md to .json format for each article, providing a more structured and machine-readable format.

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
│       └─ Readme.md  # Including 'Authors'、'Citation'、'Participants'、'Procedure'、'Data Files'.
├─3_Code
│   └─ Clean_Data.Rproj
│   └─ Clean_Data.Rmd
│   └─ README.md
└─4_Reports
     │
     └─ README.md
```
