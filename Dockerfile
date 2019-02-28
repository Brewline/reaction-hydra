FROM oryd/hydra:v1.0.0-beta.9-alpine

ENV DATABASE_URL $DATABASE_URL
ENV PUBLIC_PORT $PORT

RUN ["hydra", "migrate", "sql", "-e"]
CMD ["serve", "public"]
