FROM gliderlabs/alpine:edge
RUN apk add --no-cache nodejs
RUN apk add --no-cache git

RUN mkdir /web

WORKDIR /web

ADD package.json package.json
RUN npm install

ADD . /web

EXPOSE 3000
CMD ["node", "/web/bin/www"]

