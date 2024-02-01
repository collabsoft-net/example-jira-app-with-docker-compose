#/bin/bash
JIRA_VERSION=9.0.0

if [ ! -d ".docker/atlassian-jira" ];
then
  git clone --recurse-submodule https://bitbucket.org/atlassian-docker/docker-atlassian-jira.git .docker/atlassian-jira
else
  git pull
fi

(cd .docker/atlassian-jira && docker build --tag atlassian-jira --build-arg JIRA_VERSION=$JIRA_VERSION .)
docker-compose -f docker-compose.yml up --build