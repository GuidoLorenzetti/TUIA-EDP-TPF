FROM ubuntu:22.04
LABEL mantainer "Kidonakis, Lorenzetti, Pozzo"
RUN apt-get update && apt-get install --no-install-recommends -y && apt-get clean && rm -rf /var/lib/apt/lists/*
COPY . . 
WORKDIR /
RUN chmod +x /main.sh
CMD ["bash", "/main.sh"]
