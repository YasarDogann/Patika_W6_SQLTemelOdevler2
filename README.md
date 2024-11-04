# Patika+ Week6 SQL ile Temel Ödev2 Uygulaması
Merhaba,
Bu proje SQL ile Patika+ 6.hafta SQL komutları pratik için yapılmış bir uygulamadır.

## 📚 Proje Hakkında
Bu proje, aşağıdaki konuları öğrenmeye yardımcı olmak için tasarlanmıştır:
- Temel SQL komutları
- WHERE kullanımı
- AND ve OR kullanımı
- BETWEEN kullanımı
- IN kullanımı
- LIKE ve ILIKE
- DISTINCT ve COUNT kullanımı
- ORDER BY, LIMIT VE OFFSET, Aggregate Fonksiyonlar, GROUP BY, HAVING kullanımı


## ÖDEV 5 KOD:
```sql

/*
Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.

 1. film tablosunda bulunan ve film ismi (title) 'n' karakteri ile biten en uzun (length) 5 filmi sıralayınız.
 2. film tablosunda bulunan ve film ismi (title) 'n' karakteri ile biten en kısa (length) ikinci(6,7,8,9,10) 5 filmi(6,7,8,9,10) sıralayınız.
 3. customer tablosunda bulunan last_name sütununa göre azalan yapılan sıralamada store_id 1 olmak koşuluyla ilk 4 veriyi sıralayınız.
*/

-- 1.SORU
SELECT * FROM film
WHERE title LIKE('%n') 
ORDER BY length DESC
LIMIT 5;

-- 2.SORU
SELECT * FROM film
WHERE title LIKE('%n') 
ORDER BY length ASC
OFFSET 5
LIMIT 5;

-- 3.SORU
SELECT last_name FROM customer
WHERE store_id = 1
ORDER BY last_name DESC
LIMIT 4;

```

## ÖDEV 6 KOD:
```sql
/*
Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.

    1. film tablosunda bulunan rental_rate sütunundaki değerlerin ortalaması nedir?
    2. film tablosunda bulunan filmlerden kaç tanesi 'C' karakteri ile başlar?
    3. film tablosunda bulunan filmlerden rental_rate değeri 0.99 a eşit olan en uzun (length) film kaç dakikadır?
    4. film tablosunda bulunan filmlerin uzunluğu 150 dakikadan büyük olanlarına ait kaç farklı replacement_cost değeri vardır?
	*/

-- 1.SORU
SELECT ROUND(AVG(rental_rate),3) FROM film

-- 2.SORU
SELECT COUNT(*) FROM film
WHERE title LIKE'C%';

-- 3.SORU
SELECT MAX(length) FROM film
WHERE rental_rate = 0.99;

-- 4.SORU
SELECT COUNT(DISTINCT replacement_cost) FROM film
WHERE length > 150;
```

## ÖDEV 7 KOD:
```sql
/*
Aşağıdaki sorgu senaryolarını dvdrental örnek veri tabanı üzerinden gerçekleştiriniz.
1. film tablosunda bulunan filmleri rating değerlerine göre gruplayınız.
2. film tablosunda bulunan filmleri replacement_cost sütununa göre grupladığımızda film sayısı 50 den fazla 
olan replacement_cost değerini ve karşılık gelen film sayısını sıralayınız.
3. customer tablosunda bulunan store_id değerlerine karşılık gelen müşteri sayılarını nelerdir? 
4. city tablosunda bulunan şehir verilerini country_id sütununa göre gruplandırdıktan sonra en fazla şehir sayısı 
barındıran country_id bilgisini ve şehir sayısını paylaşınız.
*/

-- 1.SORU
SELECT rating, COUNT(*) FROM film
GROUP BY rating

-- 2.SORU
SELECT replacement_cost, COUNT(*) FROM film
GROUP BY replacement_cost
HAVING COUNT(*)>50;

-- 3.SORU
SELECT store_id, COUNT(*) FROM customer
GROUP BY store_id

-- 4.SORU
SELECT country_id, COUNT(*) FROM city
GROUP BY country_id
ORDER BY COUNT(*) DESC
LIMIT 1;
```
