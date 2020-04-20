FROM prestevez/r-pres
MAINTAINER "Patricio R. Estévez Soto" patricio.estevez@ucl.ac.uk

## Install blogdown
RUN R --no-site-file -e "install.packages('blogdown')" \
    ## Install Hugo
    && R --no-site-file -e "blogdown::install_hugo()"
