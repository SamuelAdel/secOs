FROM gcc:latest

WORKDIR /app

# Copy your C++ file
COPY BinarySearch.cpp .

# Compile the program
RUN g++ BinarySearch.cpp -o BinarySearch

# keep container alive
CMD ["tail", "-f", "/dev/null"]

