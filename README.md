
<!-- README.md is generated from README.Rmd. Please edit that file -->

# repositoryr

<!-- badges: start -->
<!-- badges: end -->

The goal of repositoryr is to provide a step by step guide to creating a
R package repository.

## Requirements

- RStudio installed: You will need R and RStudio both installed. You can
  do so either by:

  - Download [RStudio Desktop](https://posit.co/downloads/) OR
  - Use [Posit Cloud](https://posit.cloud/) (online) OR
  - Install it via Chocolatey (first install R using
    `choco install r.project` and then RStudio using
    `choco install r.studio`) OR
  - Install it via Homebrew.

## Selecting a package name

Install the package `available` in RStudio using
`install.packages("available")`. To find suggestions on valid package
names use
`available::suggest(text="description of what the package does")`. You
can also check whether the package name is available using
`available::available("pkgname")`.

<figure>
<img src="inst/images/using_available.png" style="width:50.0%"
alt="Using available package" />
<figcaption aria-hidden="true">Using available package</figcaption>
</figure>

Alternatively, you can use
`pak::pkg_name_check("healthgpsrvis", dictionaries = NULL)`. (Note: To
install `pak`, use `install.packages("pak")`).

<figure>
<img src="inst/images/using_pak.png" style="width:50.0%"
alt="Using pak package" />
<figcaption aria-hidden="true">Using pak package</figcaption>
</figure>

## Creating a package

- In RStudio go to File -\> New Project -\> New Directory -\> R Package.
- Write the name of the package and select using renv and initialise
  git.
- This will create a minimal package structure.

## Create and connect with a GitHub repository

- Create a new repository on GitHub using the same name as the package.
- Set the visibility permissions of this repository as suitable but DO
  NOT initialise this repository with anything.
- Copy a clone URL of the repository to your clipboard.

More details: [Create and connect a GitHub
repo](https://happygitwithr.com/existing-github-last.html#create-and-connect-a-github-repo-without-usethis)

## Connect local repo to GitHub repo

- Click on the “two purple boxes and a white square” in the Git pane.
- Click “Add remote”.
- Paste the GitHub repo’s URL here and pick a remote name, say, `origin`
  and click “Add”.
- Enter main as the branch name and make sure “Sync branch with remote”
  is checked and click “Create”.

## Connect local repo to GitHub repo with the command line

- In a shell, run the following (substituting with your URL):

<!-- -->

    git remote add origin https://github.com/ImperialCollegeLondon/repositoryr
    git push --set-upstream origin main

- You should now be able to see all the project files you committed on
  the GitHub repo browser.

## Using `devtools`

- Install devtools in RStudio using `install.packages("devtools")`.
- It is a set of packages that support various aspects of package
  development (it includes the `usethis` package too).

## Using `devtools::check()`

- At this stage, you can try `devtools::check()` to see if there are any
  issues with the package.
- It should raise an issue about missing/non-standard license in the
  `DESCRIPTION` file. It will be fixed soon!

## Update `DESCRIPTION` file

- The `DESCRIPTION` file contains the metadata of your package. You can
  add some descriptive text about your package under `Title` and
  `Description` fields. You can also fill in the author and maintainer
  details.
- Manually add BSD-3-Clause license (recommended) first to your
  repository and then to the `DESCRIPTION` file.
- Run `devtools::check()` to verify if everything works (As of now, it
  raises a note “Licence stub is invalid DCF.”)

## Add R files and corresponding unit tests

- Create a R function file using `usethis::use_r("filename")`.
- A `filename.R` file will be created under the `R/` directory which you
  can populate.
- Create a corresponding unit test file using
  `usethis::use_test("filename")`.
- A `test-filename.R` file will be created under the `tests/testthat/`
  directory where you can add the unit tests.

## Setup documentation

- Use `devtools::document` to set up the documentation for your package.
- Delete the template `R/hello.R` file.
- Now open any other R file (that you created) where you want add the
  documentation (here it is, the `R/add.R` file).
- Put the cursor somewhere in the function definition. Then do,
  `Code > Insert roxygen skeleton`. A comment structure should appear
  above your function, in which each line begins with \#’.
- Edit the comments suitably. If a `NAMESPACE` file already exists,
  please delete it so that it can be automatically generated by
  `roxygen2`. To do so, run `devtools::document()` this will also create
  the corresponding `filename.Rd` file in `man/filename.Rd` using
  `roxygen2`.

## Build a README

- Use `usethis::use_readme_rmd()` to initialize a basic, executable
  `README.Rmd` file.
- In the `README.Rmd` you can add the purpose of the package, provide
  installation instructions, and show an example of how the package can
  be used.
- Remember to render the `README.Rmd` file to make the `README.md` file.
  You can do this by running `devtools::build_readme()`.

## Create website for your package

- Run `install.packages("pkgdown")`.
- To configure the package to use and deploy pkgdown, run
  `usethis::use_pkgdown_github_pages()`.
- To preview your site locally before publishing, run
  `pkgdown::build_site()`.
- This will add the necessary components and sets up GitHub Actions for
  automatic site building when deploying.
- Your `README.md` becomes the homepage, documentation in `man/`
  generates a function reference, and vignettes will be rendered into
  `articles/`.

## Installation

You can install the development version of repositoryr from
[GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("ImperialCollegeLondon/repositoryr")
```