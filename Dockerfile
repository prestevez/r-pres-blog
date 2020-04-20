FROM prestevez/r-pres
MAINTAINER "Patricio R. Estévez Soto" patricio.estevez@ucl.ac.uk

## Install blogdown
RUN install2.r --error \
    blogdown \
    ## Install Hugo
    && R -e "blogdown::install_hugo()"
