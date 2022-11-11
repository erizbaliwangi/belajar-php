create database fakultas;  
use db_fakultas;

create table tb_jurusan(
    id int primary key auto_increment,
    kode_jrsn char(5) not null,
    nama_jrsn varchar(60) not null
);

create table tb_mahasiswa(
    id int primary key auto_increment,
    id_jrsn int not null,
    nim char(15) not null,
    nama varchar(60) not null,
    jenis_klmn enum ('p','l') not null,
    tmpt_lahir varchar(50) not null,
    tgl_lahir date not null,
    alamat varchar(100) not null,
    foreign key (id_jrsn) references tb_jurusan(id)
);

-- melihat deskripsi tabel
desc mahasiswa;
desc jurusan;

-- melihat tables
show tables;

-- menginput field
insert into nama_tabel (field) values (data field)
example : insert into tb_mahasiswa (id_jrsn,nim,nama,jenis_klmn,tmpt_lahir,tgl_lahir,alamat) values ('02','36202','samsudin','l','blambangan','2003-01-02','Kertosono');

-- melihat inputan field
select*from nama_tabel;

-- update data tabel
 update nama_tabel set nama_kolom = "003" where 001;
 example: update tb_jurusan set kode_jurusan = "003" where 001;

 -- delate data tabel mahasiswa -- 
  delete from tb_mahasiswa where id=1;
  example : delete from tb_mahasiswa where id=1;