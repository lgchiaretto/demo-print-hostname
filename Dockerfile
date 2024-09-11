# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the current directory contents into the container at /usr/src/app
COPY . .

# Install any needed packages specified in requirements.txt
# (Since this is a simple project, no additional packages are required)
# RUN pip install --no-cache-dir -r requirements.txt

# Expose the port that the server will run on
EXPOSE 8080

# Run the server when the container launches
CMD ["python", "webserver.py"]
