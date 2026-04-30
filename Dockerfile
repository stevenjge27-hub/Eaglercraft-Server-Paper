FROM eclipse-temurin:21-jdk-jammy
WORKDIR /server
RUN apt-get update && apt-get install -y curl unzip
RUN curl -sL https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz | tar xz -C /usr/local/bin
COPY . .
RUN chmod +x run.sh
EXPOSE 25565
CMD bash run.sh & sleep 15 && ngrok tcp 25565 --log stdout
