FROM openjdk:17-jdk-slim
WORKDIR /server
COPY . .
RUN chmod +x run.sh
EXPOSE 25565
CMD ["bash", "run.sh"]
