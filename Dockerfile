FROM alpine:3.16.2

RUN apk --no-cache add python3=3.10.5-r0

RUN mkdir /workdir

COPY entrypoint.sh /entrypoint.sh
COPY collect_metrics.py /collect_metrics.py

ENTRYPOINT ["/entrypoint.sh"]
