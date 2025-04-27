FROM rasa/rasa:latest-full

COPY . /app
WORKDIR /app

RUN rasa train

ENV PORT=5005

EXPOSE ${PORT}

ENTRYPOINT ["sh", "-c", "rasa run --enable-api --cors '*' --host 0.0.0.0 --port ${PORT}"]
