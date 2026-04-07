# Use an official Python runtime as a parent image
# 'slim' variants are smaller and recommended for performance
FROM python:3.12-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
# Copying this separately allows Docker to cache dependencies
COPY requirements.txt .

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . .

# Run the application when the container starts
CMD ["python", "app.py"]
