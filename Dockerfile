FROM rust:slim

COPY . /diffr
RUN cd /diffr && cargo install --path .

ENTRYPOINT ["diffr"]
