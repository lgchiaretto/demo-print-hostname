FROM registry.access.redhat.com/ubi9/ubi-minimal

ENV PYTHON_VERSION=3.9 \
    PATH=/usr/local/bin:$PATH

RUN microdnf install -y python3 \
    && microdnf clean all

WORKDIR /usr/src/app

COPY webserver.py .

EXPOSE 8080

CMD ["python3", "webserver.py"]
