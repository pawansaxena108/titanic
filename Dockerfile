# Use Python base image
FROM python:3.12-slim

# Set the working directory to /app/a
WORKDIR /app

RUN pip install -r requirements.txt
# Copy all files (including requirements.txt)
COPY . /app
EXPOSE 5000

# Run the main.py script
CMD ["python", "test.py"]
