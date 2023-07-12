FROM python:3.11.4-slim-bookworm

ARG USERNAME="nonroot"
ARG ANSIBLE_VERSION="8.1.0"
ARG ANSIBLE_LINT_VERSION="6.17.2"
ARG AWS_VERSION="1.29.2"
ARG KUBE_VERSION="1.27.3"
ARG HELM_VERSION="3.12.0"

RUN groupadd --gid 1000 $USERNAME && \
    useradd --uid 1000 --gid 1000 -m $USERNAME
RUN apt-get update && \
    apt-get -y install ca-certificates rsync sshpass openssh-client curl git && \
    curl --silent -L https://storage.googleapis.com/kubernetes-release/release/v${KUBE_VERSION}/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl && \
    chmod +x /usr/local/bin/kubectl && \
    curl --silent -L https://get.helm.sh/helm-v${HELM_VERSION}-linux-amd64.tar.gz -o helm.tar.gz && \
    tar xf helm.tar.gz && mv linux-amd64/helm /usr/local/bin/helm && \
    curl --silent -L https://amazon-eks.s3.us-west-2.amazonaws.com/1.21.2/2021-07-05/bin/linux/amd64/aws-iam-authenticator -o /usr/local/bin/aws-iam-authenticator && \
    chmod +x /usr/local/bin/aws-iam-authenticator && \
    rm -rf /var/lib/apt/lists/*

USER $USERNAME
WORKDIR /home/$USERNAME/

ENV PATH=$PATH:/home/$USERNAME/.local/bin

RUN pip install --no-cache-dir --upgrade pip \
    "awscli==${AWS_VERSION}" \
    "ansible==${ANSIBLE_VERSION}" \
    "ansible-lint==${ANSIBLE_LINT_VERSION}" \
    boto3 botocore

CMD ["bash"]
