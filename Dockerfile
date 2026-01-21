FROM python:3.9-slim

# Create working directory
WORKDIR /app

# Copy and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application contents
COPY service/ ./service/

# Create a non-root user and change ownership
RUN useradd --uid 1000 theia && chown -R theia /app

# Switch to non-root user
USER theia

# Set environment variables
ENV PORT=8080
EXPOSE ${PORT}

# Run the service
CMD ["gunicorn", "--bind=0.0.0.0:8080", "--log-level=info", "service:app"]
