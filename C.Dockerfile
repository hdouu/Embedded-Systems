# Use an official C++ runtime as a parent image
FROM ubuntu:22.04

# Install build tools
RUN apt-get update && apt-get install -y \
    build-essential \
    gcc \
    g++ \
    make \
    && rm -rf /var/lib/apt/lists/*

# Copy the source code into the container
COPY . /app
WORKDIR /app

# Build the application using make
RUN make

# Run the application
CMD ["./main"]