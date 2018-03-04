FROM node:9.2.0-slim
ENV INSTALL_PATH /jonyforms-client
RUN npm install -g @angular/cli@latest
RUN mkdir -p $INSTALL_PATH
WORKDIR $INSTALL_PATH
COPY . .
RUN npm install
CMD ["npm", "start"]
