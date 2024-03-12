FROM islasgeci/base:1.0.0
RUN R -e "install.packages(c('optparse', 'comprehenr'), repos='http://cran.rstudio.com')"
COPY . /workdir
