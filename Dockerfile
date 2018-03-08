FROM debian:latest
RUN mkdir -p /opt/test
WORKDIR /opt/test
COPY . .
CMD ["./init.sh"]
