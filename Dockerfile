FROM rasa/rasa:latest-full
COPY . /app
WORKDIR /app
RUN rasa train
CMD rasa run --enable-api --cors '*' --host 0.0.0.0 --port $PORT