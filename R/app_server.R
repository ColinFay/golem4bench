#' @import shiny
app_server <- function(input, output,session) {
  output$global <- renderPrint({
    # Global options
    getOption('golem.pkg.name')
  })
  output$shinycall <- renderPrint({
    # Local options
    getOption('shinycall')
  })
}