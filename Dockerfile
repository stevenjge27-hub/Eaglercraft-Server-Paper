FROM eclipse-temurin:21-jdk-jammy
WORKDIR /server
RUN apt-get update && apt-get install -y openssh-client
COPY . .
RUN chmod +x run.sh
CMD bash run.sh & sleep 15 && ssh -o StrictHostKeyChecking=no -R 25565:localhost:25565 plan@localhost.run
