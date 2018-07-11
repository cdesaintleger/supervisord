FROM python:2.7
MAINTAINER Christophe de saint leger<cdesaintleger@odiso.com>

RUN pip install supervisor
#RUN apt update \
#    && apt install -y supervisor \
#    && rm -rf /var/lib/apt/lists/*

COPY supervisord.conf /etc/supervisord.conf

EXPOSE 9001/tcp

CMD ["/usr/local/bin/supervisord"]
