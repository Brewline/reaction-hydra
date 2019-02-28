FROM oryd/hydra:v1.0.0-beta.9-alpine

# ENV DATABASE_URL=$DATABASE_URL \
#     OAUTH2_ISSUER_URL=$OAUTH2_ISSUER_URL \
#     OAUTH2_CONSENT_URL=$OAUTH2_CONSENT_URL \
#     OAUTH2_LOGIN_URL=$OAUTH2_LOGIN_URL \
#     DATABASE_URL=$DATABASE_URL \
#     SYSTEM_SECRET=$SYSTEM_SECRET \
#     OAUTH2_SHARE_ERROR_DEBUG=$OAUTH2_SHARE_ERROR_DEBUG \
#     OIDC_SUBJECT_TYPES_SUPPORTED=$OIDC_SUBJECT_TYPES_SUPPORTED \
#     OIDC_SUBJECT_TYPE_PAIRWISE_SALT=$OIDC_SUBJECT_TYPE_PAIRWISE_SALT \
#     PUBLIC_PORT=$PORT

# CMD ["hydra", "migrate", "sql", "-e"]
# CMD ["serve", "public"]

# ENTRYPOINT ["hydra"]

# CMD export PUBLIC_PORT=$PORT
# RUN export PUBLIC_PORT=$PORT
# CMD ["serve", "public"]

# FROM oryd/hydra:v1.0.0-beta.9-alpine
# ENTRYPOINT /bin/sh -c
# CMD (export PUBLIC_PORT=$PORT && hydra serve public)

# FROM oryd/hydra:v1.0.0-beta.9-alpine
# CMD export PUBLIC_PORT=$PORT
# RUN export PUBLIC_PORT=$PORT
# CMD ["serve", "public"]

FROM oryd/hydra:v1.0.0-beta.9-alpine
COPY ./bin/heroku.sh /
RUN chmod a+x /heroku.sh

ENTRYPOINT ["/bin/sh"]

CMD ["/heroku.sh"]
