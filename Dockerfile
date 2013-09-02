#FROM base
#RUN apt-get update

FROM scipy
RUN apt-get -y install r-base
RUN pip install rpy2
RUN Rscript -e "install.packages('yhatr')"


