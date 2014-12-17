FROM debian:stable

MAINTAINER Piero Steinger <piero@steinger.eu>

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y \
  git \
  python2.7 \
  python-dev \
  python-pip \
  && apt-get clean && rm -rf /var/lib/apt/lists/*

# clone repo
ENV DNDTOOLS_REPO /dndtoolsrepo
RUN git clone https://github.com/antoinealb/dndtools.git $DNDTOOLS_REPO
WORKDIR $DNDTOOLS_REPO

# load data into $DATA_DIR
ENV DATA_DIR /data
RUN mkdir $DATA_DIR && chown 777 $DATA_DIR
COPY files/ $DATA_DIR/

# run install
RUN pip install https://github.com/etianen/django-reversion/archive/release-1.3.3.zip && \
  pip install -r requirements.txt && \
  ln -s $DATA_DIR/local.py dndtools/local.py

EXPOSE 8000

CMD ["/data/runscript.sh"]

