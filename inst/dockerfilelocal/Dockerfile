FROM rocker/tidyverse:3.6.0
RUN R -e 'install.packages("remotes")'
RUN R -e 'remotes::install_github("r-lib/remotes", ref = "97bbf81")'
RUN R -e 'remotes::install_cran("shiny")'
COPY aaaa_*.tar.gz /app.tar.gz
RUN R -e 'remotes::install_local("/app.tar.gz")'
EXPOSE 80
CMD R -e "options('shiny.port'=1234,shiny.host='0.0.0.0', 'golem.pkg.name' = 'aaa');aaaa::run_app( 'shinyAppDir' )" # also with shinyApp & shinyAppDir