FROM islasgeci/base:22.04
RUN R -e "install.packages(c('optparse', 'comprehenr'), repos='http://cran.rstudio.com')"
COPY . /workdir
