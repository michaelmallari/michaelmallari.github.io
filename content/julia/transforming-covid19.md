---

title: "Transforming COVID-19 Data"

summary: "Before data frames can be visualized, analyzed, and modelled, it will need to be clearly represented as observations and features."

image: https://www.michaelmallari.com/img/og-covid19.tiff

language: Julia

date: 2020-06-27

categories: []

tags: []

---




```julia
import Pkg
```


```julia
Pkg.add("CSV")
using CSV
covid19_us_confirmed = CSV.read("dataset/time_series_covid19_confirmed_US_20200629.csv");
covid19_us_deaths = CSV.read("dataset/time_series_covid19_deaths_US_20200629.csv");
```

    [32m[1m  Resolving[22m[39m package versions...
    [32m[1m   Updating[22m[39m `~/.julia/environments/v1.4/Project.toml`
    [90m [no changes][39m
    [32m[1m   Updating[22m[39m `~/.julia/environments/v1.4/Manifest.toml`
    [90m [no changes][39m



```julia
first(covid19_us_confirmed, 10)
```




<table class="data-frame"><thead><tr><th></th><th>UID</th><th>iso2</th><th>iso3</th><th>code3</th><th>FIPS</th><th>Admin2</th><th>Province_State</th><th>Country_Region</th></tr><tr><th></th><th>Int64</th><th>String</th><th>String</th><th>Int64</th><th>Float64?</th><th>String?</th><th>String</th><th>String</th></tr></thead><tbody><p>10 rows × 170 columns (omitted printing of 162 columns)</p><tr><th>1</th><td>16</td><td>AS</td><td>ASM</td><td>16</td><td>60.0</td><td><em>missing</em></td><td>American Samoa</td><td>US</td></tr><tr><th>2</th><td>316</td><td>GU</td><td>GUM</td><td>316</td><td>66.0</td><td><em>missing</em></td><td>Guam</td><td>US</td></tr><tr><th>3</th><td>580</td><td>MP</td><td>MNP</td><td>580</td><td>69.0</td><td><em>missing</em></td><td>Northern Mariana Islands</td><td>US</td></tr><tr><th>4</th><td>630</td><td>PR</td><td>PRI</td><td>630</td><td>72.0</td><td><em>missing</em></td><td>Puerto Rico</td><td>US</td></tr><tr><th>5</th><td>850</td><td>VI</td><td>VIR</td><td>850</td><td>78.0</td><td><em>missing</em></td><td>Virgin Islands</td><td>US</td></tr><tr><th>6</th><td>84001001</td><td>US</td><td>USA</td><td>840</td><td>1001.0</td><td>Autauga</td><td>Alabama</td><td>US</td></tr><tr><th>7</th><td>84001003</td><td>US</td><td>USA</td><td>840</td><td>1003.0</td><td>Baldwin</td><td>Alabama</td><td>US</td></tr><tr><th>8</th><td>84001005</td><td>US</td><td>USA</td><td>840</td><td>1005.0</td><td>Barbour</td><td>Alabama</td><td>US</td></tr><tr><th>9</th><td>84001007</td><td>US</td><td>USA</td><td>840</td><td>1007.0</td><td>Bibb</td><td>Alabama</td><td>US</td></tr><tr><th>10</th><td>84001009</td><td>US</td><td>USA</td><td>840</td><td>1009.0</td><td>Blount</td><td>Alabama</td><td>US</td></tr></tbody></table>




```julia
last(covid19_us_confirmed, 10)
```




<table class="data-frame"><thead><tr><th></th><th>UID</th><th>iso2</th><th>iso3</th><th>code3</th><th>FIPS</th><th>Admin2</th></tr><tr><th></th><th>Int64</th><th>String</th><th>String</th><th>Int64</th><th>Float64?</th><th>String?</th></tr></thead><tbody><p>10 rows × 170 columns (omitted printing of 164 columns)</p><tr><th>1</th><td>84070002</td><td>US</td><td>USA</td><td>840</td><td><em>missing</em></td><td>Dukes and Nantucket</td></tr><tr><th>2</th><td>84070003</td><td>US</td><td>USA</td><td>840</td><td><em>missing</em></td><td>Kansas City</td></tr><tr><th>3</th><td>84070004</td><td>US</td><td>USA</td><td>840</td><td><em>missing</em></td><td>Michigan Department of Corrections (MDOC)</td></tr><tr><th>4</th><td>84070005</td><td>US</td><td>USA</td><td>840</td><td><em>missing</em></td><td>Federal Correctional Institution (FCI)</td></tr><tr><th>5</th><td>84070015</td><td>US</td><td>USA</td><td>840</td><td><em>missing</em></td><td>Bear River</td></tr><tr><th>6</th><td>84070016</td><td>US</td><td>USA</td><td>840</td><td><em>missing</em></td><td>Central Utah</td></tr><tr><th>7</th><td>84070017</td><td>US</td><td>USA</td><td>840</td><td><em>missing</em></td><td>Southeast Utah</td></tr><tr><th>8</th><td>84070018</td><td>US</td><td>USA</td><td>840</td><td><em>missing</em></td><td>Southwest Utah</td></tr><tr><th>9</th><td>84070019</td><td>US</td><td>USA</td><td>840</td><td><em>missing</em></td><td>TriCounty</td></tr><tr><th>10</th><td>84070020</td><td>US</td><td>USA</td><td>840</td><td><em>missing</em></td><td>Weber-Morgan</td></tr></tbody></table>




```julia
names(covid19_us_confirmed)
```




    170-element Array{String,1}:
     "UID"
     "iso2"
     "iso3"
     "code3"
     "FIPS"
     "Admin2"
     "Province_State"
     "Country_Region"
     "Lat"
     "Long_"
     "Combined_Key"
     "1/22/20"
     "1/23/20"
     ⋮
     "6/17/20"
     "6/18/20"
     "6/19/20"
     "6/20/20"
     "6/21/20"
     "6/22/20"
     "6/23/20"
     "6/24/20"
     "6/25/20"
     "6/26/20"
     "6/27/20"
     "6/28/20"




```julia
Pkg.add("DataFrames")
using DataFrames
```

    [32m[1m  Resolving[22m[39m package versions...
    [32m[1m   Updating[22m[39m `~/.julia/environments/v1.4/Project.toml`
    [90m [no changes][39m
    [32m[1m   Updating[22m[39m `~/.julia/environments/v1.4/Manifest.toml`
    [90m [no changes][39m



```julia
Pkg.add("TimeSeries")
using TimeSeries
```

    [32m[1m  Resolving[22m[39m package versions...
    [32m[1m   Updating[22m[39m `~/.julia/environments/v1.4/Project.toml`
    [90m [no changes][39m
    [32m[1m   Updating[22m[39m `~/.julia/environments/v1.4/Manifest.toml`
    [90m [no changes][39m

