# Build the manager binary
FROM quay.io/operator-framework/helm-operator:v1.10.1

ENV HOME=/opt/helm
COPY watches.yaml ${HOME}/watches.yaml
COPY helm-charts/falcon-sensor  ${HOME}/helm-charts/falcon-sensor
WORKDIR ${HOME}
