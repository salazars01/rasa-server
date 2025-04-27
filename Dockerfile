FROM python:3.10-slim

WORKDIR /app

RUN apt-get update && apt-get install -y \
    build-essential \
    python3-dev \
    libyaml-dev \
    && rm -rf /var/lib/apt/lists/*

COPY requirements.txt .
RUN pip install --upgrade pip && \
    pip install wheel && \
    pip install pyyaml==6.0 && \
    pip install rasa==3.6.2 rasa-sdk==3.6.2

COPY . .

CMD ["rasa", "run", "--enable-api", "--cors", "*"]