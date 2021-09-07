FROM node:14.17.6-slim

ARG APP_USER=node
ARG APP_USERGROUP=node

RUN mkdir /app && chown -R ${APP_USER}:${APP_USERGROUP} /app && \
    mkdir /app/code && chown -R ${APP_USER}:${APP_USERGROUP} /app/code

# Node image already has node user, using it here
USER ${APP_USER}

WORKDIR /app/code

CMD ["sleep", "infinity"]
