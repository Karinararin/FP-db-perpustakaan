CREATE DATABASE perpustakaan
USE perpustakaan

CREATE TABLE pegawai(
id_pegawai INT (10) PRIMARY KEY,
nama_pegawai VARCHAR (50),
jabatan_pegawai VARCHAR (50),
no_telp_pegawai VARCHAR (15),
alamat_pegawai VARCHAR (50))

CREATE TABLE mahasiswa(
nim_mahasiswa INT (10)PRIMARY KEY,
nama_mahasiswa VARCHAR (50),
jurusan VARCHAR (30),
no_telp_mahasiswa VARCHAR (15),
alamat_mahasiswa VARCHAR (50))

CREATE TABLE buku(
id_buku INT (15) PRIMARY KEY,
judul_buku VARCHAR (50),
penulis_buku VARCHAR (50),
penerbit_buku VARCHAR (50),
tahun_penerbit VARCHAR (10))
 
CREATE TABLE peminjaman(
id_peminjaman INT (15),
tanggal_peminjaman DATE,
id_buku INT (15),
nim_mahasiswa INT (10),
id_pegawai INT (10))

CREATE TABLE pengembalian(
id_pengembalian INT (15) PRIMARY KEY,
tanggal_pengembalian DATE,
denda INT (50),
id_buku INT (15),
nim_mahasiswa INT (10),
id_pegawai INT (15))



INSERT INTO pegawai VALUES 
('405', 'Ahmad', 'pustakawan',  '089576768597', 'Purwokerto'),
('406', 'Bambang', 'Asisten Pustakawan', '0893456790', 'Kober'),
('407', 'Paiman', 'Asisten Pustakawan', '089654321987', 'Watumas'),
('408', 'Zali', 'Pustakawan', '06789321920', 'Purwokerto'),
('409', 'Eka', 'Administrasi', '08975544321567', 'Sokaraja'), 
('410', 'Susan', 'Administrasi', '089765437654', 'Grendeng'),
('411', 'Ariel', 'Petugas Teknis', '089574638219', 'Tanjung'),
('412', 'Erik', 'Administrasi', '087654738292', 'Tanjung'),
('413', 'Bella', 'Spesialis Bidang', '087654382019', 'Sidaboa'),
('414', 'Tomo', 'Petugas Layanan Referensi', '0898760191923', 'Purbalingga'),
('415', 'Riko', 'Pustakawan', '0876765645231', 'Watumas'),
('416', 'Raihan', 'Juru Arsip', '08783425612', 'Sokaraja'),
('417', 'Rima', 'Spesialis Bidang', '0897231812', 'Sidaboa'),
('418', 'Kinan', 'Petugas Perawatan Perpustakaan', '089558930201', 'Kober'),
('419', 'Kirana', 'Juru Arsip', '08678964321', 'Purwokerto'),
('420', 'Anan', 'Administrasi', '09897634231', 'Tanjung'),
('421', 'Kevin', 'Petugas Teknis', '086784930210', 'Sokaraja'),
('422', 'Wildan', 'Juru Arsip', '089765745671', 'Purbalingga'),
('423', 'Rifqi', 'Petugas Perawatan Perpustakaan', '098765648123', 'Sidaboa'),
('424', 'Samid', 'Petugas Perawatan Perpustakaan', '089572345697', 'Sokaraja')


SELECT * FROM pegawai

INSERT INTO mahasiswa VALUES
('505','Karina','Sistem Informasi','085239283930','Sokaraja'),
('506','Desi','Sistem Informasi','03652834278874','Watumas'),
('507','Elok','Sistem Informasi','0284766252637','Kober'),
('508','Bayu','Sistem Informasi','0198467384638','Watumas'),
('509','Krisna','Sistem Informasi','07265175267','Watumas'),
('510','Joana','Teknik Informatika','026127652542','Purbalingga'),
('511','Deva','Tenik Infromatika','082736286576','Kober'),
('512','Raya','Teknik Informatika','0826517366475','Purwanegara'),
('513','Haryono','Teknik Informatika','082938372833','Purbalingga'),
('514','Katarina','Teknik Informatika','0837166252673','Ajibarang'),
('515','Icha','Teknik Informatika','08262736378471','Purwokerto Utara'),
('516','Natalia','Bisnis Digital','0875653963765','Purwokerto Barat'),
('517','Bima','Bisnis Digital','0864429364260','Ajibarang'),
('518','Arya','Bisnis Digital','082653429879','Sdabowa'),
('519','Aris','Bisnis Digital','082626453869','Kober'),
('520','Gilang','Bisnis Digital','0826645739746','Ajibarang'),
('521','Rista','Ilmu Komunikasi','082663428965','Purbalingga'),
('522','Riska','Ilmu Komunikasi','082975468379','Watumas'),
('523','Wulan','Ilmu Komunikasi','082627363457','Banyumas'),
('524','Nurul','Ilmu Komunikasi','08224567533','Cilacap'),
('525','Danis','Ilmu Komunikasi','08568962480','Banyumas')

