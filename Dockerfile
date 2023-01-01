FROM maven:3-eclipse-temurin-17 AS build
WORKDIR /app
COPY pom.xml .
RUN mvn dependency:copy-dependencies
COPY . .
RUN mvn compile test
