FROM rasa/rasa:latest-full

COPY . /app
WORKDIR /app

# Train model sebelum jalan server
RUN rasa train

CMD ["sh", "-c", "rasa run --enable-api --cors '*' --port ${PORT:-5005}"]

