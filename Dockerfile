FROM ubuntu:20.04

RUN apt update && apt install -y ffmpeg wget curl

COPY . /app
WORKDIR /app

RUN chmod +x start.sh

CMD ["./start.sh"]
