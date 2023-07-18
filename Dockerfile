# Use the official Prometheus base image
FROM prom/prometheus:latest

# Copy the Prometheus configuration file to the container
COPY prometheus.yml /etc/prometheus/

# Expose the Prometheus server port (default is 9090)
EXPOSE 9090

# Start the Prometheus server
CMD [ "--config.file=/etc/prometheus/prometheus.yml" ]
