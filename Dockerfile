FROM node:lts-buster

RUN git clone https://github.com/AbhishekSuresh2/Phoenix-MD/ /root/VAJIRA-MD

WORKDIR /root/VAJIRQ-MD

RUN apt-get update && \
  apt-get install -y \
  ffmpeg \
  imagemagick \
  webp && \
  apt-get upgrade -y && \
  rm -rf /var/lib/apt/lists/*

RUN npm install


CMD ["npm", "start"]
