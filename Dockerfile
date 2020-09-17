FROM prestevez/r-pres
MAINTAINER "Patricio R. Estévez Soto" patricio.estevez@ucl.ac.uk

## Install blogdown
RUN install2.r --error \
    blogdown \
    ## Install Hugo
    && R -e "options(blogdown.hugo.dir = '/bin'); blogdown::install_hugo()" 

# Download and install Go
RUN wget -c https://golang.org/dl/go1.15.2.linux-amd64.tar.gz \
    && tar -C /usr/local -xvzf go1.15.2.linux-amd64.tar.gz \
    && rm go1.15.2.linux-amd64.tar.gz

# Place go binary in PATH where it is discoverable by R
#ENV PATH="$PATH:/usr/local/go/bin" # <- This doesn't work
RUN ln /usr/local/go/bin/go /usr/local/bin/go

# Install newer version of Hugo
Run wget -c -v https://github.com/gohugoio/hugo/releases/download/v0.75.1/hugo_0.75.1_Linux-64bit.deb \
    && sudo apt install ./hugo_0.75.1_Linux-64bit.deb \
    && rm hugo_0.75.1_Linux-64bit.deb
