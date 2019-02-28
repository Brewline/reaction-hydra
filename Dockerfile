FROM oryd/hydra:v1.0.0-beta.9-alpine

ENV DATABASE_URL $DATABASE_URL
ENV PUBLIC_PORT $PORT

CMD ["migrate", "sql", "-e"]
CMD ["serve", "public"]
