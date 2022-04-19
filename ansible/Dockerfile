FROM python:3.10.4-slim-bullseye

ARG USERNAME="nonroot"
ARG ANSIBLE_VERSION="5.6.0"
ARG ANSIBLE_LINT_VERSION="6.0.2"
ARG AWS_VERSION="1.22.97"
ARG KUBE_VERSION="1.21.11"
ARG HELM_VERSION="3.8.2"

RUN groupadd --gid 1000 $USERNAME && \
    useradd --uid 1000 --gid 1000 -m $USERNAME
RUN apt-get update && \
    apt-get -y install ca-certificates rsync sshpass openssh-client curl
RUN curl --silent -L https://storage.googleapis.com/kubernetes-release/release/v${KUBE_VERSION}/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl && \
    chmod +x /usr/local/bin/kubectl && \
    curl --silent -L https://get.helm.sh/helm-v${HELM_VERSION}-linux-amd64.tar.gz -o helm.tar.gz && \
    tar xf helm.tar.gz && mv linux-amd64/helm /usr/local/bin/heml && \
    curl --silent -L https://amazon-eks.s3.us-west-2.amazonaws.com/1.21.2/2021-07-05/bin/linux/amd64/aws-iam-authenticator -o /usr/local/bin/aws-iam-authenticator && \
    chmod +x /usr/local/bin/aws-iam-authenticator && \
    rm -rf /var/lib/apt/lists/*

USER $USERNAME
WORKDIR /home/$USERNAME/

RUN pip install --no-cache-dir --upgrade pip \
    "awscli==${AWS_VERSION}" \
    "ansible==${ANSIBLE_VERSION}" \
    "ansible-lint==${ANSIBLE_LINT_VERSION}"

CMD ["bash"]
