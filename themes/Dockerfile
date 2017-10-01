FROM alpine

ARG MF2_VER=1.3.4

WORKDIR "/usr/src/redmine/public/themes"

RUN apk update && apk add ca-certificates wget

RUN wget https://github.com/akabekobeko/redmine-theme-minimalflat2/releases/download/v${MF2_VER}/minimalflat2-${MF2_VER}.zip && \
    unzip minimalflat2-${MF2_VER}.zip

VOLUME ["/usr/src/redmine/public/themes/minimalflat2"]
