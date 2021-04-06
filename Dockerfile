FROM mhart/alpine-node:10.23

WORKDIR /docs

RUN apk add --no-cache make gcc g++ git curl ruby ruby-dev jq
RUN npm config set unsafe-perm true

RUN gem install apiaryio  --no-rdoc --no-ri 
RUN npm install -g aglio
RUN npm install -g dredd
RUN npm install -g api-spec-converter
RUN npm install -g drafter
RUN npm install -g @apielements/cli
RUN npm install -g openapi-to-postmanv2
RUN npm install -g hercule