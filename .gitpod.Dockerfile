FROM gitpod/workspace-full

USER root

RUN curl -o /usr/local/bin/kubectl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" && \
    chmod +x /usr/local/bin/kubectl

#RUN curl -o /usr/local/bin/helm -LO "https://get.helm.sh/helm-v3.6.3-linux-amd64.tar.gz" && \
#    chmod +x /usr/local/bin/helm

RUN curl -o /usr/local/bin/kind -LO "https://kind.sigs.k8s.io/dl/v0.11.1/kind-linux-amd64" && \
    chmod +x /usr/local/bin/kind

RUN curl -o /usr/local/bin/argocd  -LO "https://github.com/argoproj/argo-cd/releases/latest/download/argocd-linux-amd64" && \
    chmod +x /usr/local/bin/argocd 

RUN curl -o /usr/local/bin/kubectl-argo-rollouts  -LO "https://github.com/argoproj/argo-rollouts/releases/latest/download/kubectl-argo-rollouts-linux-amd64" && \
    chmod +x /usr/local/bin/kubectl-argo-rollouts 

ENV KUBECONFIG=/tmp/kubeconfig