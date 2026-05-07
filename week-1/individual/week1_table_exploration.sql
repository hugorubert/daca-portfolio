-- Mitu rida on sales tabelis?    
SELECT COUNT(*) AS ridade_arv 
FROM sales; 

-- Millised veerud ja andmed tabelis on?    
SELECT *
FROM sales LIMIT 10; 

-- Tallinna kaupluse müügid    
SELECT *
FROM sales    
WHERE store_location = 'Tallinn'    
ORDER BY sale_date DESC    
LIMIT 15;

-- Mitu Tallinna tehingut on
SELECT count(*)
FROM sales    
WHERE store_location = 'Tallinn';

-- 10 suurimat tehingut    
SELECT * 
FROM sales 
WHERE store_location = 'Tallinn'
ORDER BY total_price DESC 
LIMIT 10;

-- 10 väiksiemat tehingut
SELECT * 
FROM sales 
WHERE store_location = 'Tallinn'
ORDER BY total_price ASC 
LIMIT 10;  

-- Mitu rida, kus kliendi info on puudu?    
SELECT COUNT(*) AS puuduv_klient
FROM sales
WHERE store_location = 'Tallinn' AND customer_id IS NULL;




