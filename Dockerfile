FROM alpine:3.10.1

ENV ANSIBLE_VERSION="2.8.2"

RUN apk --update add python3 py3-pip openssl ca-certificates && \
    apk --update add --virtual build-deps \
        python3-dev libffi-dev openssl-dev build-base && \
    pip3 install --upgrade pip cffi && \
    pip3 install ansible==${ANSIBLE_VERSION} && \
    apk del build-deps && \
    rm -rf /var/cache/apk*

# default behaviour
CMD [ "ansible"]
