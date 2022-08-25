ARG GRAFANA_VERSION=9.1.0

FROM docker.io/grafana/grafana:${GRAFANA_VERSION}

COPY /provisioning /etc/grafana/provisioning

ENV GF_USERS_ALLOW_SIGN_UP=true
