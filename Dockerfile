FROM rasa/rasa:latest-full

COPY . /app
WORKDIR /app

# Train model sebelum jalan server
RUN rasa train

CMD ["run", "--enable-api", "--cors", "*", "--port", "5005", "--debug"]
