# Usa una imagen base con Node.js
FROM node:20-alpine

# Establece el directorio de trabajo
WORKDIR /app

# Copia los archivos de dependencias
COPY package*.json ./

# Instala las dependencias
RUN npm install

# Copia el resto del código fuente
COPY . .

# Expone el puerto por defecto de Vite
EXPOSE 5173

# Comando para iniciar Vite en modo desarrollo
CMD ["npm", "run", "start:local", "--", "--host"]