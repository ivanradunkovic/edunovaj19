drop database if exists edunovaj19;
create database edunovaj19;
use edunovaj19;

create table smjer(
	sifra 			int not null primary key auto_increment,
	naziv 			varchar(50) not null,
	trajanje 		int not null,
	cijena 			decimal(18,2) not null,
	upisnina 		decimal(19,2) not null,
	verficiran 		boolean not null
);

create table grupa (
	sifra 			int not null primary key auto_increment,
	naziv 			varchar(50) not null,
	smjer 			int not null,
	predavac 		int,
	brojpolaznika	int not null,
	datumpocetka	datetime
	
);

create table predavac(
	sifra 			int not null primary key auto_increment,
	osoba 			int not null,
	iban 			char(21)
	
);

create table polaznik(
	sifra 			int not null primary key auto_increment,
	osoba 			int not null,
	brojugovora 	varchar(20)
);


create table osoba(
	sifra 			int not null primary key auto_increment,
	oib				char(11),
	ime				varchar(50) not null,
	prezime 		varchar(50) not null,
	email 			varchar(100) not null
);

create table clan(
	grupa			int not null,
	polaznik 		int not null
);

alter table grupa add foreign key (smjer) references smjer(sifra);
alter table	grupa add foreign key (predavac) references	predavac(sifra);

alter table	predavac add foreign key (osoba) references osoba(sifra);

alter table polaznik add foreign key (osoba) references	osoba(sifra);

alter table clan add foreign key (grupa) references grupa(sifra);
alter table	clan add foreign key (polaznik) references polaznik(sifra);
