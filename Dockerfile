FROM rust:1.32

RUN cargo install tokei
VOLUME ["/data"]
WORKDIR /data

CMD ["tokei /data"]
