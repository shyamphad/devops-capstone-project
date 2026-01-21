FROM python:3.9-slim

# Create working directory
WORKDIR /app

# Copy requirements and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy all application files
COPY . .

# Create a non-root user and change ownership
RUN useradd --uid 1000 theia && chown -R theia:theia /app

# Switch to non-root user
USER theia

# Expose port
EXPOSE 8080

# Run the service
CMD ["gunicorn", "--bind=0.0.0.0:8080", "--log-level=info", "service:app"]
