FROM bahmni/openmrs:latest
WORKDIR /usr/local/tomcat/
RUN apt-get install -y maven git default-jdk
COPY check-omod.sh .
RUN chmod +x check-omod.sh
RUN if [ ! -f "/var/lib/docker/volumes/bahmni-docker_openmrs-data/_data/appointments-*-SNAPSHOT.omod" ] ; then ./check-omod.sh; fi 
