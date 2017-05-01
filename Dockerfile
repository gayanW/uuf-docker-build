#
# Oracle Java 8 Dockerfile
#
# https://github.com/dockerfile/java
# https://github.com/dockerfile/java/tree/master/oracle-java8
#

# Pull base image.
FROM openjdk:8-jre

RUN adduser --disabled-password --gecos '' gayanw && adduser gayanw sudo && echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

ADD wso2uuf-1.0.0-m14 /home/gayanw/carbon-uuf
RUN chown -R gayanw:gayanw /home/gayanw/carbon-uuf
RUN chmod +x /home/gayanw/carbon-uuf/bin/carbon.sh

USER gayanw 
expose 8443 8080 
# Define default command.
CMD ["/home/gayanw/carbon-uuf/bin/carbon.sh"]
