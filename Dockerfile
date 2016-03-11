FROM gliderlabs/alpine:3.3
RUN apk add --no-cache nodejs
RUN apk add --no-cache git

RUN mkdir /web

WORKDIR /web
VOLUME /web

ADD package.json package.json
RUN npm install

ADD views /web/
ADD bin /web/
ADD public /web/
ADD routes /web/

EXPOSE 3000
CMD ['/web/bin/www']
