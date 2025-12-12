FROM gcc:latest

WORKDIR /app

# Copy your C++ file
COPY BinarySearch.cpp .

# Compile the program
RUN g++ BinarySearch.cpp -o BinarySearch

# Run program & keep container alive
CMD ["sh", "-c", "./BinarySearch || true; tail -f /dev/null"]

