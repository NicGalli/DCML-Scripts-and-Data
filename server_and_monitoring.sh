#!/bin/bash
cd /exchange_dir
source top_monitoring_docker.sh & source tshark_monitoring_docker.sh & java -jar Hospital-1.0.0-jar-with-dependencies.jar

