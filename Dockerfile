# syntax=docker/dockerfile

FROM python:3.12-slim

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y --no-install-recommends \
        libopenmpi-dev \
        openmpi-bin \
    && python3 -m pip install --upgrade pip

RUN pip install --no-cache-dir \
              "autogen-agentchat" "autogen-ext[openai]"

RUN pip install --no-cache-dir \
               "autogenstudio"

RUN apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf /tmp/* \
    && mkdir /config

WORKDIR /config

EXPOSE 80

ENTRYPOINT [ "autogenstudio", "ui",  "--host", "0.0.0.0", "--port", "80", "--appdir", "/config" ]

