FROM oryd/hydra:v1.0.0-beta.9-alpine

ENV DATABASE_URL $DATABASE_URL
ENV PUBLIC_PORT $PORT
ENV OAUTH2_ISSUER_URL $OAUTH2_ISSUER_URL
ENV OAUTH2_CONSENT_URL $OAUTH2_CONSENT_URL
ENV OAUTH2_LOGIN_URL $OAUTH2_LOGIN_URL
ENV DATABASE_URL $DATABASE_URL
ENV SYSTEM_SECRET $SYSTEM_SECRET
ENV OAUTH2_SHARE_ERROR_DEBUG $OAUTH2_SHARE_ERROR_DEBUG
ENV OIDC_SUBJECT_TYPES_SUPPORTED $OIDC_SUBJECT_TYPES_SUPPORTED
ENV OIDC_SUBJECT_TYPE_PAIRWISE_SALT $OIDC_SUBJECT_TYPE_PAIRWISE_SALT

RUN echo "PORT is '$PORT'"

CMD ["migrate", "sql", "-e"]
CMD ["serve", "public"]
