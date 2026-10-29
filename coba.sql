-- 1. Buat tabelnya dulu (gunakan IF NOT EXISTS agar aman jika dijalankan ulang)
CREATE TABLE IF NOT EXISTS mahasiswa (
    nim VARCHAR(10) PRIMARY KEY,
    nama VARCHAR(100) NOT NULL,
    prodi VARCHAR(50)
);

-- 2. Masukkan data contoh (opsional, biar tabelnya tidak kosong)
INSERT INTO mahasiswa VALUES 
('2020202', 'Budi Santoso', 'Teknik Informatika'),
('10101010', 'Siti Rahma', 'Sistem Informasi');

-- 3. Baru tampilkan datanya
SELECT * FROM mahasiswa;


DELETE FROM mahasiswa;