# golem4bench

<!-- badges: start -->
<!-- badges: end -->

The goal of golem4bench is to provide a golem skeleton for benchmarking deployment strategies.

See: 

+ The related [GitHub Issue](https://github.com/ThinkR-open/golem/issues/33)
+ The Blog Post (to come on rtask)


## Deploy note 

Testing is done by variation of `run_app( "runApp" )` / `run_app( "shinyApp" )` / `run_app( "shinyAppDir" )`

### For local testing 

- Use the script `dev/run_dev.R`


``` r 
# Set options here
options(golem.pkg.name = "aaaa") # TRUE = production mode, FALSE = development mode
options( "golem.pkg.name" = "aaa")

# Detach all loaded packages and clean your environment
golem::detach_all_attached()
# rm(list=ls(all.names = TRUE))

# Document and reload your package
golem::document_and_reload()

# Run the application
aaaa::run_app(with = "runApp")

```

### Local docker test 

Using `inst/dockerfilelocal`

``` r 
R -e "devtools::build(path = 'inst/dockerfilelocal/')" \
    && cd inst/dockerfilelocal/ \
    && docker build -t aaa . \
    && docker run --name aaaa -p 1234:1234 -d aaa \
    && sleep 2 \
    && open http://0.0.0.0:1234 
```

### RStudio products 

Use the `app.R` file at the root of the packages

Local Shiny Server is built with: 

``` r 
mv inst/dockerfileshinyserver/Dockerfile Dockerfile \
    && docker build -t plop . \
    && docker run --name plop -p 3838:3838 -d plop \
    && sleep 2 \
    && open http://0.0.0.0:3838/aaaa
```

App can be sent to shinyappio and Connect with: 

``` r 
rsconnect::deployApp()
```
