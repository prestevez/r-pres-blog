FROM prestevez/r-pres
MAINTAINER "Patricio R. Estévez Soto" patricio.estevez@ucl.ac.uk

## Install blogdown
RUN R --vanilla -e "install.packages('blogdown')" \
    ## Install Hugo
    && R --vanilla -e "blogdown::install_hugo()"
