FROM base

RUN apt-get update

RUN apt-get -y install software-properties-common python g++ make git
RUN apt-get install python-pip python-dev build-essential
RUN apt-get install r-base
RUN apt-get install python-numpy python-scipy
RUN easy_install pandas
RUN pip install rpy2
