# menentukan base image yang digunakan sebagai dasar untuk membangun Docker image, menggunakan image resmi Node.js versi 14 sebagai base.
FROM node:14

# mengatur direktori kerja di dalam container menjadi '/app'. Semua perintah selanjutnya dalam akan dijalankan di dalam direktori ini.
WORKDIR /app

# menyalin semua file dari direktori lokal proyek ke dalam direktori kerja di dalam container.
COPY . .

# mengatur variabel lingkungan 'NODE_ENV' menjadi 'production' dan 'DB_HOST' menjadi 'item-db'. 
ENV NODE_ENV=production DB_HOST=item-db

# menjalankan perintah npm untuk menginstal dependensi proyek dalam mode produksi ('--production') dan kemudian menjalankan perintah 'npm run build'.
RUN npm install --production --unsafe-perm && npm run build

# mendeklarasikan bahwa container akan mendengarkan pada port 8080.
EXPOSE 8080

# menentukan perintah default yang akan dijalankan saat container dimulai. Dalam hal ini, menjalankan 'npm start' untuk memulai aplikasi Node.js.
CMD ["npm", "start"]