nginx_container
===============

Basic NGINX container logging accesses for exporting to Prometheus. The
container is based off the `nginx:1.13.12-alpine` container.

This container creates the access log as `/var/log/nginx/access.log` to allow
post processing of the access log by something like the
`hickey/prometheus-nginx-exporter` container. Another consideration is that
because the log is written to disk instead of stdout, one will need to setup
a log rotation so that the log file does not grow without bounds. One could
use a container like `hickey/periodic` to automate the log rotation.
