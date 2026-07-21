
ARG VERSION

# FROM ncarlier/webhookd:${VERSION}
FROM ncarlier/webhookd:${VERSION}-distrib
USER root
RUN apk add --no-cache python3 py3-pip curl  # <-- --------------------------- NEW!
USER webhookd
