#FROM base
#RUN apt-get update

FROM scipy
RUN apt-get -y install r-base
RUN pip install rpy2
RUN apt-get -y install libcurl4-openssl-dev
#setup R configs
RUN echo "r <- getOption('repos'); r['CRAN'] <- 'http://cran.us.r-project.org'; options(repos = r);" > ~/.Rprofile
RUN Rscript -e "install.packages('yhatr')"
RUN Rscript -e "install.packages('ggplot2')"
RUN Rscript -e "install.packages('randomForest')"
RUN Rscript -e "install.packages('rpart')"
RUN Rscript -e "install.packages('e1071')"
RUN Rscript -e "install.packages('kknn')"
