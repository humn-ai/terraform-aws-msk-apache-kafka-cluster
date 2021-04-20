FROM hashicorp/terraform

ARG git_username
ARG git_password

RUN git clone https://${git_username}:${git_password}@github.com/humn-ai/tf-mod-aws-msk-apache-kafka-cluster.git \
    && cd tf-mod-aws-msk-apache-kafka-cluster \
    && ls

WORKDIR /tf-mod-aws-msk-apache-kafka-cluster