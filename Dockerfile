FROM islasgeci/base:latest
RUN R -e "install.packages(c('optparse', 'comprehenr'), repos='http://cran.rstudio.com')"
COPY . /workdir
