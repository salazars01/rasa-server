FROM rasa/rasa:latest-full
COPY . /app
WORKDIR /app
RUN rasa train
CMD rasa run --enable-api --cors '*' --port ${PORT:-5005} --host 0.0.0.0