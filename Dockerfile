FROM oryd/hydra:v1.0.0-beta.9-alpine

ARG PORT

ENV DATABASE_URL=$DATABASE_URL \
    PUBLIC_PORT=$PORT \
    OAUTH2_ISSUER_URL=$OAUTH2_ISSUER_URL \
    OAUTH2_CONSENT_URL=$OAUTH2_CONSENT_URL \
    OAUTH2_LOGIN_URL=$OAUTH2_LOGIN_URL \
    DATABASE_URL=$DATABASE_URL \
    SYSTEM_SECRET=$SYSTEM_SECRET \
    OAUTH2_SHARE_ERROR_DEBUG=$OAUTH2_SHARE_ERROR_DEBUG \
    OIDC_SUBJECT_TYPES_SUPPORTED=$OIDC_SUBJECT_TYPES_SUPPORTED \
    OIDC_SUBJECT_TYPE_PAIRWISE_SALT=$OIDC_SUBJECT_TYPE_PAIRWISE_SALT

# ENTRYPOINT sh -c

# CMD ["hydra", "migrate", "sql", "-e"]
CMD ["serve", "public"]

# CMD hydra serve public
