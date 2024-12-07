# FROM maven:latest as build
# WORKDIR /app
# COPY . .
# RUN mvn clean package
#
# FROM alpine
# RUN apk update && apk add openjdk11 --no-cache
# WORKDIR /app
# COPY --from=build /app/target/shipping-1.0.jar .
# CMD ["java","-jar","shipping-1.0.jar"]



FROM maven:latest
WORKDIR /app
COPY . .
RUN mvn clean package
CMD ["java","-jar","target/shipping-1.0.jar"]