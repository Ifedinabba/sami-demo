# Build a WAR File
FROM maven:3.8.2-jdk-8-slim AS stage1
WORKDIR /mnt/c/Users/Ifedi/projects/sami-demo
COPY . /mnt/c/Users/Ifedi/projects/sami-demo
RUN mvn -f /mnt/c/Users/Ifedi/projects/sami-demo/pom.xml clean package

# Create an Image
FROM openjdk:8-jdk-alpine
EXPOSE 6000
COPY --from=stage1 /mnt/c/Users/Ifedi/projects/sami-demo/target/webapps/sami-demo.war sami-demo.war
ENTRYPOINT ["sh", "-c", "java -jar /sami-demo.war"]
