FROM rocker/shiny:3.6.0
RUN R -e 'install.packages("remotes")'
RUN R -e 'remotes::install_github("r-lib/remotes", ref = "97bbf81")'
RUN R -e 'remotes::install_cran("shiny")'
RUN apt-get update && apt-get install libssl-dev libxml2-dev -y 
RUN R -e 'remotes::install_cran("attachment")'
RUN R -e 'remotes::install_github("thinkr-open/golem")'
COPY . /srv/shiny-server/aaaa
RUN cd /srv/shiny-server/aaaa && R -e "attachment::install_from_description()"