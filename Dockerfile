FROM rust:1.32
LABEL maintainer="Michele Bologna <mb@michelebologna.net>"
RUN cargo install tokei
VOLUME ["/data"]
WORKDIR /data

CMD ["tokei", "/data"]
