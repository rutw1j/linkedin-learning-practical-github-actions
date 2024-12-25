FROM ubuntu:latest

# Install system dependencies
RUN 
    apt-get update && apt-get install -y \
    python3.10 \
    python3-pip \
    git


# Install Python dependencies
RUN pip3 install PyYAML

# Copy your script and Python code into the container
COPY feed.py /usr/bin/linkedin-learning-practical-github-actions/podcast-generator/feed.py
COPY entrypoint.sh /entrypoint.sh

# Set the entry point for the container
ENTRYPOINT ["/entrypoint.sh"]