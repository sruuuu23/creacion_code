# Utiliza la última imagen de Node.js como base
FROM node:latest

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /usr/src/app

# Copia los archivos package.json y package-lock.json a la imagen
COPY package*.json ./

# Instala las dependencias del proyecto
RUN npm install

# Copia el resto de los archivos del proyecto al directorio de trabajo en la imagen
COPY . .

# Expone el puerto 3000 del contenedor para que pueda ser accesible desde el exterior
EXPOSE 3000

# Comando para ejecutar la aplicación cuando se inicie el contenedor
CMD ["node", "app.js"]
