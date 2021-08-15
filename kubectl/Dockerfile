FROM alpine:3.14.1

ARG AWS_VERSION="1.20.21"
ARG KUBE_VERSION="v1.21.4"

RUN apk add ca-certificates curl py-pip py3-pip \
    && pip3 install --upgrade pip "awscli==${AWS_VERSION}" \
    && curl --silent -L https://storage.googleapis.com/kubernetes-release/release/${KUBE_VERSION}/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl \
    && chmod +x /usr/local/bin/kubectl \
    && curl --silent -L https://amazon-eks.s3.us-west-2.amazonaws.com/1.21.2/2021-07-05/bin/linux/amd64/aws-iam-authenticator -o /usr/local/bin/aws-iam-authenticator \
    && chmod +x /usr/local/bin/aws-iam-authenticator

