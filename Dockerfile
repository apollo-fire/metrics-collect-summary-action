FROM alpine:3.16.0

RUN apk --no-cache add python3=3.10.5-r0 \
                       py3-pip=22.1.1-r0
RUN pip install --no-cache-dir GitPython

RUN mkdir /workdir

COPY entrypoint.sh /entrypoint.sh
COPY collect_metrics.py /collect_metrics.py

ENTRYPOINT ["/entrypoint.sh"]
