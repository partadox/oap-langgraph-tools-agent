FROM python:3.10-slim

WORKDIR /app

# Copy requirements
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code
COPY . .

# Copy and set permissions for entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Set environment variables
ENV PORT=2024
ENV HOST=0.0.0.0

# Expose the port
EXPOSE 2024

# Run the application
ENTRYPOINT ["/entrypoint.sh"]