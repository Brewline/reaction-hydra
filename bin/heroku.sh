#!/bin/sh
export DATABASE_URL=$DATABASE_URL
export OAUTH2_ISSUER_URL=$OAUTH2_ISSUER_URL
export OAUTH2_CONSENT_URL=$OAUTH2_CONSENT_URL
export OAUTH2_LOGIN_URL=$OAUTH2_LOGIN_URL
export DATABASE_URL=$DATABASE_URL
export SYSTEM_SECRET=$SYSTEM_SECRET
export OAUTH2_SHARE_ERROR_DEBUG=$OAUTH2_SHARE_ERROR_DEBUG
export OIDC_SUBJECT_TYPES_SUPPORTED=$OIDC_SUBJECT_TYPES_SUPPORTED
export OIDC_SUBJECT_TYPE_PAIRWISE_SALT=$OIDC_SUBJECT_TYPE_PAIRWISE_SALT
export PUBLIC_PORT=$PORT

# I know, I know, but the outer connection (client-heroku) is secure
hydra serve public --dangerous-force-http
