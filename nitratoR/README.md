
# nitratoR

**Explore NEON Data on nitrate level and water temperature of 3
different rivers in the US during 12 months (2023)**

Tidy datasets • Interactive Shiny App • Reproducible workflow

------------------------------------------------------------------------

The **nitratoR** package provides clean and ready-to-use water-quality
data from three NEON stream sites — *Arikaree* (**ARIK**), *Caribou*
(**CARI**), and *Lewis Run* (**LEWI**) — collected during 2023.  
It includes:

- `nitrate_tidy`: monthly nitrate concentrations (µmol/L)

- `temp_tidy`: monthly surface-water temperatures (°C)

- `monthly_median()`: a simple helper to extract a site-month median

- `launch_app()`: an interactive Shiny dashboard to explore patterns
  visually

The package was created for learning and communication purposes —
showing how to build, document, and deploy an R package with integrated
data, functions, and a Shiny app.

------------------------------------------------------------------------

## 🚀 Installation

You can install the development version from GitHub:

``` r
# install.packages("remotes")
# remotes::install_github("vivianng24/nitratoR")
```

## 🌐 Learn more

See additional resources:

``` r
# ?nitrate_tidy
# ?temp_tidy
# ?launch_app
# ?monthly_median
```

or visit the pkgdown site: 👉 <https://vivianng24.github.io/nitratoR/>
