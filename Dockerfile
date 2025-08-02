# Use official Python image
FROM python:3.10-slim

# Set work directory
WORKDIR /app

# Copy app files
COPY ./app /app

# Install FastAPI and Uvicorn
RUN pip install --no-cache-dir fastapi uvicorn

# Run the app
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
