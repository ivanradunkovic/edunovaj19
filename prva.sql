drop database if exists prva;
create database prva;
use prva;

create table tablica(
sifra 		int not null primary key auto_increment,
naziv 		varchar(50) not null,
opis 		varchar (100),
aktivan 	boolean not null,
datumunusa 	datetime not null,
nadredena	int

);

alter table tablica add foreign key (tablica) references nadredena(sifra);


