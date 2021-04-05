# Example of a docker-based development setup for Atlassian Jira

This is an example project aimed at demonstrating how to use the official 
Atlassian Jira Software docker container (https://hub.docker.com/r/atlassian/jira-software)
when developing P2 apps for Server/Data Center.

The code base includes an example app created using `atlas-create-jira-plugin`.

## Quick demo

If you want to take it for a quick spin, clone this repository and run `docker-compose up`.
This will start Atlassian Jira (without the app installed). Once the docker container has started 
Jira will become available on http://localhost:8080

To see the actual app installed, run `atlas-mvn package` in the root directory.
This will compile the app and place the JAR file in `./target`. 

QuickReload will detect the changes and install the app in your Jira instance. 

If you want to see the Jira application logs and track the QuickReload installation, 
run `docker-compose exec jira tail -f -n 5000 /var/atlassian/application-data/jira/log/atlassian-jira.log` 
from the root directory.

## Using it for your own app

To use this for developing your own app, you will need to copy the `docker-compose.yml` file and `.docker` folder.

Afterwards run

```
docker-compose up -d
```

Wait 1-2 minute(s) and open http://localhost:8080. You will need to go through the Jira set-up process and
provide a valid license. Configure the application as desired. Once you've finished configuring Jira, you can install the app (and any updates) by running

```
atlas-mvn package
```

This will create a new JAR file in `./target` which will be picked up by QuickReload and installed in your Jira instance.

## Debugging your app

The Jira instance is started with JVM debugging enabled. You can connect your IDE to remote debugging on port 5005

In addition, you can check the Atlassian Jira application log by running

```
docker-compose exec jira tail -f -n 5000 /var/atlassian/application-data/jira/log/atlassian-jira.log
```
