FROM oryd/hydra:v1.0.0-beta.9-alpine

RUN hydra migrate sql -e
CMD export PUBLIC_PORT=$PORT; hydra serve public
