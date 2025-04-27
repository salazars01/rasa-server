FROM rasa/rasa:latest-full
COPY . /app
WORKDIR /app
RUN rasa train
ENTRYPOINT ["rasa"]
CMD ["run", "--enable-api", "--cors", "'*'", "--port", "${PORT:-5005}", "--host", "0.0.0.0"]