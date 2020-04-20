FROM prestevez/r-pres
MAINTAINER "Patricio R. Estévez Soto" patricio.estevez@ucl.ac.uk

## Install blogdown and Hugo
RUN R -e --no-site-file "install.packages('blogdown'); blogdown::install_hugo()" \
