FROM alpine:3.12
RUN wget https://github.com/stackrox/kube-linter/releases/download/0.1.1/kube-linter-linux.tar.gz && \
    tar -xzf kube-linter-linux.tar.gz && \
    mv kube-linter /usr/local/bin && \
    rm kube-linter-linux.tar.gz
ENTRYPOINT ["kube-linter"]
