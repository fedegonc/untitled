# Usar una imagen ligera de Nginx para servir contenido estático
FROM nginx:alpine

# Copiar los archivos generados en build/web al directorio de Nginx
COPY build/web /usr/share/nginx/html

# Exponer el puerto 80 para tráfico HTTP
EXPOSE 80

# Ejecutar Nginx
CMD ["nginx", "-g", "daemon off;"]
