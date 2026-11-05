-- 1. Tabel Induk (Pelanggan)
CREATE TABLE pelanggan (
    id_pelanggan INT PRIMARY KEY,
    nama_pelanggan VARCHAR(100)
);

-- 2. Tabel Anak Pertama (Pesanan) -> Mengarah ke Pelanggan
CREATE TABLE pesanan (
    id_pesanan INT PRIMARY KEY,
    tanggal_pesanan DATE,
    id_pelanggan INT,
    FOREIGN KEY (id_pelanggan) REFERENCES pelanggan(id_pelanggan)
);

-- 3. Tabel Anak Kedua (Transaksi) -> Mengarah ke Pesanan
CREATE TABLE transaksi (
    id_transaksi INT PRIMARY KEY,
    metode_pembayaran VARCHAR(50),
    id_pesanan INT, -- Foreign Key yang merujuk ke tabel pesanan
    FOREIGN KEY (id_pesanan) REFERENCES pesanan(id_pesanan)
);