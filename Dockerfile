FROM timhaak/base:latest
MAINTAINER tim@haak.co.uk

RUN add-apt-repository -y  ppa:jcfp/ppa && \
    sudo apt-add-repository ppa:mc3man/trusty-media && \
    apt-get -q update && \
    apt-get install -qy --force-yes  sabnzbdplus sabnzbdplus-theme-classic sabnzbdplus-theme-mobile sabnzbdplus-theme-plush ffmpeg\
    par2 python-yenc unzip unrar && \
    apt-get -y autoremove && \
    apt-get -y clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /tmp/*

VOLUME ["/config","/data"]

EXPOSE 8080 9090

CMD ["/usr/bin/sabnzbdplus","--config-file","/config","--console"]