SELECT * FROM mahasiswa

INSERT INTO buku VALUES
('614','Laut Bercerita','Leila Chudori','Gramedia','2021'),
('615','Dilan 1990','Pidi Baiq','Pastel Book','2014'),
('616','The Hunger Games','Suzanne Collins','Scholastic Corporation','2008'),
('617','The Da Vinci Code','Dan Brown','Doubleday','2003'),
('618','The Lord the Rings','J.R.R. Tolkien','George Allen & Unwin','1955'),
('619','To Kill a Mockingbird','Harper Lee','J.B. Lippincott & Co','1960'),
('620','Manusia Setengah Salmon','Raditiya Dika','Gagas Media','2011'),
('621','Negeri Van Oranje','Wahyu S Nugroho','Grasindo','2011'),
('622','Sepotong Hati yang Baru','Tere Liye','Gramedia Pustaka Utama','2009'),
('623','Filosofi Kopi','Dewi Dee Lestari','Bentang Pustaka','2006'),
('624','Sang Pemimpi','Andrea Hirata','Gramedia Pustaka Utama','2006'),
('625','Si Anak Singkong','Chairil Gibran','Balai Pustaka','1940'),
('626','Ayah','Andrea Hirata','Bentang Pustaka','2010'),
('627','Radikus Makankakus','raditiya dika','gagas media','2008'),
('628','Pride and Prejudice','Jane Austen','T.Egerton','1813'),
('629','The Catcher in the Rye','J.K.Rowling','Bloomsbury','1997'),
('630','Laskar Pelangi','Andrea Hirata','Bentang Pustaka','2005'),
('631','Ayat-ayat Cinta','Habibburrahman El Shirazy','Republika','2004'),
('632','Perahu Kertas','Dewi Lestari','Truedee Books','2009'),
('633','Big Magic','Elizabeth Gilbert','Gramedia Pustaka Utama','2015')

SELECT * FROM buku

INSERT INTO peminjaman VALUES
('700', '2023-01-03', '614', '505', '409'),
('701', '2023-01-09', '615', '506', '410'),
('702', '2023-01-07', '616', '507', '412'),
('703', '2023-02-07', '617', '508', '409'),
('704', '2023-02-13', '618', '509', '410'),
('705', '2023-03-06', '619', '510', '412'),
('706', '2023-03-20', '620', '511', '420'),
('707', '2023-03-21', '621', '512', '420'),
('708', '2023-04-05', '622', '513', '409'),
('709', '2023-04-12', '623', '514', '409'),
('710', '2023-04-15', '624', '515', '420'),
('711', '2023-05-12', '625', '516', '410'),
('712', '2023-06-13', '626', '517', '412'),
('713', '2023-06-30', '627', '518', '409'),
('714', '2023-07-25', '628', '519', '420'),
('715', '2023-08-30', '629', '520', '409'),
('716', '2023-09-13', '630', '521', '410'),
('717', '2023-10-20', '631', '522', '412'),
('718', '2023-11-15', '632', '523', '409'),
('719', '2023-12-02', '633', '524', '412')

SELECT * FROM peminjaman

