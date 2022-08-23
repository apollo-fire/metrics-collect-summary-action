FROM alpine:3.16.0

RUN apk --no-cache add python3

RUN mkdir /workdir

COPY entrypoint.sh /entrypoint.sh
COPY collect_metrics.py /collect_metrics.py

ENTRYPOINT ["/entrypoint.sh"]
