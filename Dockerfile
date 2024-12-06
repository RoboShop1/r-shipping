FROM maven:latest as build
WORKDIR /app
COPY . .
RUN mvn clean package

FROM alpine
RUN apk update && apk add openjdk11 --no-cache
WORKDIR /app
COPY --from=build /app/target/shipping-1.0.jar .
CMD ["java","-jar","shipping-1.0.jar"]