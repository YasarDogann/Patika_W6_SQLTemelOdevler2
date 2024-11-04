/*
  1. test veritabanınızda employee isimli sütun bilgileri id(INTEGER), name VARCHAR(50), birthday DATE, email VARCHAR(100)
 olan bir tablo oluşturalım.  
  2. Oluşturduğumuz employee tablosuna 'Mockaroo' servisini kullanarak 50 adet veri ekleyelim.
  3. Sütunların her birine göre diğer sütunları güncelleyecek 5 adet UPDATE işlemi yapalım.
  4. Sütunların her birine göre ilgili satırı silecek 5 adet DELETE işlemi yapalım.
*/


-- 1.SORU
CREATE TABLE employee(
	id int,
	name VARCHAR(50) NOT NULL,
	birthday DATE,
	email VARCHAR(100)
)


-- 2.SORU  (VERİ TABANINDA 50 OLARAK KAYDEDİLDİ. KALABALIK OLMAMASI ADINA 10 ADET YAZDIM BURAYA)
insert into employee (id, name , birthday, email) values (1, 'Doti', '1990-07-17', 'doffer0@berkeley.edu');
insert into employee (id, name , birthday, email) values (2, 'Sean', '2011-07-30', 'santunes1@over-blog.com');
insert into employee (id, name , birthday, email) values (3, 'Salome', null, 'stooby2@domainmarket.com');
insert into employee (id, name , birthday, email) values (4, 'Moreen', '1921-07-26', 'mkarsh3@wsj.com');
insert into employee (id, name , birthday, email) values (5, 'Rasla', '1992-01-11', 'rbruna4@java.com');
insert into employee (id, name , birthday, email) values (6, 'Jareb', '2016-04-09', 'jharbinson5@shutterfly.com');
insert into employee (id, name , birthday, email) values (7, 'Lib', '1901-05-01', 'llucus6@smh.com.au');
insert into employee (id, name , birthday, email) values (8, 'Keefer', '1973-03-25', 'kminster7@businessinsider.com');
insert into employee (id, name , birthday, email) values (9, 'Cherise', '1941-03-06', 'cwaldrum8@plala.or.jp');
insert into employee (id, name , birthday, email) values (10, 'Eldredge', '1915-08-15', 'ebaudy9@time.com');



-- 3.SORU
UPDATE employee SET name = 'Icardi' WHERE id = 1

UPDATE employee SET birthday = '1985-04-08' WHERE id = 1

UPDATE employee SET email = 'Mauro@Icardi.com' WHERE id = 1

UPDATE employee 
SET name = 'Osimhen',
	birthday = '1995-04-08',
	email = 'OsiGoal@gmail.com'
WHERE id = 2

-- 4.SORU
DELETE FROM employee WHERE id = 50 




