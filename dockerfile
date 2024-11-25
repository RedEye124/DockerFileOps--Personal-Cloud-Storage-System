# Use an official Python runtime as the base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy project files into the container
COPY . /app

# Install Python dependencies
RUN pip install --no-cache-dir Flask cryptography gunicorn

# Expose port 5000 for Flask
EXPOSE 5000

# Set default command to run the Flask app
CMD ["gunicorn", "-b", "0.0.0.0:5000", "app:app"]
