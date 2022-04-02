#!/usr/bin/env bash

CMD=${CMD:?'missing CMD variable'}

exec dagger "${CMD}"