# Usa una imagen ligera de Nginx
FROM nginx:alpine

# Copia los archivos de la carpeta build/web a la carpeta estándar de Nginx
COPY build/web /usr/share/nginx/html

# Exponer el puerto 80 para el tráfico HTTP
EXPOSE 80

# Iniciar Nginx
CMD ["nginx", "-g", "daemon off;"]
