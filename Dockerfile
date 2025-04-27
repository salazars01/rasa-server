FROM rasa/rasa:latest-full
COPY . /app
WORKDIR /app
RUN rasa train
ENTRYPOINT ["rasa"]
CMD ["run", "--enable-api", "--cors", "*", "--host", "0.0.0.0", "--port", "5005"]