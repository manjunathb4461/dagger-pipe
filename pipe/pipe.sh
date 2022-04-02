#!/usr/bin/env bash

CMD=${CMD:?'missing CMD variable'}

exec ./bin/dagger "${CMD}"