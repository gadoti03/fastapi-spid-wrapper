# Base image
FROM python:3.12-slim

# Set working directory inside the container
WORKDIR /app

# Copy requirements file first
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy all project files
COPY . .

# Command to run the app
CMD ["python", "main.py"]

# TOCOMPLETE
