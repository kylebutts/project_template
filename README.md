# Research Project Template

This is a template repository that will serve as a base for research projects in the future. I've spent a lot of time working on my process and I think it's a recipe for success. You should consider using this. 



## Project setup

### Root
``` txt
./
├── README.md
├── .nojekyll
└── .gitignore
```

The base directory contains a `README` that shows up on the front page of the Github repository. A template is included at the bottom of the readme I include links to the pdf, the abstract, `.bib` citation, and detail the replication process.

The `.gitignore` prevents you from comitting a lot of files that are useless (e.g. latex auxiliary files). `.nojekyll` is for publishing `logbook/` with github pages.



### Code
``` txt
code/
├── folder/
├── utils/
└── main.R
```

All code goes into the `code/` folder. The `main.R` script runs all the analysis using `render_file` which will create logs in to the `logbook/`. Remember that folders are your friend (e.g. `process_raw/`, `create_main_data/`, `simulations/`, etc.).



### Data
``` txt
data/
├── base/
├── derived/
└── raw/
```

The data folder is broken into three root folders. The `raw/` folder should be untouched data separated into sub-folders. Each sub-folder should contain a `README.md` with details of how the data was accessed. Once the raw data is cleaned/processed, it will output into `base/`. Then, combining the datasets will end up in `derived/`.

If you are using large datasets that do not work with normal git commits, here's my strategy:
1. Put the `data/` folder in cloud storage and then create a symlink to this project folder (h/t [Santiago Hermo](https://github.com/santiagohermo))
   
   This would look like `ln -s ~/Dropbox/Project/data/ ~/project_path/data/`.
2. Add *only* the large datasets to `.gitignore` so that you never commit them. You should document well how to download the data in `raw`; potentially including a script to do so.



### Out
This folder contains everything needed to create the paper and slides. I put `figures/` and `tables/` inside of `out/` so that the tex files can reference them directly. This makes uploading to arXiv and submitting the paper easy since everything is in `out/`

The latex files use my templates from [`kylebutts/latex-templates`](https://github.com/kylebutts/latex-templates).

``` txt
out/
├── figures/
├── tables/
├── Paper.tex
├── Paper.pdf
├── Slides.tex
├── Slides.pdf
├── paper.sty
├── slides.sty
├── math.sty
└── references.bib
```



### Logbook
``` txt
logbook/
├── _quarto.yml
├── render_file.R
└── include/
    ├── cell-output.scss
    ├── copy_readme.R
    └── toggle-code.html
```

The logbook creates an quarto website with rendered output of all code used in `main.R`. This makes collaboration easy, as you can view all output of scripts in the logbook. Also ensures replicability. See [`kylebutts/repro_project`](https://github.com/kylebutts/repro_project) for details.

Github actions can be setup to automatically publish `logbook/` via github pages. See `.github/workflows/publish_logbook.yml` which updates the lobook everytime a commit is pushed. Note this *does not* run `main.R`, so logbook is only up to date if you rerun everything before committing.

- To initialize, you need to run (only one time). 
  ```
  cd logbook/
  quarto publish gh-pages/
  ``` 



## Tags and Releases

Github has a way of marking certain commits as a "Release":
https://docs.github.com/en/repositories/releasing-projects-on-github/about-releases
- This let's you mark a commit as a completed draft. I recommend doing a release every time you put a new version of the paper on arXiv. You have to make a *tag* before releasing. I put the *tag* as `v#` to match arXiv, but you can put anything





<br /><br /><br /><br /><br /><br /><br /><br /><hr/>
<!-- Delete this and above -->
# Paper Title

[Kyle Butts](https://www.kylebutts.com/)<sup>1</sup>
<br>
<sup>1</sup>University of Arkansas

#### [Link 1](.) 



## Abstract

...



## Replication

...



## Citation

```
@techreport{key,
  title={TITLE},
  author={Butts, Kyle},
  year={2024}
}
```
