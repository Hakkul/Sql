-- Mengupdate data 
UPDATE mahaiswa
set prodi = 'SI'
WHERE nim = '20900';

delete from mahasiswa
where nim = '20900';

-- update untuk mengubah data yang memenuhi kondisi
-- delete untuk menghapus baris yang memenuhi kondisi
-- periksa kondisi where sebelum eksekusi
-- tanpa where, semua baris dapat berubah atau terhapus