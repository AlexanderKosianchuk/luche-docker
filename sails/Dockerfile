FROM node:latest

# some bash niceties
ADD .bashrc /root/

RUN npm install pm2 -g

CMD ["pm2-runtime", "npm start"]
