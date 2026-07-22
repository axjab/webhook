ARG VERSION

FROM ncarlier/webhookd:${VERSION}

USER root

RUN apk add --no-cache \
    python3 \
    py3-pip \
    curl \
    git

RUN pip install --no-cache-dir \
    nats-py \
    requests \
    httpx

USER webhookd
