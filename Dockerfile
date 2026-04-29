FROM eclipse-temurin:17-jdk-jammy
WORKDIR /server
COPY . .
RUN chmod +x run.sh
EXPOSE 25565
CMD ["bash", "run.sh"]
