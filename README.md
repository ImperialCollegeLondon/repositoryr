
<!-- README.md is generated from README.Rmd. Please edit that file -->

# repositoryr

<!-- badges: start -->
<!-- badges: end -->

The goal of repositoryr is to provide a step by step guide to creating a
R package repository.

## Selecting a package name

To find suggestions on valid package names use
`available::suggest(text="description of what the package does")`. You
can also check whether the package name is available using
`available::available("pkgname")`.

<figure>
<img src="inst/images/using_available.png"
alt="Using available package" />
<figcaption aria-hidden="true">Using available package</figcaption>
</figure>

Alternatively, you can use
`pak::pkg_name_check("healthgpsrvis", dictionaries = NULL)`.

<figure>
<img src="inst/images/using_pak.png" alt="Using pak package" />
<figcaption aria-hidden="true">Using pak package</figcaption>
</figure>

## Installation

You can install the development version of repositoryr from
[GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("ImperialCollegeLondon/repositoryr")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(repositoryr)
## basic example code
```

What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks like so:

``` r
summary(cars)
#>      speed           dist       
#>  Min.   : 4.0   Min.   :  2.00  
#>  1st Qu.:12.0   1st Qu.: 26.00  
#>  Median :15.0   Median : 36.00  
#>  Mean   :15.4   Mean   : 42.98  
#>  3rd Qu.:19.0   3rd Qu.: 56.00  
#>  Max.   :25.0   Max.   :120.00
```

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date. `devtools::build_readme()` is handy for this.

You can also embed plots, for example:

<img src="man/figures/README-pressure-1.png" width="100%" />

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub and CRAN.
