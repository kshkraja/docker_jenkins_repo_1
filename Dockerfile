FROM java:8
COPY . .
WORKDIR .
RUN javac HelloWorld.java
CMD ["java", "HelloWorld"]