INSERT INTO pengembalian VALUES
('801','2023-01-10','0','614','505','409'),
('802','2023-01-16','0','615','506','412'),
('803', '2023-01-07','1000','616','507', '420'),
('804', '2023-02-15','1000','617','508', '409'),
('805', '2023-02-20','0','618', '509', '410'),
('806', '2023-03-08','0','619', '510', '412'),
('807', '2023-03-29','2000','620','511','420'),
('808', '2023-03-01','0','621', '512','420'),
('809', '2023-04-08','1000','622', '513', '409'),
('810', '2023-04-10','0','623', '514', '409'),
('811', '2023-04-23','1000','624', '515', '420'),
('812', '2023-05-27','0','625', '516', '410'),
('813', '2023-06-30','0','626', '517', '412'),
('814', '2023-06-10','3000','627', '518', '409'),
('815', '2023-07-02','1000','628', '519', '420'),
('816', '2023-08-06','0','629','520', '409'),
('817', '2023-09-21','1000','630', '521', '410'),
('818', '2023-10-27','0','631','522', '412'),
('819', '2023-11-20','0','632','523', '409'),
('820', '2023-12-10','1000','633', '524', '412')

SELECT * FROM pengembalian


/*trigger*/


CREATE TABLE log_buku
(
id_log INT (15) AUTO_INCREMENT ,
id_buku INT (10),
judul_buku_lama VARCHAR (50),
judul_buku_baru VARCHAR (50),
waktu DATE ,
PRIMARY KEY (id_log)
)

 
DELIMITER $$
CREATE TRIGGER update_judul_buku
BEFORE UPDATE 
ON buku
FOR EACH ROW 
BEGIN 
INSERT INTO log_buku
SET id_buku= OLD.id_buku,
judul_buku_lama = old.judul_buku,
judul_buku_baru = new.judul_buku,
waktu = NOW();
END$$
DELIMITER ;

SELECT*FROM buku
UPDATE buku SET judul_buku = 'laut bercerita' WHERE id_buku = 614
SELECT*FROM log_buku




/*optimasi query*/
SELECT nama_mahasiswa,denda FROM mahasiswa m,pengembalian p 
WHERE m.nim_mahasiswa=p.nim_mahasiswa 
AND alamat_mahasiswa= 'sokaraja' AND denda <1000

SELECT nama_mahasiswa,denda FROM mahasiswa m,pengembalian p 
WHERE m.nim_mahasiswa=p.nim_mahasiswa 
AND alamat_mahasiswa= 'kober' AND denda <2000

SELECT nama_mahasiswa,denda FROM mahasiswa m,pengembalian p 
WHERE m.nim_mahasiswa=p.nim_mahasiswa 
AND alamat_mahasiswa= 'purbalingga' AND denda <1000



/*procedure*/

/*procedure untuk menghitung jumlah mahasiswa*/
DELIMITER $$
CREATE PROCEDURE jumlahmahasiswa()
BEGIN
SELECT COUNT(*)FROM mahasiswa;
END$$
DELIMITER;

CALL jumlahmahasiswa()


/*procedure menambah data mahasiswa*/
DELIMITER$$
CREATE PROCEDURE insert_data(
nim_mahasiswa INT (10),
nama_mahasiswa VARCHAR (50),
jurusan VARCHAR (30),
no_telp_mahasiswa VARCHAR (15),
alamat_mahasiswa VARCHAR (50))
  BEGIN
    INSERT INTO mahasiswa VALUES (nim_mahasiswa,nama_mahasiswa,jurusan,no_telp_mahasiswa,alamat_mahasiswa);
    END$$
    DELIMITER;
    
    CALL insert_data('526','effendi','sistem informasi','085234434335','majenang')
    SELECT*FROM mahasiswa
     
     
    
    
    
/*procedure update*/
DELIMITER $$
CREATE PROCEDURE update_peminjaman
(id_pinjam INT (15), tgl_pinjam DATE, id_buku INT (15),nim_mhs INT (10),id_pegawai INT (10))
BEGIN
UPDATE peminjaman SET tanggal_peminjaman=tgl_pinjam, id_buku=id_buku,nim_mahasiswa=nim_mhs,id_pegawai=id_pegawai WHERE id_peminjaman=id_pinjam;
END$$
DELIMITER ;


CALL update_peminjaman('707','2023-01-04','614','505','409')
SELECT*FROM peminjaman


DROP DATABASE perpustakaan


/*FUNCTION*/
DELIMITER $$
CREATE FUNCTION cek_tanggal_peminjaman(id_buku INT (15))
RETURNS TEXT
BEGIN
DECLARE tgl_pinjam TEXT;
SELECT tanggal_peminjaman INTO tgl_pinjam FROM peminjaman WHERE id_buku=id;
RETURN tgl_pinjam;
END $$
DELIMITER ;

SELECT cek_tanggal_peminjaman(614)
SELECT*FROM peminjaman



