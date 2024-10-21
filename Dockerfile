# Use an official Python runtime as a parent image
FROM python:3.11-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install the necessary dependencies
RUN pip install --no-cache-dir paho-mqtt requests

# Make port 1883 available to the world outside this container
EXPOSE 1883

# Define environment variable
ENV NAME MQTT_Client

# Run app.py when the container launches
CMD ["python", "./app.py"]
