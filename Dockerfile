# Etapa 1: Build do projeto com Node.js e Parcel
FROM node:23-alpine AS build

WORKDIR /app

COPY package*.json ./
COPY src ./src

RUN npm install
RUN npm run build

# Etapa 2: Servir arquivos com Nginx
FROM nginx:alpine

RUN rm -rf /usr/share/nginx/html/*

COPY --from=build /app/dist /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
