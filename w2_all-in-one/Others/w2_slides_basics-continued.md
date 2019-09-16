---
title: "Basics continued"
subtitle: "SCR week 2"
date: "13 September, 2019"
output:
  ioslides_presentation:
    css: 0_css/SCR1718.css
    highlight: tango
    keep_md: yes
    logo: 0_css/logo.png
    template: 0_template/R1718style.html
    mode: standalone
---

# Recap

## Last week

Introduction:    
- Assignment      
- Data types     
- Indexing and filtering of vectors      
- Conditions    
- Functions and Objects (aka variables)   

## Self-study Last Week

swirl, R Programming: The basics of programming in R, lessons **1** through **4**, and **6** through **9**.

Complete and finish the week 1 exercises

Matloff:    
* chapter 1, (**not** 1.5)     
* chapter 2, (**not** 2.9)    
* chapter 3.1 through 3.7 (**not** 3.4)    


## Q & A

Is it possible to do < whatever > in R? 

Most of the times the answer is "yes". There is always a package.


## Q & A

What is the difference between a `.R` script and an `.Rmd` script?

## Q & A

How do I know if my code is correct?

Errors (& warnings):

* Runtime / Compile: most of warnings and errors `R` gives you
* Logical: you compute the square, instead of the square root

Solution:

* Build up your code in small pieces (especially complicated functions / algorithms): create them from a combination of small and easy to check 'chunks'
* Think hard and well with long breaks in-between


# Today

## Topics for today

More basics:
  
  * More about Functions
  * The other containers: matrices, arrays, data.frames and lists
  * Reading and writing data
  * Variable manipulation
  * Implicit loops


# More about Functions

## Functions and Default Arguments

It is possible to set default arguments

* users won't have to provide an argument for the function to run
* if not provided, `R` will use the default as value
* used by most `R` functions (also ones we will discuss today)


# defaults | Live coding 1

# Containers continued

## Common containers / Types of `class`

There is no 'best' container, some classes are more suitable for some purposes, e.g.:

* `data.frame` quite useful in general for analysis (e.g. `lm` expects a `data.frame`)
* `matrix` is useful for computation (e.g. linear algebra to solve a system of linear equations)
* `list`'s are useful for varying types of sets of information (e.g. output from a function)

## Containers

Summarizing:

* a `vector`'s elements have only one mode: e.g. `character`, `logical`, `numeric`, `integer` OR `list`. Everything in R is vector-based: in general, the class of a vector is its mode.
* a `matrix`'s elements have only one mode: e.g. `character`, `logical`, `numeric`, `integer` OR `list`.
* a `list`'s elements have the mode `list`. The content of a `list` element can be of every `mode` (e.g. a `list` in a `list`!)
* a `data.frame`'s elements have the mode `list`, a specific instantiation of a `list`

## Matrix (and array's)

From the `R` helpfiles:

* An matrix (or array) in `R` can have one, two or more dimensions. It is a vector which is stored with additional attributes giving the dimensions (attribute "dim") and optionally names for those dimensions (attribute "dimnames").

* A matrix is the special case of a two-dimensional array.

Indexing like vectors with `[`

For some detail look at `?'['`


# `matrix()` and `array()` | Live coding 2


## Matrices: that's all for now

Linear algebra!

See week ..5?.. of Mathematics for Statisticians

We may get into a little more detail (if necessary) once we can do something useful!


## Lists

The most general purpose container in `R` 

Basically a vector, but: *recursive* instead of *atomic*

Two ways to access its elements: `[` versus `[[`


# filtering | Live coding 3
 
## Data.frames

The way to represent data in `R`

Basically a `list`, but with all its elements equal length vectors of (possibly) different mode

The guarantee of equal length vectors makes it so that `R` can make convenient assumptions

# `names()` / 'tags' | Live coding 4

# Exercises part 1


# Reading and writing data

## Reading in data

Of course we're not always going to fabricate data in `R` ourselves

We get data from somewhere

Many different software packages and there are perhaps many or more ways to represent data

## Shapes and sizes

`.sav`, `.csv`, `.txt`, `.dat`, `.RData` ... 

`R` functions: `read.*`

More exotic stuff requires e.g. `library(foreign)` (with such functions as `read.spss()` and `read.ssd()`)

## Writing data

Code looks very similar to reading

`R` functions: `write.*`

# read / write | Live coding 5: 

# Exercises part 2

# Data Manipulation

## Data Manipulation: in general

Now that we've got the basics of `data.frame` covered we can start with 'transforming' the data

To get data from one shape, into another (e.g. short format versus long format)

Often you'll want to apply a particular operation, for example on a single data point, repeatedly (once for each data point)

## Data Manipulation: `Tidyverse`

These days almost everybody (especially data scientists) adhere to `Tidyverse` principles: 

This is a good coding practice mentality in `R` stimulated by a set of packages from influential people (most working at RStudio) with a common theme: "keep things `tidy`".

We'll talk about `tidyverse' in the second part of the course.

## Topics of Data Manipulation 

For now:

Indexing and filtering continued

Ordering and sorting

`apply`ing functions


# `apply()` | Live coding 6


# Exercises part 3


## Self study

Finish exercises of today

The homework exercises

Matloff chapters 3.8, 4, 5, 6.

<!-- Soon$^{tm}$: advanced exercises -->

## Next week

* Functions continued
* Factors
* Tables 
* Arrays
* Towards Programming

