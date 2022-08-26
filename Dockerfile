FROM --platform=linux/amd64 freeradius/freeradius-server:latest

COPY raddb/ /etc/raddb/

EXPOSE 1812/udp
EXPOSE 1813/udp