# webhook
A webhookd container WITH PYTHON RUNTIME AND NATS COMPATIBILITY

## compose
```yaml
services:
  webhookd:
    container_name: webhookd
    image: ghcr.io/axjab/webhookd:latest
    restart: unless-stopped
    ports:
    - "8080:8080"
    environment:
      WHD_HOOK_SCRIPTS: /scripts
      NATS_URL: ${NATS_URL}
    volumes:
    - /srv/hook:/scripts:ro
    networks:
      - nats

networks:
  nats:
    external: true
```
