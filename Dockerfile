FROM ubuntu:20.04

RUN apt-get update && apt-get install -y \
  wget \
  ffmpeg \
  curl

COPY start.sh /start.sh

RUN chmod +x /start.sh

CMD ["/start.sh"]
