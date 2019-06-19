#' Run the Shiny Application
#'
#' @export
#' @importFrom shiny runApp shinyApp shinyAppDir
run_app <- function(
  with = c("shinyApp", "runApp", "shinyAppDir")
) {
  with <- match.arg(with)
  # Here, we set local options so we can pass 
  # arguments to the run_app() function
  options("shinycall" = with)
  on.exit(
    options("shinycall" = NULL)
  )
  if (with == "shinyApp"){
    shiny::shinyApp(ui = app_ui(), server = app_server)
  } else if (with == "runApp") {
    shiny::runApp(system.file("app", package = "aaaa"))
  } else {
    shiny::shinyAppDir(system.file("app", package = "aaaa"))
  }
}