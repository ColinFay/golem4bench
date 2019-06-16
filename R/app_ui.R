#' @import shiny
app_ui <- function() {
  tagList(
    fluidPage(
      h1("aaaa"), 
      h2( getOption('golem.pkg.name') ), 
      verbatimTextOutput("global"),
      verbatimTextOutput("shinycall")
    )
  )
}

#' @import shiny
golem_add_external_resources <- function(){
  
  addResourcePath(
    'www', system.file('app/www', package = 'aaaa')
  )
 
  tags$head(
    golem::activate_js(),
    golem::favicon()
    # Add here all the external resources
    # If you have a custom.css in the inst/app/www
    # Or for example, you can add shinyalert::useShinyalert() here
    #tags$link(rel="stylesheet", type="text/css", href="www/custom.css")
  )
}
