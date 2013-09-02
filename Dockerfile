#FROM base
#RUN apt-get update

FROM scipy
#RUN apt-get -y install software-properties-common python g++ make git
#RUN apt-get -y install python-pip python-dev build-essential
RUN apt-get -y install r-base
#RUN apt-get -y install python-numpy python-scipy
#RUN easy_install pandas
RUN pip install rpy2
