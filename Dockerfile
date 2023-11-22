FROM alpine:latest
RUN adduser -S mia7101
RUN mkdir -p /home/lab1docker
WORKDIR /home/lab1docker
COPY . .
RUN chmod +x lab1.sh
CMD ["sh", "lab1.sh"]
