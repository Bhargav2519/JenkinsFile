FROM maven:3.8.4-jdk-11
# Set the working directory to /app
WORKDIR /app

# Clone the GitHub repository into the container
RUN git clone https://github.com/padmarajuraju/maven-web-application.git
# Change to the cloned repository directory

RUN mkdir /opt/maven
RUN mv maven-web-application* /opt/maven
WORKDIR /opt/maven/maven-web-application/

# Install any dependencies required by the project
RUN mvn clean install package

# Run the tests
RUN mvn test
CMD ["mvn", "clean", "install"]
CMD ["mvn", "clean", "test"]

