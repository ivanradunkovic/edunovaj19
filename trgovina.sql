drop database if exists trgovina;
create database trgovina;
use trgovina;

create table proizvod(
sifra 				int not null primary key auto_increment,
naziv				varchar(50) not null,
cijena				decimal(18,2) not null,
stanjenaskladistu	int not null,
proizvodac			varchar(50)
);

create table proizvodac(
sifra				int not null primary key auto_increment,
naziv				varchar(50) not null,
adresa				varchar(50) not null,
mjesto				varchar(20) not null
);

create table stavka(
sifra 				int not null primary key auto_increment,	
proizvod			varchar(30) not null,
racun				int not null,
kolicina			int not null,
popust				decimal(18,2)
);

create table racun (
sifra 				int not null primary key auto_increment,	
datum				datetime,
broj				int not null,
djelatnik			varchar(20)
);

create table djelatnik(
sifra				int not null primary key auto_increment,
ime					varchar(20),
prezime				varchar(30),
oib					int not null
);