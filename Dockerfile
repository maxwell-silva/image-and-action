# Use a imagem oficial do Nginx
FROM nginx:alpine

# Remove o arquivo de configuração padrão do Nginx
RUN rm /etc/nginx/conf.d/default.conf

# Copia o arquivo de configuração personalizado para o Nginx (opcional)
# COPY nginx.conf /etc/nginx/conf.d

# Copia o conteúdo HTML para o diretório de trabalho do Nginx
COPY html /usr/share/nginx/html

# Expõe a porta 80
EXPOSE 80

# Inicia o Nginx ao iniciar o contêiner
CMD ["nginx", "-g", "daemon off;"]

