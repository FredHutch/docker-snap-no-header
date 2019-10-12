FROM ubuntu:18.04

RUN apt update && \
    apt install -y git g++ zlib1g-dev make

RUN cd /usr/local/ && \
    git clone https://github.com/rcs333/snap.git && \
    cd snap && \
    make && \
    ls -lhtr && \
    chmod +x snap-aligner && \
    ln -s $PWD/snap-aligner /usr/local/bin/
