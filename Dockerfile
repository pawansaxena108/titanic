# Use Python base image
FROM python:3.12-slim

# Set the working directory to /app/a
WORKDIR .

# Copy all files (including requirements.txt)
COPY . .

# Run the main.py script
CMD ["python", "test.py"]
