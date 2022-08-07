FROM ubuntu
MAINTAINER Kidonakis, Lorenzetti, Pozzo

RUN apt-get update && apt-get install -y

COPY main.sh /main.sh
COPY scripts /scripts
COPY Textos /Textos
COPY functions.sh /functions.sh
RUN chmod +x /main.sh
RUN /main.sh
#CMD /main.sh

#CMD ["bash", "/main.sh"]
