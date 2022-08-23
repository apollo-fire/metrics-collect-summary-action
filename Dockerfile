FROM alpine:3.16.0

RUN apk --no-cache add python3=3.10.6-r0

RUN mkdir /workdir

COPY entrypoint.sh /entrypoint.sh
COPY collect_metrics.py /collect_metrics.py

ENTRYPOINT ["/entrypoint.sh"]