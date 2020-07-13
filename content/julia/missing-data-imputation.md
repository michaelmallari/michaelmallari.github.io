---

title: "Replace Missing Data Through Imputation"

summary: "Missing data is part of real world data wrangling. Avoid dropping valuable observations by using Impute.jl."

image: https://www.michaelmallari.com/img/og-jigsaw-puzzle.jpg

language: Julia

date: 2019-02-09

categories: []

tags: []

---


```julia
VERSION
```




    v"1.4.2"




```julia
import Pkg
Pkg.add("Impute")
using Impute
```

    [32m[1m  Resolving[22m[39m package versions...
    [32m[1m   Updating[22m[39m `~/.julia/environments/v1.4/Project.toml`
    [90m [no changes][39m
    [32m[1m   Updating[22m[39m `~/.julia/environments/v1.4/Manifest.toml`
    [90m [no changes][39m

