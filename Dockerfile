FROM oryd/hydra:v1.0.0-beta.9-alpine

ENV DATABASE_URL=$DATABASE_URL \
    OAUTH2_ISSUER_URL=$OAUTH2_ISSUER_URL \
    OAUTH2_CONSENT_URL=$OAUTH2_CONSENT_URL \
    OAUTH2_LOGIN_URL=$OAUTH2_LOGIN_URL \
    DATABASE_URL=$DATABASE_URL \
    SYSTEM_SECRET=$SYSTEM_SECRET \
    OAUTH2_SHARE_ERROR_DEBUG=$OAUTH2_SHARE_ERROR_DEBUG \
    OIDC_SUBJECT_TYPES_SUPPORTED=$OIDC_SUBJECT_TYPES_SUPPORTED \
    OIDC_SUBJECT_TYPE_PAIRWISE_SALT=$OIDC_SUBJECT_TYPE_PAIRWISE_SALT

# CMD ["hydra", "migrate", "sql", "-e"]
# CMD ["serve", "public"]

ENTRYPOINT PUBLIC_PORT=$PORT hydra

CMD ["serve", "public"]
