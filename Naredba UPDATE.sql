--Vjezbanje naredbe update

select * from klijenti
where sifra=1;
--UPDATE jednog reda , jedna kolona 
update klijenti set ime='Marko' 
where sifra=1;

update klijenti set prezime='Varga'
where sifra=4;

--Update jednog reda, vise kolona

update klijenti set ime='Ivana', prezime='Hvastek' where sifra =4;

--svim terminima cija je sifra veca od jedan postavi datum izvođenja na 1.veljače 2024.
--prvo nakucaj where


select * from termini;

update termini set
datum='2024-02-01'  --vise redova ce promjeniti
where sifra>1;


update termini set

datum='2024-05-03 17:00'
where sifra>2;  --vise redova ce promjeniti

--svim uslugama kojima je trajanje sat vremena promjeni na 2 sata

select * from usluge;

update usluge set 
trajanje =2            --U profinom primjeru je bilo null,kad je null onda bi umjesto where trajanje=null pisala where trajanje is null,
where trajanje =1;        -- jer kad je nešto null ne može se ići sa  operstorom jednako nego postoje samo dva operatora 
							--  is null i is not null.


--postaviti cijenu sportskamasaža na 200 eura

update usluge set
cijena=200          --uvijek bolje ići na primarni ključ ako ciljaš na jedno
where sifra=2;

--SVIM USLUGAMA SMANJITI CIJENU ZA 10% (kad se kaze svima onda se logički ne stavlja where)
update usluge set cijena=cijena*0.9;

--SVIM USLUGAMA POVEĆATI CIJENU ZA 200 EURA
update usluge set cijena=cijena+200;

--UVEĆAJTE CIJENE USLUGA ZA PDV
update usluge set cijena=cijena*1.25;

--Polazniku Igoru Brzici postaviti slučajni oib
--update polaznici set oib='06804238410'
--where sifra=4;  sad sam oib stavila u jednostruke navodnike jer inače nestane 0 a u ovom slučaju mora ostati jer je to CHAR tj.mora biti 11 znamenki.



