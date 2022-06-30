#!/bin/bash
git clone https://github.com/Bahmni/openmrs-module-appointments
cd openmrs-module-appointments
mvn clean package
cp -rf omod/target/appointments-*-SNAPSHOT.omod .OpenMRS/modules/
