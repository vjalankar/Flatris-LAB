FROM node:18-slim

RUN apt-get update && apt-get upgrade -y

COPY . .

RUN npm install -g npx  

RUN npm install 

RUN npm run build

EXPOSE 3000 

CMD ["npm"], ["start"]

