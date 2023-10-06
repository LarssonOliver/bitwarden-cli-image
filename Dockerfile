FROM node:20 

ENV BW_CLI_VERSION=2023.9.0

RUN npm install -g @bitwarden/cli@${BW_CLI_VERSION}

COPY entrypoint.sh /

CMD [ "/entrypoint.sh" ]
