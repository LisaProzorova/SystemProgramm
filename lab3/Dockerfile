FROM ubuntu
RUN apt update && apt install -y g++
COPY main.cpp .
RUN g++ ./main.cpp -o main