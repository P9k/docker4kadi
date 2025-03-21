# docker4kadi 
Docker installation for the Kadi4Mat software -> **WORK IN PROGRESS**

## Goal
Generate an out-of-the-box solution to install the generic and open source virtual research environment [Kadi4Mat](https://kadi.iam.kit.edu/) containerized using [Docker Compose](https://docs.docker.com/compose/).

## Note
The configuration is not yet functional, but a work in progress. 

The purpose of this repository is to work together with the community and the developers to get a working Docker Compose setup for this software.

## Resources

[Here you can find the original installation instructions](https://kadi.readthedocs.io/en/stable/installation/production/index.html#production) from the developers. It will probably be necessary to translate the steps from the [manual installation](https://kadi.readthedocs.io/en/stable/installation/production/manual.html) and the [automated installation script](https://kadi.readthedocs.io/en/stable/installation/production/script.html) into the Docker environment.

## How build with Docker Compose
1. Install Docker and Docker Compose on your system (Linux, MacOS, Windows)
2. Clone this repository: `git clone https://github.com/P9k/docker4kadi.git`
3. Change into the directory and execute `docker-compose up --build`
4. You should see how the different services (Postgres, Elasticsearch etc.) are starting, but eventually it will just hang when the uWSGI part is being called

