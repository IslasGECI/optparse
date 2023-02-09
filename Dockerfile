FROM islasgeci/base:1.0.0
RUN R -e "install.packages('optparse', repos='http://cran.rstudio.com')"
COPY . /workdir
