FROM atlassian/jira-software:latest

RUN apt update -y && apt install postgresql-client -y;

COPY ./dbconfig.xml ./quickreload-3.0.0.jar ./quickreload.properties /opt/
COPY ./start.sh /opt/start.sh

CMD /opt/start.sh