select *from smjerovi ;

--filtriranje po kolonama
--* oznacava sve kolone 
--naziv kolone , konstanta , izraz

select *, --sve
naziv as smjer, --kolona
cijena, 
12 as sati,-- konstanta
getdate()as datum --izraz
from smjerovi;


-- FILTRIRANJE REDOVA
--where radi s operatorima :
-- = uzima točnu vrijednost
-- operatori usporedbe : < > <= >= !=

							= 
select * from polaznici where sifra !=10;-- sve osim 10 su dobiti


--logički operatori
-- and, or i not


select *from polaznici where 
sifra=10 or ime ='Mario';


--OR
select * from polaznici where
sifra =10 or prezime = 'Filipović';

--AND
select ime , prezime from polaznici where
sifra>5 and sifra<10;

--NOT
select ime , prezime from polaznici where
not
(sifra>5 and sifra<10);



select sifra,ime , prezime from polaznici where
not
(sifra>5 and sifra<10) or (sifra>6 and sifra<7);


--ostali operatori
-- like , in, between, is null, is not null

--LIKE
select * from polaznici
where ime like'%Z';

--Ispiši sve ženske polaznice s najmanjom greškom ( većona ženskih imena završava s A )

select * from polaznici
where ime like'%A';


--google način rada
--kad tražimo npr.po imenu i prezimenu
select * from polaznici where ime like '%an%' or prezime like '%an%';


--IN
select * from polaznici where
sifra in(2,6,3,4); -- in je skraćeno za or , mogli smo pisati sifra 2 or sifra 6 ...

--BETWEEN

select * from polaznici where sifra between 2 and 6; -- mogli smo pisati sifra >= i sifra < =  , between uključuje vrijednosti , najčešće se koristi
														-- za datume
select * from smjerovi
where izvodiseod between '2024-01-01' and '2024-12-31';


--NULL I NOT NULL

SELECT * FROM SMJEROVI ;

select * from smjerovi where trajanje is null; -- znaci ne =0 nego is 0


select * from smjerovi where trajanje is not null;



