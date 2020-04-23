@def title = "Introduction to Julia Programming Language"
@def date = Date(2019, 1, 5)
@def description = "Learn the basics of data analysis in Julia programming language by manipulating common data structures."
@def rss = "Learn the basics of data analysis in Julia programming language by manipulating common data structures."
@def hascode = true
@def lang = "julia-repl"
@def isJuliaRepl = true
@def relatedPosts[0] = ["Intermediate Julia Programming Language","intermediate-julia-programming"]

## Intro to basics

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

### How it works

Calculate 3 + 4

```
julia> 3 + 4
7
```

Calculate 6 + 12

```
julia> 6 + 12
18
```

### Arthmetic with Julia

An addition

```
julia> 5 + 5
10
```

A subtraction

```
julia> 5 - 5
0
```

A multiplication

```
julia> 3 * 5
15
```

A division

```
julia> (5 + 5) / 2
5.0
```

Exponential

```
julia> 2 ^ 5
32
```

Modulo

```
julia> 28 % 5
3
```

### Variable names

Pre-defined math-symbol variables

```
julia> π
π = 3.1415926535897...
```

Declare unicode math symbol-based variables using LATEX2ε

```
julia> school = "Massachusetts Institute of Technology"
"Massachusetts Institute of Technology"

julia> ϑ = 6.0
6.0

julia> starting_salary_µ = 70300
70300
```



### Variable assignment

Assign the value 42 to `x`.  Print out the value of the variable `x`

```
julia> x = 42
42

julia> x
42
```

### Variable assignment (2)

Assign the value 5 to the variable `my_apples`.  Print out the value of the variable `my_apples`

```
julia> my_apples = 5
5

julia> my_apples
5
```

### Variable assignment (3)

Assign a value to the variables `my_apples` and `my_oranges`.  Add these two variables together

```
julia> my_apples = 5
5

julia> my_oranges = 6
6

julia> my_apples + my_oranges
11
```

Create the variable `my_fruits`

```
julia> my_fruits = my_apples + my_oranges
11

julia> my_fruits
11
```

### Basic data types in Julia

Change `my_numeric` to be 42.  Change `my_character` to be "universe".  Change `my_boolean` to be false

```
julia> my_numeric = 42
42

julia> my_character = "universe"
"universe"

julia> my_boolean = Bool(0)
false
```

### What’s that data type?


```
julia> typeof(my_numeric)
Int64

julia> typeof(my_character)
String

julia> typeof(my_boolean)
Bool
```

---

## Vectors

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

### Create a vector

```

```

### Create a vector (2)

```julia-repl

```

### Create a vector (3)

```julia-repl

```

### Naming a vector

```julia-repl

```

### Naming a vector (2)

```julia-repl

```

### Calculating total winnings

```julia-repl

```

### Calculating total winnings (2)

```julia-repl

```

### Calculating total winnings (3)

```julia-repl

```

### Comparing total winnings

```julia-repl

```

### Vector selection: the good times

```julia-repl

```

### Vector selection: the good times (2)

```julia-repl

```

### Vector selection: the good times (3)

```julia-repl

```

### Vector selection: the good times (4)

```julia-repl

```

### Selection by comparison - Step 1

```julia-repl

```

### Selection by comparison - Step 2

```julia-repl

```

### Advanced selection

```julia-repl

```

---

## Matrix

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

### What’s a matrix?

```julia-repl

```

### Analyze matrices, you shall

```julia-repl

```

### Naming a matrix

```julia-repl

```

### Calculating the worldwide box office

```julia-repl

```

### Adding a column for the Worldwide box office

```julia-repl

```

### Adding a row

```julia-repl

```

### The total box office revenue for the entire saga

```julia-repl

```

### Selection of matrix elements

```julia-repl

```

### A little arithmetic with matrices

```julia-repl

```

### A little arithmetic with matrices (2)

```julia-repl

```

---

## Factors

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

### What’s a factor and why would you use it?

```julia-repl

```

### What’s a factor and why would you use it? (2)

```julia-repl

```

### What’s a factor and why would you use it? (3)

```julia-repl

```

### Factor levels

```julia-repl

```

### Summarizing a factor

```julia-repl

```

### Battle of the sexes

```julia-repl

```

### Ordered factors

```julia-repl

```

### Ordered factors (2)

```julia-repl

```

### Comparing ordered factors

```julia-repl

```

---

## Data frames

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

### What’s a data frame?

```
julia> using Pkg

julia> Pkg.add("DataFrames")
   Updating registry at `~/.julia/registries/General`
   Updating git-repo `https://github.com/JuliaRegistries/General.git`
  Resolving package versions...
   Updating `~/.julia/environments/v1.4/Project.toml`
  [a93c6f00] + DataFrames v0.20.2
   Updating `~/.julia/environments/v1.4/Manifest.toml`
 [no changes]

julia> using DataFrames
```

### Quick, have a look at your data set

```julia-repl

```

### Have a look at the structure

```julia-repl

```

### Creating a data frame

```julia-repl

```

### Creating a data frame (2)

```julia-repl

```

### Selection of data frame elements

```julia-repl

```

### Selection of data frame elements (2)

```julia-repl

```

### Only planets with rings

```julia-repl

```

### Only planets with rings (2)

```julia-repl

```

### Only planets with rings but shorter

```julia-repl

```

### Sorting

```julia-repl

```

### Sorting your data frame

```julia-repl

```

---

## Lists

Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

### Lists, why would you need them?

```julia-repl

```

### Lists, why would you need them? (2)

```julia-repl

```

### Creating a list

```julia-repl

```

### Creating a named list

```julia-repl

```

### Creating a named list (2)

```julia-repl

```

### Selecting elements from a list

```julia-repl

```

### Adding more movie information to the list

```julia-repl

```