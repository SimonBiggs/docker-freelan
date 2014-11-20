FROM simonbiggs/geant4-examples

RUN apt-get update && apt-get -y upgrade;\
    apt-get -y install \
    curl \
    libghc-iconv-dev \
    libssl-dev scons

RUN cd ~/github/; \
    git clone https://github.com/freelan-developers/freelan-all.git; \
    cd ~/github/freelan-all/; \
    scons install --prefix=/usr/local/
    
RUN mkdir -p /etc/freelan2/; \
    cp -p ~/github/freelan-all/apps/freelan/config/freelan.cfg /etc/freelan2/freelan.cfg
