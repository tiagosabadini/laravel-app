#Baixar o nginx
FROM nginx:mainline-alpine

#Remover o arquivo de configuração original
RUN rm /etc/nginx/conf.d/default.conf

#Copiando novo arquivo de configuração
COPY ./nginx.conf /etc/nginx/conf.d/

