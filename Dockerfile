FROM --platform=linux/amd64 ubuntu:latest

RUN apt update
RUN apt install freeradius -y
RUN echo "testing Cleartext-Password := \"password\"\n$(cat /etc/freeradius/3.0/mods-config/files/authorize)" > /etc/freeradius/3.0/mods-config/files/authorize

CMD [ "freeradius", "-X"]
