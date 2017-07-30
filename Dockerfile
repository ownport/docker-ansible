FROM alpine:3.6

ARG ANSIBLE_VERSION

RUN apk --update add python py-pip openssl ca-certificates && \
    apk --update add --virtual build-deps \
        python-dev libffi-dev openssl-dev build-base && \
    pip install --upgrade pip cffi && \
    pip install ansible${ANSIBLE_VERSION} && \
    apk del build-deps && \
    rm -rf /var/cache/apk*

# default behaviour
CMD [ "ansible"]
