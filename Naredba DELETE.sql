--VJEŽBANJE NAREDBE DELETE
-OBRIŠI SVE KLIJENTE
delete from klijenti; -- ova naredba bi obrisala sve klijente da mi nismo digli vanjske ključeve
--OBRIŠI KLIJENTA IVANA HVASTEK
select * from klijenti;

--delete from klijenti where sifra =4; ---The DELETE statement conflicted with the REFERENCE constraint "FK__termini__klijent__3D5E1FD2". The conflict occurred in database "wellness", table "dbo.termini", column 'klijent'.


--ZBILJA ŽELIM OBRISATI SVE SMJEROVE( PROFIN PRIMJER)
--Treba viditi u eri sta brisati , brisem clanove , pa brisem grupe  pa smjerove . bolje tako nego dizati kaskadu. 
--delete from clanovi;
--delete from grupe;
--delete from smjerovi;

--Moja vježba:
delete from termini;--prvo sam morala termine izbrisati
delete from klijenti;



