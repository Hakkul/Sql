CREATE DATABASE toko_buku;
USE toko_buku;

-- Tabel Pelanggan
CREATE TABLE pelanggan (
    id_pelanggan INT AUTO_INCREMENT PRIMARY KEY,
    nama VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    no_hp VARCHAR(15)
);

-- Tabel Buku
CREATE TABLE buku (
    id_buku INT AUTO_INCREMENT PRIMARY KEY,
    judul VARCHAR(150) NOT NULL,
    penulis VARCHAR(100),
    harga DECIMAL(10, 2) NOT NULL,
    stok INT NOT NULL
);

-- Tabel Pesanan (Berelasi dengan pelanggan & buku)
CREATE TABLE pesanan (
    id_pesanan INT AUTO_INCREMENT PRIMARY KEY,
    id_pelanggan INT,
    id_buku INT,
    tanggal_pesanan DATE,
    jumlah INT,
    FOREIGN KEY (id_pelanggan) REFERENCES pelanggan(id_pelanggan),
    FOREIGN KEY (id_buku) REFERENCES buku(id_buku)
);