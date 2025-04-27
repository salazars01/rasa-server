FROM rasa/rasa:3.6.2

USER root
WORKDIR /app

COPY . /app

# Change back to non-root user for better security
USER 1001

CMD ["rasa", "run", "--enable-api", "--cors", "*", "--port", "5005", "--debug"]