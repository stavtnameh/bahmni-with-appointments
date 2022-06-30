FROM bahmni/openmrs:latest
RUN apt-get install -y maven git default-jdk
COPY check-omod.sh .
RUN chmod +x check-omod.sh
RUN if [ ! -f "/var/lib/docker/volumes/volume/_data/.OpenMRS/modules/target/appointments-*-SNAPSHOT.omod" ] ; then ./check-omod.sh; fi