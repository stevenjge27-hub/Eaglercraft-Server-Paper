FROM eclipse-temurin:21-jdk-jammy
WORKDIR /server
RUN apt-get update && apt-get install -y curl
RUN curl -L https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64 -o /usr/local/bin/cloudflared && chmod +x /usr/local/bin/cloudflared
COPY . .
RUN chmod +x run.sh
EXPOSE 25565
CMD bash run.sh & sleep 15 && cloudflared tunnel --url tcp://localhost:25565 --no-autoupdate
