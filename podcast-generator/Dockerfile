FROM ubuntu:latest

# Install system dependencies
RUN apt-get update && apt-get install -y \
    python3.10 \
    python3-pip \
    git \
    python3-venv

# Create and activate a virtual environment
RUN python3 -m venv /env
ENV PATH="/env/bin:$PATH"

# Install Python dependencies inside the virtual environment
RUN pip install --upgrade pip && pip install PyYAML

# Copy your script and Python code into the container
COPY feed.py /usr/bin/linkedin-learning-practical-github-actions/podcast-generator/feed.py
COPY entrypoint.sh /entrypoint.sh

# Give execution permissions to the entrypoint script
RUN chmod +x /entrypoint.sh

# Set the entry point for the container
ENTRYPOINT ["/entrypoint.sh"]
