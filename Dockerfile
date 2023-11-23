#gunakan image base resmi Node.js versi 14
FROM node:14 
#setel workdir di dalam container menjadi /app
WORKDIR /app 
#salin package.json dan package-lock.json ke workdir
COPY package*.json ./
#install dependensi Node.js  
RUN npm install 
#salin seluruh kode aplikasi ke direktori kerja
COPY . .  
#expose port 3001
EXPOSE 3001
#tentukan perintah untuk menjalankan aplikasi
CMD ["npm", "start"]  