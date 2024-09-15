FROM spark:3.5.2-scala2.12-java11-ubuntu

USER root

COPY requirements.txt .

RUN set -ex; \
    apt-get update; \
    apt-get install -y python3 python3-pip procps; \
    pip install --no-cache-dir -r requirements.txt; \
    rm -rf /var/lib/apt/lists/*

USER spark
