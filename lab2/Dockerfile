FROM ubuntu
RUN apt update && apt install -y gcc gcc-multilib
COPY asm.s .
COPY ci.c .
RUN gcc -m32 -no-pie asm.s -o asm
RUN gcc ci.c -o c
CMD ./c
CMD ./asm