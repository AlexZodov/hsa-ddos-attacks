FROM nginx:latest

# Install iptables
RUN apt-get update && apt-get install -y iptables

# Copy your custom entrypoint script (if needed)
COPY entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]