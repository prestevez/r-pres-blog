FROM prestevez/r-pres
MAINTAINER "Patricio R. Estévez Soto" patricio.estevez@ucl.ac.uk

## Install blogdown
RUN install2.r --error \
    blogdown \
    ## Install Hugo
    && R -e "options(blogdown.hugo.dir = '/bin'); blogdown::install_hugo()" 

# Download and install Go
RUN wget -c https://golang.org/dl/go1.15.2.linux-amd64.tar.gz \
    && tar -C /usr/local -xvzf go1.15.2.linux-amd64.tar.gz

ENV PATH="$PATH:/usr/local/go/bin"
