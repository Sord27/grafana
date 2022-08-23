ARG GRAFANA_VERSION=9.1.0

FROM grafana/grafana:${GRAFANA_VERSION}
COPY /provisioning /etc/grafana/provisioning

ENV GF_SECURITY_ADMIN_USER=admin
ENV GF_SECURITY_ADMIN_PASSWORD=admin123
ENV GF_USERS_ALLOW_SIGN_UP=false
