# Gunakan base image ringan
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package.json dan package-lock.json dulu
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy semua file aplikasi
COPY . .

# Expose port
EXPOSE 8080

# Start app
CMD ["node", "app.js"]
