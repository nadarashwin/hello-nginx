FROM ubuntu:14.04 
MAINTAINER Ashwin Balakrishnan <abalakrishnan@opentable.com>

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y nginx bash curl

ENV APP_HOME /app
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

ADD . $APP_HOME
ENTRYPOINT ["/bin/bash", "/app/start_services.sh"]
#CMD ["nginx", "-g", "daemon off;"]
