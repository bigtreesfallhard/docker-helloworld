# Use an official Python runtime as the base image
FROM python:3

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the local package files to the container
COPY . .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable (optional)
# ENV NAME World

# Run hello.py when the container launches
CMD ["python", "./hello.py"]