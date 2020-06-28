---

title: "Applying Linear Algebra to NFL Combine Data"

summary: "Minimize redundancy in big data through dimension reduction—more specifically, through principal component analysis."

image: https://www.michaelmallari.com/img/og-nfl-combine-vdavis.png

language: Julia

date: 2020-06-21

categories: []

tags: []

---


```julia
VERSION
```




    v"1.4.2"




```julia
import Pkg
Pkg.add("LinearAlgebra")
using LinearAlgebra
```

    [32m[1m  Resolving[22m[39m package versions...
    [32m[1m   Updating[22m[39m `~/.julia/environments/v1.4/Project.toml`
    [90m [no changes][39m
    [32m[1m   Updating[22m[39m `~/.julia/environments/v1.4/Manifest.toml`
    [90m [no changes][39m

