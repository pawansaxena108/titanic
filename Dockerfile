# Use Python base image
FROM python:3.12-slim

# Set the working directory to /app
WORKDIR /app

# Copy only the requirements.txt first to leverage Docker cache
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application files
COPY . .

# Expose the port the app runs on
EXPOSE 5000

# Run the application
CMD ["python", "test.py"]
