FROM rust:slim

RUN apt update && apt-get install -y git

RUN git clone https://github.com/kyokley/diffr.git /diffr \
        && cd /diffr \
        && cargo install --path .

ENTRYPOINT ["diffr"]
