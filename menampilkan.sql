-- -menambah data
INSERT INTO pelanggan (
    (id_pelanggan, nama_pelanggan, alamat_pelanggan)
    VALUES (1, 'Hakkul', 'Purwosari')
);

-- menyarinng data
SELECT * FROM pelanggan 
WHERE alamat_pelanggan = 'Purwosari';

-- mengedit/ memperbarui data

UPDATE pelanggan 
SET alamat_pelanggan = 'Purwosari' 
WHERE id_pelanggan = 2;

-- menampilkan data
SELECT * FROM pelanggan;

-- menampilkan kolom tertentu pada tabel