FROM node:20-alpine

ENV BW_CLI_VERSION=2023.10.0

RUN apk add python3 make g++ 

RUN npm install -g @bitwarden/cli@${BW_CLI_VERSION}

COPY entrypoint.sh /

ENTRYPOINT [ "sh", "/entrypoint.sh" ]

