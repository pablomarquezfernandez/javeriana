# Utilizar una imagen base de Ubuntu
FROM ubuntu:latest

# Actualizar los paquetes de la imagen base y luego instalar Apache2
RUN apt-get update && apt-get install -y apache2

# Copiar los archivos del repositorio al directorio de documentos de Apache
COPY . /var/www/html/

# Exponer el puerto 80 para el servidor web
EXPOSE 80

# Comando para iniciar Apache en primer plano
CMD ["apachectl", "-D", "FOREGROUND"]