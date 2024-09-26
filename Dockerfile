# Step 1: Use an official Maven image to build the application
FROM maven:amazoncorretto

# Step 2: Set the working directory in the container
WORKDIR /app

# Step 3: Copy the source code into the container
COPY . .

# Step 4: Build the project using Maven
RUN mvn clean && mvn install
# RUN mvn test
