FROM atlassian-jira

RUN apt-get clean -y && apt-get update -y && apt-get install postgresql-client -y;

COPY ./dbconfig.xml ./jira-data-generator-5.0.0.jar ./quickreload-5.0.2.jar ./quickreload.properties /opt/
COPY ./start.sh /opt/start.sh

CMD /opt/start.sh