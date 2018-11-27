select * from osoba;

#filtriranje kolona
# između select i from se zove selct lista
# 1. naziv kolone
select ime from osoba;

# kolone odvajamo zarezima
select ime,prezime,ime from osoba;

# 2. konstanta
select 'Osijek';

select ime, prezime, 'Osijek' from osoba;

# kolonama se mogu dati zamjenska imena
select ime as imeOsobe, prezime, 'Osijek' as grad from osoba;

# 3. izraz
select ime,prezime, now() as vrijemePrijave from osoba;

select concat(ime,' ',prezime) as polaznik from osoba;

select concat(ime,'.',prezime,'@edunova.hr')
as email from osoba;

select lower(replace(ime,'Ž','Z')) as a from osoba; 

#filtriranje redova
# operatori:
# uspoređivanja
# =, <, >, >=, <=, != ili <>
select * from osoba
where sifra=2;

# izvuci sve osobe čija šifra nije 4

# izvuci sve osobe čija šifra je veća ili jednaka 8

# logički operatori
# and, or, not

# izvuci sve osobe koje imaju šifru između 5 i 8
select * from osoba where sifra>=5 and sifra<=8;

# izvuci sve osobe koje imaju šifru 2 ili 5
select * from osoba where sifra=2 or sifra=5;

# izvuci sve osobe čije šifra nije 2 ili 5
select * from osoba where sifra!=2 and sifra!=5;
select * from osoba where not (sifra=2 or sifra=5);

# ostali operatori
# like, in, between, is null, is not null

# izvuci sve osobe čije ime počinje s znakom m
# i ime ne završava s znakom o
select * from osoba where ime like 'M%'
and ime not like '%o';

# google način rada
# izvuci sve osobe čije ime ili prezime sadržava ma
select * from osoba where ime like '%ra%' or prezime like '%ra%';
select * from osoba where concat(ime, ' ', prezime) like '%bar% r%';

# in
select * from osoba where sifra=4 or sifra=5;
select * from osoba where sifra not in (4,5);

# between
select * from osoba where sifra>=5 and sifra<=8;
select * from osoba where sifra between 5 and 8;

# is null
# ne može
select * from osoba where oib = null;
select * from osoba where oib is null;
select * from osoba where oib is not null;


# BAZA mjesta
# izvucite sva mjesta u Osječko baranjskoj županiji
select * from mjesto where naziv='Osijek';
select * from mjesto where zupanija=14;

# izvucite sva mjesta koja u sebi nemaju slovo a


# BAZA knjiznica

# izlistati sva mjesta koja nisu u Hrvatskoj
select * from mjesto where drzava<>'Hrvatska';

# popravite zatipke (tipfelere)

# Obrišite mjesto Osijek
update katalog set mjesto=null where mjesto=4;
delete from mjesto where sifra=4;
# unesite mjesto O'Donovans place u Americi
insert into mjesto(naziv,postanskiBroj,drzava)
values ('O''Donovans place','15622','SAD');

# izlistajte sve knjige koje govore o ljubavi

# izlistajte sve autore koji su rođeni na isti dan kada i Vi

# izlistajte sve izdavače koji su društva s odraničenom odgovornošću
select * from izdavac where naziv like '%d%o%o%';

# domaća zadaća: Napisati na svakoj bazi po tri upita na svaku tablicu



