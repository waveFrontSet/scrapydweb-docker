ARG PYTHON_VERSION="3.13"

FROM python:${PYTHON_VERSION}-alpine

ARG SCRAPYDWEB_VERSION="1.6.0"
RUN apk --no-cache add --virtual build-dependencies \
 && pip install --no-cache-dir \
   scrapydweb==$SCRAPYDWEB_VERSION \
 && apk del build-dependencies

EXPOSE 5000
ENTRYPOINT ["scrapydweb"]
