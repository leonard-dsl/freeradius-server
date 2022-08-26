# FROM --platform=linux/amd64 ubuntu:latest

# RUN apt update
# RUN apt install freeradius -y
# RUN echo "testing Cleartext-Password := \"password\"\n$(cat /etc/freeradius/3.0/mods-config/files/authorize)" > /etc/freeradius/3.0/mods-config/files/authorize

# EXPOSE 18120 1812 1813

# CMD [ "freeradius", "-X"]

FROM --platform=linux/amd64 freeradius/freeradius-server:latest

COPY raddb/ /etc/raddb/

EXPOSE 1812/udp
EXPOSE 1813/udp
