FROM quay.io/cronicmusic/raganork:multidevice

RUN git clone https://github.com/cronicmusic/whatsapp-bot /skl/Raganork
WORKDIR /skl/Raganork
ENV TZ=Asia/Kolkata
RUN yarn install --network-concurrency 1
CMD ["node", "index.js"]
