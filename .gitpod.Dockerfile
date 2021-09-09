FROM gitpod/workspace-full

USER root

RUN curl -o /usr/local/bin/kubectl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" && \
    chmod +x /usr/local/bin/kubectl

#RUN curl -o /usr/local/bin/helm -LO "https://get.helm.sh/helm-v3.6.3-linux-amd64.tar.gz" && \
#    chmod +x /usr/local/bin/helm

RUN curl -o /usr/local/bin/kind -LO "https://kind.sigs.k8s.io/dl/v0.11.1/kind-linux-amd64" && \
    chmod +x /usr/local/bin/kind

USER gitpod

ENV KUBECONFIG=/tmp/kubeconfig