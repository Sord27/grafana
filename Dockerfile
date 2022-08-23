ARG GRAFANA_VERSION=9.1.0

FROM docker.io/grafana/grafana:${GRAFANA_VERSION}

RUN apk update && apk add -y nano

COPY /provisioning /etc/grafana/

ENV GF_SECURITY_ADMIN_USER=admin
ENV GF_SECURITY_ADMIN_PASSWORD=admin123
ENV GF_USERS_ALLOW_SIGN_UP=true

EXPOSE 3000
