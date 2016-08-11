FROM fabric8/s2i-java:latest
MAINTAINER Scott Thompson <scott.thompson@gm.com>

EXPOSE 9009

COPY /DealerServiceTool-Application-0.0.1-SNAPSHOT.jar /app/app.jar
WORKDIR /app
ENTRYPOINT ["java", "-jar", "app.jar"]
CMD ["start"]
