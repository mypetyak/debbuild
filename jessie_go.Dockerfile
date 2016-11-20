FROM bunn/debbuild:jessie

RUN apt-get install -y \
    dh-systemd \
    wget

# install golang 1.7.3
RUN wget https://storage.googleapis.com/golang/go1.7.3.linux-amd64.tar.gz
RUN tar -C /usr/local -xzf go1.7.3.linux-amd64.tar.gz
RUN rm go1.7.3.linux-amd64.tar.gz
ENV GOPATH /pkg
ENV PATH $PATH:/usr/local/go/bin:gocode/bin
