FROM python:2.7
MAINTAINER Christophe de saint leger<cdesaintleger@odiso.com>

RUN pip install supervisor
RUN mkdir /etc/supervisord_jobs/
COPY supervisord.conf /etc/supervisord.conf

EXPOSE 9001/tcp

CMD ["/usr/local/bin/supervisord"]
