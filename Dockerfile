FROM alpine:3.9

RUN apk add --update --no-cache bash

RUN wget -q -O - https://dl.dagger.io/dagger/install.sh  | DAGGER_VERSION=0.2.3 sh

COPY pipe /
COPY LICENSE.txt pipe.yml README.md /

RUN chmod a+x /*.sh

ENTRYPOINT ["/pipe.sh"]
