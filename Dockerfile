FROM rust as builder
COPY . /build
WORKDIR /build
RUN cargo install --path . --root /usr

FROM debian
COPY --from=builder /usr/bin/cpuburn /bin
CMD ["cpuburn"]
