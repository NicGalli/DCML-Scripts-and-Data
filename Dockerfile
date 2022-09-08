FROM ubuntu:focal
RUN apt update
RUN apt install -y tshark
RUN apt install -y tmux
RUN apt-get install -y openjdk-17-jre
RUN mkdir /hospital_files
RUN mkdir /hospital_files/patients_data
CMD ["/bin/bash"]
