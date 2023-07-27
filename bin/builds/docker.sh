#!/usr/bin/env bash

if [ "${*}" == "bundle exec rails server -b 0.0.0.0" ]; then
  bundle exec rails db:migrate
  bundle exec rails assets:precompile
fi

exec "$@"
