# Use the official Python image as a base image
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /app

# Install dependencies
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# Copy the Django project files to the working directory
COPY . /app/

# Run the Django development server
CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]
