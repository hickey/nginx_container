FROM nginx:1.13.12-alpine
MAINTAINER "Gerard Hickey <hickey@kinetic-compute.com>"

RUN rm /var/log/nginx/access.log
